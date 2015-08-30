using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.InteropServices;

namespace WinFlashTool
{
    class VolumeManager
    {
        [DllImport("kernel32.dll")]
        static extern IntPtr FindFirstVolume([Out] StringBuilder lpszVolumeName,
           int cchBufferLength);

        [DllImport("kernel32.dll")]
        static extern bool FindNextVolume(IntPtr hFindVolume, [Out] StringBuilder
           lpszVolumeName, int cchBufferLength);

        [DllImport("kernel32.dll")]
        static extern bool FindVolumeClose(IntPtr hFindVolume);

        [DllImport("kernel32.dll", SetLastError=true)]
        static extern IntPtr FindFirstVolumeMountPoint([In] string VolumeName, [Out] StringBuilder lpszVolumeName,
           int cchBufferLength);

        [DllImport("kernel32.dll")]
        static extern bool FindNextVolumeMountPoint(IntPtr hFindVolume, [Out] StringBuilder
           lpszVolumeName, int cchBufferLength);

        [DllImport("kernel32.dll")]
        static extern bool FindVolumeMountPointClose(IntPtr hFindVolume);

        [DllImport("kernel32.dll", SetLastError = true)]
        static extern bool GetVolumeNameForVolumeMountPoint(string VolumeMountPoint, [Out] StringBuilder VolumeName, int BufferLength);

        [DllImport("kernel32.dll", SetLastError = true)]
        static extern bool DeleteVolumeMountPoint(string VolumeMountPoint);

        [DllImport("kernel32.dll", SetLastError=true)]
        static extern bool SetVolumeMountPoint(string VolumeMountPoint, string VolumeName);

        public static Dictionary<int, string> GetVolumesForPhysicalDisk(int deviceNumber)
        {
            StringBuilder volName = new StringBuilder(260);
            IntPtr hVolume = FindFirstVolume(volName, volName.Capacity);
            var result = new Dictionary<int, string>();
            if (hVolume == (IntPtr)(-1))
                return result;
            do
            {
                try
                {
                    using (var dev = new DiskDevice(volName.ToString().TrimEnd('\\'), true))
                    {
                        var dn = dev.QueryDeviceNumber();
                        if (dn == null || dn.DeviceNumber != deviceNumber)
                            continue;
                        result[dn.PartitionNumber] = volName.ToString();
                    }
                }
                catch
                {

                }
            } while (FindNextVolume(hVolume, volName, volName.Capacity));

            FindVolumeClose(hVolume);
            return result;
        }

        [DllImport("kernel32.dll", SetLastError = true, CharSet=CharSet.Unicode)]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool GetVolumePathNamesForVolumeNameW(string lpszVolumeName,
                [In, Out]
                char[] lpszVolumePathNames, int cchBuferLength,
                out int lpcchReturnLength);



        public static string GetVolumeMountPoints(string volName, char separator = ';')
        {
            StringBuilder mtPt = new StringBuilder(260);

            char[] arr = new char[65536];
            int done;
            if (!GetVolumePathNamesForVolumeNameW(volName, arr, arr.Length, out done))
                return "";

            if (done > arr.Length)
                done = arr.Length;

            int lastValidChar = -1;

            for (int i = 0; i < done; i++)
                if (arr[i] == 0)
                    arr[i] = separator;
                else
                    lastValidChar = i;

            return new string(arr, 0, lastValidChar + 1);
        }
       
    }
}
