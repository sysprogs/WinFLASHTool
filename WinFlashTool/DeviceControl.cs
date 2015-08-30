using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Win32.SafeHandles;
using System.Runtime.InteropServices;
using System.ComponentModel;

namespace WinFlashTool
{
    public class DeviceControl
    {
        #region CreateFile() related definitions
        [DllImport("kernel32.dll", CharSet = CharSet.Auto, CallingConvention = CallingConvention.StdCall, SetLastError = true)]
        public static extern SafeFileHandle CreateFile(
              string lpFileName,
              EFileAccess dwDesiredAccess,
              EFileShare dwShareMode,
              IntPtr SecurityAttributes,
              ECreationDisposition dwCreationDisposition,
              EFileAttributes dwFlagsAndAttributes,
              IntPtr hTemplateFile
              );

         [DllImport("Kernel32.dll", SetLastError = true, CharSet = CharSet.Auto)]
            public static extern bool DeviceIoControl(
                Microsoft.Win32.SafeHandles.SafeFileHandle hDevice,
                IntPtr IoControlCode,
                [In] byte[] InBuffer,
                uint nInBufferSize,
                [Out] byte[] OutBuffer,
                uint nOutBufferSize,
                ref uint pBytesReturned,
                IntPtr Overlapped
            );

         [DllImport("Kernel32.dll", SetLastError = true, CharSet = CharSet.Auto)]
         public static extern bool DeviceIoControl(
             IntPtr hDevice,
             IntPtr IoControlCode,
             [In] byte[] InBuffer,
             uint nInBufferSize,
             [Out] byte[] OutBuffer,
             uint nOutBufferSize,
             ref uint pBytesReturned,
             IntPtr Overlapped
         );

         [DllImport("Kernel32.dll", SetLastError = true, CharSet = CharSet.Auto)]
         public static extern bool CloseHandle(IntPtr hObject);

         [DllImport("kernel32.dll", SetLastError = true)]
         public static extern bool ReadFile(SafeFileHandle hFile, byte[] lpBuffer,
            uint nNumberOfBytesToRead, out uint lpNumberOfBytesRead, IntPtr lpOverlapped);

         [DllImport("kernel32.dll", SetLastError = true)]
         public static extern bool WriteFile(SafeFileHandle hFile, byte[] lpBuffer,
            uint nNumberOfBytesToRead, out uint lpNumberOfBytesRead, IntPtr lpOverlapped);

         [DllImport("kernel32.dll", SetLastError = true)]
         public static extern bool ReadFile(SafeFileHandle hFile, IntPtr lpBuffer, int nNumberOfBytesToRead, out int lpNumberOfBytesRead, IntPtr lpOverlapped);

         [DllImport("kernel32.dll", SetLastError = true)]
         public static extern bool WriteFile(SafeFileHandle hFile, IntPtr lpBuffer, int nNumberOfBytesToRead, out int lpNumberOfBytesRead, IntPtr lpOverlapped);
         
        
        [Flags]
        public enum EFileAccess : uint
        {
           /// <summary>
           /// 
           /// </summary>
           GenericRead = 0x80000000,
           /// <summary>
           /// 
           /// </summary>
           GenericWrite = 0x40000000,
           /// <summary>
           /// 
           /// </summary>
           GenericExecute = 0x20000000,
           /// <summary>
           /// 
           /// </summary>
           GenericAll = 0x10000000
        }

        [Flags]
        public enum EFileShare : uint
        {
           /// <summary>
           /// 
           /// </summary>
           None = 0x00000000,
           /// <summary>
           /// Enables subsequent open operations on an object to request read access. 
           /// Otherwise, other processes cannot open the object if they request read access. 
           /// If this flag is not specified, but the object has been opened for read access, the function fails.
           /// </summary>
           Read = 0x00000001,
           /// <summary>
           /// Enables subsequent open operations on an object to request write access. 
           /// Otherwise, other processes cannot open the object if they request write access. 
           /// If this flag is not specified, but the object has been opened for write access, the function fails.
           /// </summary>
           Write = 0x00000002,
           /// <summary>
           /// Enables subsequent open operations on an object to request delete access. 
           /// Otherwise, other processes cannot open the object if they request delete access.
           /// If this flag is not specified, but the object has been opened for delete access, the function fails.
           /// </summary>
           Delete = 0x00000004
        }

