using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.InteropServices;
using System.Text.RegularExpressions;

namespace WinFlashTool
{
    public class DeviceEnumerator : IDisposable
    {
        public class DeviceInfo
        {
            public string DevicePath;
            public string DeviceID;
            public string UserFriendlyName;
            private DeviceEnumerator deviceEnumerator;
            private SP_DEVINFO_DATA devinfoData;

            public DeviceInfo(DeviceEnumerator deviceEnumerator, SP_DEVINFO_DATA devinfoData, string devicePath, string deviceID, string userFriendlyName)
            {
                this.deviceEnumerator = deviceEnumerator;
                this.devinfoData = devinfoData;
                DevicePath = devicePath;
                DeviceID = deviceID;
                UserFriendlyName = userFriendlyName;
            }

            public bool ChangeDeviceState(DICS newState)
            {
                SP_PROPCHANGE_PARAMS pcp = new SP_PROPCHANGE_PARAMS();
                pcp.ClassInstallHeader.cbSize = Marshal.SizeOf(typeof(SP_CLASSINSTALL_HEADER));
                pcp.ClassInstallHeader.InstallFunction = DI_FUNCTION.DIF_PROPERTYCHANGE;
                pcp.StateChange = (int)newState;
                pcp.Scope = (int)DICS_FLAG.DICS_FLAG_GLOBAL;
                pcp.HwProfile = 0;
                if (!SetupDiSetClassInstallParams(deviceEnumerator.hardwareDeviceInfo, ref devinfoData, ref pcp, Marshal.SizeOf(pcp)))
                    return false;
                if (!SetupDiCallClassInstaller((uint)DI_FUNCTION.DIF_PROPERTYCHANGE, deviceEnumerator.hardwareDeviceInfo, ref devinfoData))
                    return false;
                return true;
            }

        }

        #region SETUPAPI function prototypes
        [StructLayout(LayoutKind.Sequential)]
        public struct SP_DEVINFO_DATA
        {
            public UInt32 cbSize;
            public Guid ClassGuid;
            public UInt32 DevInst;
            public IntPtr Reserved;
        }

        [StructLayout(LayoutKind.Sequential)]
        struct SP_CLASSINSTALL_HEADER
        {
            public int cbSize;
            public DI_FUNCTION InstallFunction;
        }

        [StructLayout(LayoutKind.Sequential)]
        struct SP_PROPCHANGE_PARAMS
        {
            public SP_CLASSINSTALL_HEADER ClassInstallHeader;
            public Int32 StateChange;
            public Int32 Scope;
            public Int32 HwProfile;
        }

        public struct SP_DEVICE_INTERFACE_DATA
        {
            public int cbSize;
            public Guid InterfaceClassGuid;
            public int Flags;
            public IntPtr RESERVED;
        }

        [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
        struct SP_DEVICE_INTERFACE_DETAIL_DATA_W
        {
            public UInt32 cbSize;
            [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 512)]
            public string DevicePath;
        }
        
        [Flags]
        enum DIGCF : uint
        {
            DIGCF_DEFAULT = 0x00000001,    // only valid with DIGCF_DEVICEINTERFACE
            DIGCF_PRESENT = 0x00000002,
            DIGCF_ALLCLASSES = 0x00000004,
            DIGCF_PROFILE = 0x00000008,
            DIGCF_DEVICEINTERFACE = 0x00000010,
        }

