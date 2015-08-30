#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <string>

extern "C" {
int hooked_open_file(const char *pathname, int flags, mode_t mode);
int hooked_close(int fd);
long long hooked_seek(int fd, long long offset, int origin);
int hooked_read(int fd, void *buf, int size);
int hooked_write(int fd, const void *buf, int size);
int hooked_write_byte(int fd, long long offset, const void *buf, int size);
}

#include <map>
#include <vector>

struct WriteLogEntry
{
	ULONGLONG Offset;
	ULONGLONG SizeWithZFlag : 62;
	ULONGLONG IsZero : 1;
	ULONGLONG IsSmallWrite : 1;
};

enum { kSectorSize = 512 };

struct HookedFile
{
	HANDLE hFile;
	HANDLE hChangeFile;
	ULONGLONG BaseOffset, MaxSize, SizeOnDisk;
	ULONGLONG CurrentVirtualOffset;
	ULONGLONG CurrentChangeFileSector;
	std::map<long long, long long> SectorMap;
	std::vector<WriteLogEntry> WriteLog;
	std::string SmallWriteArea;

	bool ReadNextSector(void *pBuf)
	{
		std::map<long long, long long>::iterator it = SectorMap.find(CurrentVirtualOffset / kSectorSize);
		if (it != SectorMap.end())
		{
			if (it->second == -1LL)
				memset(pBuf, 0, kSectorSize);
			else
			{
				LARGE_INTEGER li;
				li.QuadPart = it->second * kSectorSize;
				li.LowPart = SetFilePointer(hChangeFile, li.LowPart, &li.HighPart, SEEK_SET);
				DWORD done = 0;
				ReadFile(hChangeFile, pBuf, kSectorSize, &done, NULL);
				li.QuadPart = CurrentChangeFileSector * kSectorSize;
				li.LowPart = SetFilePointer(hChangeFile, li.LowPart, &li.HighPart, SEEK_SET);
				if (done != kSectorSize)
					return false;
			}
		}
		else
		{
			if (CurrentVirtualOffset >= SizeOnDisk)
				memset(pBuf, 0, kSectorSize);
			else
			{
				DWORD done = 0;
				ReadFile(hFile, pBuf, kSectorSize, &done, NULL);
				if (done != kSectorSize)
					return false;
			}
		}

		CurrentVirtualOffset += kSectorSize;

		LARGE_INTEGER li;
		li.QuadPart = CurrentVirtualOffset + BaseOffset;
		li.LowPart = SetFilePointer(hFile, li.LowPart, &li.HighPart, SEEK_SET);

		return true;
	}
};