        public enum ECreationDisposition : uint
        {
           /// <summary>
           /// Creates a new file. The function fails if a specified file exists.
           /// </summary>
           New = 1,
           /// <summary>
           /// Creates a new file, always. 
           /// If a file exists, the function overwrites the file, clears the existing attributes, combines the specified file attributes, 
           /// and flags with FILE_ATTRIBUTE_ARCHIVE, but does not set the security descriptor that the SECURITY_ATTRIBUTES structure specifies.
           /// </summary>
           CreateAlways = 2,
           /// <summary>
           /// Opens a file. The function fails if the file does not exist. 
           /// </summary>
           OpenExisting = 3,
           /// <summary>
           /// Opens a file, always. 
           /// If a file does not exist, the function creates a file as if dwCreationDisposition is CREATE_NEW.
           /// </summary>
           OpenAlways = 4,
           /// <summary>
           /// Opens a file and truncates it so that its size is 0 (zero) bytes. The function fails if the file does not exist.
           /// The calling process must open the file with the GENERIC_WRITE access right. 
           /// </summary>
           TruncateExisting = 5
        }

        [Flags]
        public enum EFileAttributes : uint
        {
           Readonly         = 0x00000001,
           Hidden           = 0x00000002,
           System           = 0x00000004,
           Directory        = 0x00000010,
           Archive          = 0x00000020,
           Device           = 0x00000040,
           Normal           = 0x00000080,
           Temporary        = 0x00000100,
           SparseFile       = 0x00000200,
           ReparsePoint     = 0x00000400,
           Compressed       = 0x00000800,
           Offline          = 0x00001000,
           NotContentIndexed= 0x00002000,
           Encrypted        = 0x00004000,
           Write_Through    = 0x80000000,
           Overlapped       = 0x40000000,
           NoBuffering      = 0x20000000,
           RandomAccess     = 0x10000000,
           SequentialScan   = 0x08000000,
           DeleteOnClose    = 0x04000000,
           BackupSemantics  = 0x02000000,
           PosixSemantics   = 0x01000000,
           OpenReparsePoint = 0x00200000,
           OpenNoRecall     = 0x00100000,
           FirstPipeInstance= 0x00080000
        }
                #endregion
    }

    public class SystemDevice : IDisposable
    {
        protected SafeFileHandle m_hFile;

        public SystemDevice(string DevicePath, bool ReadOnly = false)
        {
            m_hFile = DeviceControl.CreateFile(DevicePath,
                DeviceControl.EFileAccess.GenericRead | (ReadOnly ? 0 : DeviceControl.EFileAccess.GenericWrite),
                                                 DeviceControl.EFileShare.Read | DeviceControl.EFileShare.Write,
                                                 IntPtr.Zero,
                                                 DeviceControl.ECreationDisposition.OpenExisting,
                                                 DeviceControl.EFileAttributes.Normal,
                                                 IntPtr.Zero);
            if (m_hFile.IsInvalid)
                throw new InvalidOperationException("Cannot open device");
        }

        public void Close()
        {
            m_hFile.Close();
        }

        public uint DeviceIoControl(int ControlCode, byte[] InBuffer, int InBufferSize, byte[] OutBuffer, int OutBufferSize)
        {
            uint returned = 0;
            if (!DeviceControl.DeviceIoControl(m_hFile, (IntPtr)ControlCode, InBuffer, (uint)InBufferSize, OutBuffer, (uint)OutBufferSize, ref returned, IntPtr.Zero))
                throw new Win32Exception(Marshal.GetLastWin32Error());
            return returned;
        }

        public uint DeviceIoControl(int ControlCode, byte[] InBuffer, byte[] OutBuffer)
        {
            return DeviceIoControl(ControlCode, InBuffer, (InBuffer == null) ? 0 : InBuffer.Length, OutBuffer, (OutBuffer == null) ?0 : OutBuffer.Length);
        }

        #region IDisposable Members

        public void Dispose()
        {
            Close();
        }

        #endregion
    }
}