        enum DI_FUNCTION : int
        {
            DIF_SELECTDEVICE = 0x00000001,
            DIF_INSTALLDEVICE = 0x00000002,
            DIF_ASSIGNRESOURCES = 0x00000003,
            DIF_PROPERTIES = 0x00000004,
            DIF_REMOVE = 0x00000005,
            DIF_FIRSTTIMESETUP = 0x00000006,
            DIF_FOUNDDEVICE = 0x00000007,
            DIF_SELECTCLASSDRIVERS = 0x00000008,
            DIF_VALIDATECLASSDRIVERS = 0x00000009,
            DIF_INSTALLCLASSDRIVERS = 0x0000000A,
            DIF_CALCDISKSPACE = 0x0000000B,
            DIF_DESTROYPRIVATEDATA = 0x0000000C,
            DIF_VALIDATEDRIVER = 0x0000000D,
            DIF_MOVEDEVICE = 0x0000000E,
            DIF_DETECT = 0x0000000F,
            DIF_INSTALLWIZARD = 0x00000010,
            DIF_DESTROYWIZARDDATA = 0x00000011,
            DIF_PROPERTYCHANGE = 0x00000012,
            DIF_ENABLECLASS = 0x00000013,
            DIF_DETECTVERIFY = 0x00000014,
            DIF_INSTALLDEVICEFILES = 0x00000015,
            DIF_UNREMOVE = 0x00000016,
            DIF_SELECTBESTCOMPATDRV = 0x00000017,
            DIF_ALLOW_INSTALL = 0x00000018,
            DIF_REGISTERDEVICE = 0x00000019,
            DIF_NEWDEVICEWIZARD_PRESELECT = 0x0000001A,
            DIF_NEWDEVICEWIZARD_SELECT = 0x0000001B,
            DIF_NEWDEVICEWIZARD_PREANALYZE = 0x0000001C,
            DIF_NEWDEVICEWIZARD_POSTANALYZE = 0x0000001D,
            DIF_NEWDEVICEWIZARD_FINISHINSTALL = 0x0000001E,
            DIF_UNUSED1 = 0x0000001F,
            DIF_INSTALLINTERFACES = 0x00000020,
            DIF_DETECTCANCEL = 0x00000021,
            DIF_REGISTER_COINSTALLERS = 0x00000022,
            DIF_ADDPROPERTYPAGE_ADVANCED = 0x00000023,
            DIF_ADDPROPERTYPAGE_BASIC = 0x00000024,
            DIF_RESERVED1 = 0x00000025,
            DIF_TROUBLESHOOTER = 0x00000026,
            DIF_POWERMESSAGEWAKE = 0x00000027,
            DIF_ADDREMOTEPROPERTYPAGE_ADVANCED = 0x00000028,
            DIF_UPDATEDRIVER_UI = 0x00000029,
            DIF_RESERVED2 = 0x00000030,
        };

        public enum DICS
        {
             DICS_ENABLE      = 0x00000001,
             DICS_DISABLE     = 0x00000002,
             DICS_PROPCHANGE  = 0x00000003,
             DICS_START       = 0x00000004,
             DICS_STOP        = 0x00000005,
        }

        [Flags]
        enum DICS_FLAG
        {
            DICS_FLAG_GLOBAL         = 0x00000001,  // make change in all hardware profiles
            DICS_FLAG_CONFIGSPECIFIC = 0x00000002,  // make change in specified profile only
            DICS_FLAG_CONFIGGENERAL  = 0x00000004,  // 1 or more hardware profile-specific
                                                         // changes to follow.
        }

        enum SPDRP
        {
            SPDRP_FRIENDLYNAME = (0x0000000C)  // FriendlyName (R/W)
        }

        [DllImport("setupapi.dll", CharSet = CharSet.Auto, SetLastError = true)]
        static extern bool SetupDiGetDeviceRegistryProperty(
            IntPtr DeviceInfoSet,
            ref SP_DEVINFO_DATA DeviceInfoData,
            SPDRP Property,
            out UInt32 PropertyRegDataType,
            StringBuilder PropertyBuffer,
            uint PropertyBufferSize,
            out UInt32 RequiredSize
            );
        
        [DllImport("setupapi.dll", CharSet = CharSet.Auto, SetLastError = true)]
        static extern IntPtr SetupDiGetClassDevs(
                                                  ref Guid ClassGuid,
                                                  [MarshalAs(UnmanagedType.LPTStr)] string Enumerator,
                                                  IntPtr hwndParent,
                                                  UInt32 Flags
                                                 );

