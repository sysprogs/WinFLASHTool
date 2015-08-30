using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Win32;

namespace WinFlashTool
{
    class RegistryHelper
    {
        RegistryKey _Key;

        public RegistryHelper()
        {
            try
            {
                _Key = Registry.CurrentUser.CreateSubKey(@"SOFTWARE\Sysprogs\WinFlashTool");
            }
            catch { }
        }

        public void SetValue(string name, object value)
        {
            if (_Key != null)
            {
                try
                {
                    _Key.SetValue(name, value);
                }
                catch { }
            }
        }

        public _Ty GetValue<_Ty>(string name, _Ty defaultValue)
        {
            if (_Key != null)
            {
                try
                {
                    object obj = _Key.GetValue(name);
                    if (obj is _Ty)
                        return (_Ty)obj;
                }
                catch { }
            }
            return defaultValue;
        }
    }
}
