using System;
using System.Collections.Generic;
using System.Text;

namespace WinFlashTool
{
    static class StringHelpers
    {
        public static string FormatByteCount(long value)
		{
			string prefix = "";
			if (value > (10L * 1024 * 1024 * 1024))
            {
				value /= (1024 * 1024 * 1024);
                prefix = "G";
            }
			if (value > (10 * 1024 * 1024))
            {
				value /= (1024 * 1024);
                prefix = "M";
			}
            else if (value > (10 * 1024))
            {
				value /= 1024;
                prefix = "K";
            }
            return value.ToString() + prefix;
		}
    }
}