        [DllImport("setupapi.dll", CharSet = CharSet.Auto, SetLastError = true)]
        static extern IntPtr SetupDiGetClassDevs(
                                                  IntPtr ClassGuid,
                                                  [MarshalAs(UnmanagedType.LPTStr)] string Enumerator,
                                                  IntPtr hwndParent,
                                                  UInt32 Flags
                                                 );

        [DllImport("setupapi.dll", CharSet = CharSet.Auto, SetLastError = true)]
        static extern bool SetupDiDestroyDeviceInfoList(IntPtr hDevInfo);

        [DllImport("setupapi.dll", CharSet=CharSet.Auto, SetLastError = true)]
        static extern Boolean SetupDiEnumDeviceInterfaces(
           IntPtr hDevInfo,
           IntPtr devInfo,
           ref Guid interfaceClassGuid,
           UInt32 memberIndex,
           ref SP_DEVICE_INTERFACE_DATA deviceInterfaceData
        );

        [DllImport("setupapi.dll", CharSet = CharSet.Auto, SetLastError = true)]
        static extern Boolean SetupDiGetDeviceInterfaceDetail(
           IntPtr hDevInfo,
           ref SP_DEVICE_INTERFACE_DATA deviceInterfaceData,
           ref SP_DEVICE_INTERFACE_DETAIL_DATA_W deviceInterfaceDetailData,
           UInt32 deviceInterfaceDetailDataSize,
           out UInt32 requiredSize,
           ref SP_DEVINFO_DATA deviceInfoData
        );

        [DllImport("setupapi.dll", CharSet = CharSet.Auto, SetLastError = true)]
        static extern Boolean SetupDiGetDeviceInterfaceDetail(
           IntPtr hDevInfo,
           ref SP_DEVICE_INTERFACE_DATA deviceInterfaceData,
           IntPtr deviceInterfaceDetailData,
           UInt32 deviceInterfaceDetailDataSize,
           out UInt32 requiredSize,
           IntPtr deviceInfoData
        );

        [DllImport("setupapi.dll", SetLastError = true, CharSet = CharSet.Auto)]
        static extern bool SetupDiGetDeviceInstanceId(
           IntPtr DeviceInfoSet,
           ref SP_DEVINFO_DATA DeviceInfoData,
           StringBuilder DeviceInstanceId,
           int DeviceInstanceIdSize,
           out int RequiredSize
        );

        [DllImport("setupapi.dll", SetLastError = true, CharSet = CharSet.Auto)]
        static extern bool SetupDiGetDeviceInstanceId(
           IntPtr DeviceInfoSet,
           ref SP_DEVINFO_DATA DeviceInfoData,
           IntPtr DeviceInstanceId,
           int DeviceInstanceIdSize,
           out int RequiredSize
        );

        [DllImport("setupapi.dll", SetLastError = true)]
        static extern bool SetupDiEnumDeviceInfo(IntPtr DeviceInfoSet, uint MemberIndex, ref SP_DEVINFO_DATA DeviceInfoData);

        [DllImport("setupapi.dll", CharSet = CharSet.Auto)]
        static extern int CM_Get_Device_ID(
           IntPtr dnDevInst,
           StringBuilder Buffer,
           int BufferLen,
           int ulFlags
        );

        [DllImport("setupapi.dll", SetLastError = true, CharSet = CharSet.Auto)]
        static extern bool SetupDiSetClassInstallParams(IntPtr DeviceInfoSet, ref SP_DEVINFO_DATA DeviceInfoData, ref SP_PROPCHANGE_PARAMS ClassInstallParams, int ClassInstallParamsSize);

        [DllImport("setupapi.dll", CharSet = CharSet.Auto, SetLastError=true)]
        static extern Boolean SetupDiCallClassInstaller(
                                                  UInt32 InstallFunction,
                                                  IntPtr DeviceInfoSet,
                                                  ref SP_DEVINFO_DATA DeviceInfoData
                                              );        
        #endregion

