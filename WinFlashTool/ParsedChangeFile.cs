using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Runtime.InteropServices;

namespace WinFlashTool
{
    class ParsedChangeFile : IDisposable
    {
        FileStream _File;

        struct ChangeFileFooter
        {
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 16)]
            public byte[] Signature;
            public long LogOffset;
            public int LogSize;
            public int SmallWriteAreaSize;
        };

        struct WriteOperation
        {
            public ulong OffsetInDevice;
            public ulong OffsetInFile;
            public int SizeInBytes;
            public bool Zero;

            public override string ToString()
            {
                if (Zero)
                    return string.Format("0x{0:x} <= {1} bytes from 0x{2:x}", OffsetInDevice, SizeInBytes, OffsetInFile);
                else
                    return string.Format("0x{0:x} <= {1} zero bytes", OffsetInDevice, SizeInBytes);
            }
        }

        List<WriteOperation> _WriteOps = new List<WriteOperation>();
        readonly string _FileName;

        public ParsedChangeFile(string fn, ulong partitionOffset, ulong deviceSize)
        {
            _File = new FileStream(fn, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
            _FileName = fn;
            byte[] tmp = new byte[Marshal.SizeOf(typeof(ChangeFileFooter))];
            _File.Seek(-tmp.Length, SeekOrigin.End);
            if (_File.Read(tmp, 0, tmp.Length) != tmp.Length)
                throw new Exception("Cannot read change file footer");
            var footer = (ChangeFileFooter)ConvertByteArrayToStruct(tmp, typeof(ChangeFileFooter), 0);

            if (Encoding.ASCII.GetString(footer.Signature, 0, footer.Signature.Length) != "XXCHANGEFILEv10\0")
                throw new Exception("Change file signature mismatch");

            ulong smallAreaOffset = (ulong)(_File.Length - tmp.Length - footer.SmallWriteAreaSize);
            ulong blockAreaOffset = 0;
            tmp = new byte[footer.LogSize];
            _File.Seek(-Marshal.SizeOf(typeof(ChangeFileFooter)) - footer.LogSize - footer.SmallWriteAreaSize, SeekOrigin.End);
            if (_File.Position != footer.LogOffset)
                throw new Exception("Mismatching log position");

            if (_File.Read(tmp, 0, tmp.Length) != tmp.Length)
                throw new Exception("Cannot read change log");

            if (tmp.Length % 16 != 0)
                throw new Exception("Invalid log size");

            ulong fileSize = (ulong)_File.Length;

            for (int i = 0; i < tmp.Length; )
            {
                ulong offset = BitConverter.ToUInt64(tmp, i);
                i += 8;
                ulong sizeWithFlags = BitConverter.ToUInt64(tmp, i);
                i += 8;

                WriteOperation op;
                if ((sizeWithFlags & (1UL << 63)) != 0)
                {
                    op = new WriteOperation { OffsetInFile = smallAreaOffset, OffsetInDevice = offset + partitionOffset, SizeInBytes = (int)(sizeWithFlags & 0x3fffffffffffffffL) };
                    smallAreaOffset += (uint)op.SizeInBytes;
                }
                else
                {
                    if ((sizeWithFlags & (1UL << 62)) != 0)
                        op = new WriteOperation { OffsetInFile = 0, OffsetInDevice = offset + partitionOffset, SizeInBytes = (int)(sizeWithFlags & 0x3fffffffffffffffL), Zero = true };
                    else
                    {
                        op = new WriteOperation { OffsetInFile = blockAreaOffset, OffsetInDevice = offset + partitionOffset, SizeInBytes = (int)(sizeWithFlags & 0x3fffffffffffffffL) };
                        blockAreaOffset += (uint)op.SizeInBytes;
                    }
                }

                if (op.OffsetInDevice > deviceSize || (op.OffsetInDevice + (uint)op.SizeInBytes) > deviceSize)
                    throw new Exception("Bad write operation at " + op.OffsetInFile);
                if (!op.Zero)
                {
                    if (op.OffsetInFile > fileSize || (op.OffsetInFile + (uint)op.SizeInBytes) > fileSize)
                        throw new Exception("Bad write operation at " + op.OffsetInFile);
                }
                _WriteOps.Add(op);
            }

        }

        public void Dispose()
        {
            _File.Dispose();
            File.Delete(_FileName);
        }


        public static object ConvertByteArrayToStruct(byte[] array, Type type, int offset)
        {
            IntPtr buffer = Marshal.AllocHGlobal(Marshal.SizeOf(type));
            Marshal.Copy(array, offset, buffer, Marshal.SizeOf(type));
            object obj = Marshal.PtrToStructure(buffer, type);
            Marshal.FreeHGlobal(buffer);
            return obj;
        }

        [StructLayout(LayoutKind.Sequential)]
        public struct PARTITION_RECORD
        {
            public byte Active;
            public byte StartH;
            public ushort StartCS;
            public byte Type;
            public byte EndH;
            public ushort EndCS;
            public uint StartingLBA;
            public uint TotalSectorCount;
        };


        public static PARTITION_RECORD[] ReadPartitionTable(byte[] bootsect)
        {
            List<PARTITION_RECORD> result = new List<PARTITION_RECORD>();
            for (int i = 0; i < 4; i++)
            {
                var info = (PARTITION_RECORD)ParsedChangeFile.ConvertByteArrayToStruct(bootsect, typeof(PARTITION_RECORD), 0x1BE + i * 0x10);
                if (info.Type == 0)
                    break;
                else
                    result.Add(info);
            }
            return result.ToArray();
        }

        public static PARTITION_RECORD[] ReadPartitionTable(string fn)
        {
            using (var f = new FileStream(fn, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
            {
                byte[] bootsect = new byte[512];
                if (f.Read(bootsect, 0, bootsect.Length) != bootsect.Length)
                    throw new Exception("Cannot read boot sector");

                return ReadPartitionTable(bootsect);
            }
        }

        public delegate void ProgressDelegate(long done, long total);

        public void Apply(DiskDevice dev, ProgressDelegate progress)
        {
            byte[] tmp = null;
            long total = 0, done = 0;
            foreach (var chg in _WriteOps)
                total += chg.SizeInBytes;

            foreach (var chg in _WriteOps)
            {
                if (tmp == null || tmp.Length < chg.SizeInBytes)
                    tmp = new byte[chg.SizeInBytes];

                if (chg.Zero)
                {
                    for (int i = 0; i < chg.SizeInBytes; i++)
                        tmp[i] = 0;
                }
                else
                {
                    _File.Seek((long)chg.OffsetInFile, SeekOrigin.Begin);
                    if (_File.Read(tmp, 0, chg.SizeInBytes) != chg.SizeInBytes)
                        throw new Exception("Failed to read change file at offset " + chg.OffsetInFile);
                }

                dev.SeekAbs((long)chg.OffsetInDevice);
                if (dev.Write(tmp, chg.SizeInBytes) != chg.SizeInBytes)
                    throw new Exception("Failed to write change at offset " + chg.OffsetInDevice);

                done += chg.SizeInBytes;
                if (progress != null)
                    progress(done, total);
            }
        }
    }
}
