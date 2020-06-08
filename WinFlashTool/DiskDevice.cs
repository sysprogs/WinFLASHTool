using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.InteropServices;
using System.ComponentModel;
using Microsoft.Win32.SafeHandles;

namespace WinFlashTool
{
    class DiskDevice : SystemDevice
    {
        public DiskDevice(string path, bool readOnly = false)
            : base(path, readOnly)
        {
        }

        [StructLayout(LayoutKind.Sequential)]
        public class STORAGE_HOTPLUG_INFO
        {
            public int Size = Marshal.SizeOf(typeof(STORAGE_HOTPLUG_INFO));
            [MarshalAs(UnmanagedType.U1)]
            public bool MediaRemovable; // ie. zip, jaz, cdrom, mo, etc. vs hdd
            [MarshalAs(UnmanagedType.U1)]
            public bool MediaHotplug;   // ie. does the device succeed a lock even though its not lockable media?
            [MarshalAs(UnmanagedType.U1)]
            public bool DeviceHotplug;  // ie. 1394, USB, etc.
            [MarshalAs(UnmanagedType.U1)]
            public bool WriteCacheEnableOverride; // This field should not be relied upon because it is no longer used
        };

        [StructLayout(LayoutKind.Sequential)]
        public class STORAGE_DEVICE_NUMBER
        {
            public int DeviceType;
            public int DeviceNumber;
            public int PartitionNumber;

            public string PhysicalDrive => $@"\\.\PHYSICALDRIVE{DeviceNumber}";
        };

        public enum STORAGE_BUS_TYPE
        {
            BusTypeUnknown = 0x00,
            BusTypeScsi,
            BusTypeAtapi,
            BusTypeAta,
            BusType1394,
            BusTypeSsa,
            BusTypeFibre,
            BusTypeUsb,
            BusTypeRAID,
            BusTypeiScsi,
            BusTypeSas,
            BusTypeSata,
            BusTypeSd,
            BusTypeMmc,
            BusTypeMax,
            BusTypeMaxReserved = 0x7F
        };

        [StructLayout(LayoutKind.Sequential)]
        public class STORAGE_DEVICE_DESCRIPTOR
        {
            public int Version = Marshal.SizeOf(typeof(STORAGE_DEVICE_DESCRIPTOR));
            public int Size;
            public byte DeviceType;
            public byte DeviceTypeModifier;
            public byte RemovableMedia;
            public byte CommandQueueing;
            public int VendorIdOffset;
            public int ProductIdOffset;
            public int ProductRevisionOffset;
            public int SerialNumberOffset;
            public STORAGE_BUS_TYPE BusType;
            public int RawPropertiesLength;

            public byte RawDeviceProperties;
        };

        enum STORAGE_PROPERTY_ID
        {
            StorageDeviceProperty = 0,
            StorageAdapterProperty,
            StorageDeviceIdProperty,
            StorageDeviceUniqueIdProperty,              // See storduid.h for details
            StorageDeviceWriteCacheProperty,
            StorageMiniportProperty,
            StorageAccessAlignmentProperty,
            StorageDeviceSeekPenaltyProperty,
            StorageDeviceTrimProperty,
            StorageDeviceWriteAggregationProperty
        };

        enum STORAGE_QUERY_TYPE
        {
            PropertyStandardQuery = 0,          // Retrieves the descriptor
            PropertyExistsQuery,                // Used to test whether the descriptor is supported
            PropertyMaskQuery,                  // Used to retrieve a mask of writeable fields in the descriptor
            PropertyQueryMaxDefined     // use to validate the value
        };

        [StructLayout(LayoutKind.Sequential)]
        class STORAGE_PROPERTY_QUERY
        {
            public STORAGE_PROPERTY_ID PropertyId;
            public STORAGE_QUERY_TYPE QueryType;
            public byte AdditionalParameters;
        };

        [StructLayout(LayoutKind.Sequential)]
        public struct PARTITION_INFORMATION
        {
            public Int64 StartingOffset;
            public Int64 PartitionLength;
            public Int32 HiddenSectors;
            public Int32 PartitionNumber;
            public byte PartitionType;
            public byte BootIndicator;
            public byte RecognizedPartition;
            public byte RewritePartition;
        };


        [StructLayout(LayoutKind.Sequential)]
        public class GET_LENGTH_INFORMATION
        {
            public UInt64 Length;
        };