        IntPtr hardwareDeviceInfo;
        Guid _InterfaceGUID;

        public DeviceEnumerator(Guid interfaceGUID)
        {
            _InterfaceGUID = interfaceGUID;
            hardwareDeviceInfo = SetupDiGetClassDevs(
                                   ref interfaceGUID,
                                   null, // Define no enumerator (global)
                                   (IntPtr)0, // Define no
                                   (uint)(DIGCF.DIGCF_PRESENT | // Only Devices present
                                    DIGCF.DIGCF_DEVICEINTERFACE)); // Function class devices.
        }

        public IEnumerable<DeviceInfo> GetAllDevices()
        {
            SP_DEVICE_INTERFACE_DATA deviceInfoData = new SP_DEVICE_INTERFACE_DATA();
            for (uint i = 0; ; i++)
            {
                deviceInfoData.cbSize = Marshal.SizeOf(deviceInfoData);
                if (!SetupDiEnumDeviceInterfaces(hardwareDeviceInfo,
                                             IntPtr.Zero, // We don't care about specific PDOs
                                             ref _InterfaceGUID,
                                             i,
                                             ref deviceInfoData))
                {
                    int Error = Marshal.GetLastWin32Error();
                    if (Error == 259) //ERROR_NO_MORE_ITEMS
                        yield break;
                }
                else
                {
                    uint requiredLength = 0;
                    SP_DEVINFO_DATA devinfoData = new SP_DEVINFO_DATA();
                    SetupDiGetDeviceInterfaceDetail(
                            hardwareDeviceInfo,
                            ref deviceInfoData,
                            IntPtr.Zero, // probing so no output buffer yet
                            0, // probing so output buffer length of zero
                            out requiredLength,
                            IntPtr.Zero); // not interested in the specific dev-node

                    devinfoData.cbSize = (UInt32)Marshal.SizeOf(devinfoData);

                    SP_DEVICE_INTERFACE_DETAIL_DATA_W functionClassDeviceData = new SP_DEVICE_INTERFACE_DETAIL_DATA_W();
                    functionClassDeviceData.cbSize = (IntPtr.Size == 8) ? 8U : 6U;
                    //
                    // Retrieve the information from Plug and Play.
                    //
                    if (!SetupDiGetDeviceInterfaceDetail(
                               hardwareDeviceInfo,
                               ref deviceInfoData,
                               ref functionClassDeviceData,
                               requiredLength,
                               out requiredLength,
                               ref devinfoData))
                    {
                        int err = Marshal.GetLastWin32Error();
                        continue;
                    }

                    int requiredSizeForID = 0;
                    SetupDiGetDeviceInstanceId(hardwareDeviceInfo, ref devinfoData, IntPtr.Zero, 0, out requiredSizeForID);
                    StringBuilder deviceID = new StringBuilder(requiredSizeForID);
                    if (!SetupDiGetDeviceInstanceId(hardwareDeviceInfo, ref devinfoData, deviceID, requiredSizeForID, out requiredSizeForID))
                        continue;

                    uint type, nameSize;
                    SetupDiGetDeviceRegistryProperty(hardwareDeviceInfo, ref devinfoData, SPDRP.SPDRP_FRIENDLYNAME, out type, null, 0, out nameSize);

                    StringBuilder friendlyName = new StringBuilder((int)nameSize);
                    if (!SetupDiGetDeviceRegistryProperty(hardwareDeviceInfo, ref devinfoData, SPDRP.SPDRP_FRIENDLYNAME, out type, friendlyName, nameSize, out nameSize))
                    {
                        friendlyName.Length = 0;
                        friendlyName.Append("???");
                    }

                    yield return new DeviceInfo(this, devinfoData, functionClassDeviceData.DevicePath.ToString(), deviceID.ToString(), friendlyName.ToString());
                }
            }
        }



        public void Dispose()
        {
            if (hardwareDeviceInfo != IntPtr.Zero)
                SetupDiDestroyDeviceInfoList(hardwareDeviceInfo);
        }
    }
}