int hooked_open_file(const char *pathname, int flags, mode_t mode)
{
	HookedFile *pFile = new HookedFile();
	
	std::string fnCopy = pathname;
	int idx = fnCopy.find('@');
	pFile->MaxSize = 0;
	if (idx != -1)
	{
		pFile->BaseOffset = atoll(fnCopy.c_str() + idx + 1);
		int idx2 = fnCopy.find('/', idx);
		if (idx2 != -1)
			pFile->MaxSize = atoll(fnCopy.c_str() + idx2 + 1);

		fnCopy.resize(idx);
	}
	else
		pFile->BaseOffset = 0;
		
	pFile->hFile = CreateFileA(fnCopy.c_str(), GENERIC_READ, FILE_SHARE_READ, 0, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
	pFile->CurrentVirtualOffset = 0;
	if (pFile->hFile == INVALID_HANDLE_VALUE)
	{
		delete pFile;
		return -1;
	}

	std::string changeFileName = fnCopy + ".chg";
	char *pTempDir = getenv("RESIZE2FS_CHANGE_FILE_DIR");
	if (pTempDir)
	{
		int idx1 = fnCopy.rfind('/'), idx2 = fnCopy.rfind('\\');
		int idx = std::max(idx1, idx2);
		if (idx != -1)
		{
			changeFileName = pTempDir;
			changeFileName += "\\";
			changeFileName += fnCopy.substr(idx + 1);
			changeFileName += ".chg";
		}
	}
	else
	
	pFile->hChangeFile = CreateFileA(changeFileName.c_str(), GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, 0, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, 0);
	pFile->CurrentChangeFileSector = 0;

	ULARGE_INTEGER li;
	li.LowPart = GetFileSize(pFile->hFile, &li.HighPart);
	li.QuadPart -= pFile->BaseOffset;
	pFile->SizeOnDisk = li.QuadPart;

	hooked_seek((int)pFile, 0, SEEK_SET);
	return (int)pFile;
}

static char szSignature[] = "XXCHANGEFILEv10";

struct ChangeFileFooter
{
	char Signature[sizeof(szSignature)];
	LARGE_INTEGER LogOffset;
	unsigned LogSize;
	unsigned SmallWriteAreaSize;
};

int hooked_close(int fd)
{
	HookedFile *pFile = (HookedFile *)fd;
	CloseHandle(pFile->hFile);

	DWORD done;

	ChangeFileFooter footer;
	memcpy(footer.Signature, szSignature, sizeof(szSignature));
	footer.LogSize = pFile->WriteLog.size() * sizeof(pFile->WriteLog[0]);
	footer.SmallWriteAreaSize = pFile->SmallWriteArea.size();
	footer.LogOffset.QuadPart = 0;
	footer.LogOffset.LowPart = SetFilePointer(pFile->hChangeFile, 0, &footer.LogOffset.HighPart, FILE_CURRENT);

	WriteFile(pFile->hChangeFile, pFile->WriteLog.data(), pFile->WriteLog.size() * sizeof(pFile->WriteLog[0]), &done, NULL);
	WriteFile(pFile->hChangeFile, pFile->SmallWriteArea.data(), pFile->SmallWriteArea.size(), &done, NULL);
	WriteFile(pFile->hChangeFile, &footer, sizeof(footer), &done, NULL);

	CloseHandle(pFile->hChangeFile);

	return 0;
}

long long hooked_seek(int fd, long long offset, int origin)
{
	HookedFile *pFile = (HookedFile *)fd;
	if (origin == SEEK_SET)
		offset += pFile->BaseOffset;
	
	LARGE_INTEGER li;
	li.QuadPart = offset;
	li.LowPart = SetFilePointer(pFile->hFile, li.LowPart, &li.HighPart, origin);
	pFile->CurrentVirtualOffset = li.QuadPart - pFile->BaseOffset;
	return pFile->CurrentVirtualOffset;
}

int hooked_read(int fd, void *buf, int size)
{
	HookedFile *pFile = (HookedFile *)fd;
	DWORD done = 0;
	if (pFile->CurrentVirtualOffset % kSectorSize)
		return 0;
	if (size % kSectorSize)
		return 0;

	//ULONGLONG off = pFile->CurrentVirtualOffset;

	for (int i = 0; i < size; i += kSectorSize)
	{
		if (!pFile->ReadNextSector(((char *)buf) + i))
			return 0;
		done += kSectorSize;
	}
	
	/*pFile->CurrentVirtualOffset = off;
	ReadFile(pFile->hFile, buf, size, &done, 0);
	pFile->CurrentVirtualOffset += done;*/

	return done;
}

int hooked_write_byte(int fd, long long offset, const void *buf, int size)
{
	HookedFile *pFile = (HookedFile *)fd;

	ULONGLONG off = pFile->CurrentVirtualOffset;

	LONGLONG sectorNumber = (offset / kSectorSize);
	hooked_seek(fd, sectorNumber * kSectorSize, SEEK_SET);
	char tmp[512];

	int offsetInBuffer = 0;

	while (offsetInBuffer < size)
	{
		WriteLogEntry entry = { pFile->CurrentVirtualOffset, kSectorSize };

		if (!pFile->ReadNextSector(tmp))
			return 0;

		int offsetInSector = offsetInBuffer ? 0 : (offset % kSectorSize);
		int todo = std::min(size - offsetInBuffer, kSectorSize - offsetInSector);
		memcpy(tmp + offsetInSector, ((char *)buf) + offsetInBuffer, todo);

		offsetInBuffer += todo;

		DWORD done;
		WriteFile(pFile->hChangeFile, tmp, kSectorSize, &done, 0);
		if (done != kSectorSize)
			return 0;

		pFile->SectorMap[sectorNumber] = pFile->CurrentChangeFileSector;
		pFile->CurrentChangeFileSector++;
		sectorNumber++;

		pFile->WriteLog.push_back(entry);
	}

	hooked_seek(fd, off, SEEK_SET);

	//printf("%llx => %d [b]\n", offset, size);
	return size;
}

int hooked_write(int fd, const void *buf, int size)
{
	HookedFile *pFile = (HookedFile *)fd;
	if (size % kSectorSize)
		return 0;
	if (pFile->CurrentVirtualOffset % kSectorSize)
		return 0;

	bool allZero = true;
	WriteLogEntry entry = { pFile->CurrentVirtualOffset, size };
	for (int i = 0; i < size; i++)
	{
		if (((char *)buf)[i] != 0)
		{
			allZero = false;
			break;
		}
	}

	//printf("%llx => %d %s\n", pFile->CurrentVirtualOffset, size, allZero ? "[Z]" : "");

	if (allZero)
		entry.IsZero = 1;

	for (int i = 0; i < size; i += kSectorSize)
	{
		DWORD done = 0;
		if (allZero)
		{
			pFile->SectorMap[pFile->CurrentVirtualOffset / kSectorSize] = -1LL;
		}
		else
		{
			WriteFile(pFile->hChangeFile, ((char *)buf) + i, kSectorSize, &done, 0);
			if (done != kSectorSize)
				return 0;

			pFile->SectorMap[pFile->CurrentVirtualOffset / kSectorSize] = pFile->CurrentChangeFileSector;
			pFile->CurrentChangeFileSector++;
		}

		pFile->CurrentVirtualOffset += kSectorSize;
	}
	pFile->WriteLog.push_back(entry);
	return size;
}

#include <sys/stat.h>

extern "C" {

int ext2fs_fstat(int fd, struct stat *buf)
{
	HookedFile *pFile = (HookedFile *)fd;
	memset(buf, 0, sizeof(buf));
	buf->st_mode = _S_IFREG;
	buf->st_size = pFile->SizeOnDisk;
	return 0;
}

int ext2fs_get_device_size3(int fd, int blksize, long long *pSize)
{
	HookedFile *pFile = (HookedFile *)fd;
	*pSize = pFile->MaxSize / blksize;
	return 0;	
}

}