        [StructLayout(LayoutKind.Sequential)]
        public class DRIVE_LAYOUT_INFORMATION 
        {
            public Int32 PartitionCount;
            public Int32 Signature;
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 128)]
            public PARTITION_INFORMATION[] PartitionEntry;
        }

        const int IOCTL_STORAGE_GET_DEVICE_NUMBER = 0x2D1080;
        const int IOCTL_STORAGE_QUERY_PROPERTY = 0x002d1400;

        [DllImport("Kernel32.dll", SetLastError = true, CharSet = CharSet.Auto)]
        static extern bool DeviceIoControl(
            Microsoft.Win32.SafeHandles.SafeFileHandle hDevice,
            int IoControlCode,
            IntPtr InBuffer,
            int nInBufferSize,
            IntPtr outBuffer,
            int nOutBufferSize,
            out int pBytesReturned,
            IntPtr Overlapped
        );

        public enum EMoveMethod : uint
        {
            Begin = 0,
            Current = 1,
            End = 2
        }

        [DllImport("Kernel32.dll", SetLastError = true, CharSet = CharSet.Auto)]
        static extern int SetFilePointer(
            [In] SafeFileHandle hFile,
            [In] int lDistanceToMove,
            [In, Out] ref int lpDistanceToMoveHigh,
            [In] EMoveMethod dwMoveMethod);


        const int IOCTL_STORAGE_GET_HOTPLUG_INFO = 0x002d0c14;

        _Ty QueryStructure<_Ty>(int ctlCode, object inObj = null, bool ignoreSizeMismatch = false) where _Ty : class, new()
        {
            _Ty result = new _Ty();
            int done = 0;
            int size = Marshal.SizeOf(result), inSize = 0;

            IntPtr tmp = Marshal.AllocCoTaskMem(size), tmpIn = IntPtr.Zero;
            if (inObj != null)
            {
                inSize = Marshal.SizeOf(inObj);
                tmpIn = Marshal.AllocCoTaskMem(inSize);
                Marshal.StructureToPtr(inObj, tmpIn, false);
            }
            try
            {
                Marshal.StructureToPtr(result, tmp, false);
                if (!DeviceIoControl(m_hFile, ctlCode, tmpIn, inSize, tmp, size, out done, IntPtr.Zero))
                    return null;
                if (!ignoreSizeMismatch && done != Marshal.SizeOf(result))
                    return null;
                Marshal.PtrToStructure(tmp, result);
            }
            finally
            {
                Marshal.FreeCoTaskMem(tmp);
                if (tmpIn != IntPtr.Zero)
                    Marshal.FreeCoTaskMem(tmpIn);
            }
            return result;
        }


        public int Write(byte[] data)
        {
            uint done;
            DeviceControl.WriteFile(m_hFile, data, (uint)data.Length, out done, IntPtr.Zero);
            int err = Marshal.GetLastWin32Error();
            return (int)done;
        }

        public int Write(byte[] data, int size)
        {
            uint done;
            DeviceControl.WriteFile(m_hFile, data, (uint)size, out done, IntPtr.Zero);
            return (int)done;
        }

        public int Write(IntPtr buffer, int todo)
        {
            int done;
            DeviceControl.WriteFile(m_hFile, buffer, todo, out done, IntPtr.Zero);
            return done;
        }

        public void SeekAbs(long dist)
        {
            int high = (int)(dist >> 32);
            int r = SetFilePointer(m_hFile, (int)dist, ref high, EMoveMethod.Begin);
            long result = ((long)high) << 32 | (r & 0xffffffffL);
            if (result != dist)
                throw new Exception("Seek failed");
        }

        public void SeekRel(long dist)
        {
            int high = (int)(dist >> 32);
            int r = SetFilePointer(m_hFile, (int)dist, ref high, EMoveMethod.Current);
        }

        public STORAGE_HOTPLUG_INFO QueryHotplugInfo()
        {
            return QueryStructure<STORAGE_HOTPLUG_INFO>(IOCTL_STORAGE_GET_HOTPLUG_INFO);
        }

        public STORAGE_DEVICE_NUMBER QueryDeviceNumber()
        {
            return QueryStructure<STORAGE_DEVICE_NUMBER>(IOCTL_STORAGE_GET_DEVICE_NUMBER);
        }

        const int IOCTL_DISK_GET_DRIVE_LAYOUT = 0x0007400c;
        public DRIVE_LAYOUT_INFORMATION QueryLayoutInformation()
        {
            return QueryStructure<DRIVE_LAYOUT_INFORMATION>(IOCTL_DISK_GET_DRIVE_LAYOUT, null, true);
        }

        public STORAGE_DEVICE_DESCRIPTOR QueryDeviceDescriptor()
        {
            return QueryStructure<STORAGE_DEVICE_DESCRIPTOR>(IOCTL_STORAGE_QUERY_PROPERTY, new STORAGE_PROPERTY_QUERY { PropertyId = STORAGE_PROPERTY_ID.StorageDeviceProperty, QueryType = STORAGE_QUERY_TYPE.PropertyStandardQuery });
        }

        const int IOCTL_DISK_GET_LENGTH_INFO = 475228;
        const int FSCTL_ALLOW_EXTENDED_DASD_IO = 0x00090083;
        const int IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS = 0x00560000;
        const int FSCTL_LOCK_VOLUME = 0x00090018;

        public GET_LENGTH_INFORMATION QueryLength()
        {
            return QueryStructure<GET_LENGTH_INFORMATION>(IOCTL_DISK_GET_LENGTH_INFO, null, true);
        }


        public int QueryDiskNumberForVolume()
        {
            byte[] result = new byte[1024];
            uint done = DeviceIoControl(IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS, null, result);
            int extentCount = BitConverter.ToInt32(result, 0);
            if (extentCount != 1)
                throw new Exception("Unexpected disk extents count:" + extentCount);
            return BitConverter.ToInt32(result, 8);
        }

        public void Lock()
        {
            try
            {
                DeviceIoControl(FSCTL_ALLOW_EXTENDED_DASD_IO, null, null);
            }
            catch (Win32Exception)
            {
                //Not supported for raw volumes
            }

            DeviceIoControl(FSCTL_LOCK_VOLUME, null, null);
        }
    }
}
