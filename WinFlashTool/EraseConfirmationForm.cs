using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Diagnostics;

namespace WinFlashTool
{
    partial class EraseConfirmationForm : Form
    {
        private DeviceEnumerator.DeviceInfo info;

        string MapPartitionType(int type)
        {
            switch (type)
            {
                case 5:
                    return "Extended";
                case 1:
                    return "FAT12";
                case 4:
                case 6:
                    return "FAT16";
                case 0xB:
                case 0xC:
                    return "FAT32";
                case 0x7:
                    return "NTFS";
                case 0x83:
                    return "Linux";
                default:
                    return string.Format("0x{0:x2}", type);
            }
        }

        public EraseConfirmationForm(DeviceEnumerator.DeviceInfo info, DiskDevice dev, long volumeSize)
        {
            InitializeComponent();
            this.info = info;

            lblDevName.Text = info.UserFriendlyName;
            lblDevSize.Text = StringHelpers.FormatByteCount(volumeSize) + "B";

            var num = dev.QueryDeviceNumber();
            if (num == null)
                lblInternalName.Text = "Unknown";
            else
                lblInternalName.Text = string.Format(@"\\.\PHYSICALDRIVE{0}", num.DeviceNumber);

            Dictionary<int, string> volumesByPartitionNumbers = null;

            try
            {
                if (num != null)
                    volumesByPartitionNumbers = VolumeManager.GetVolumesForPhysicalDisk(num.DeviceNumber);
            }
            catch
            {
            	
            }

            var layout = dev.QueryLayoutInformation();
            if (layout != null)
                for (int i = 0; i < layout.PartitionCount; i++ )
                {
                    if (layout.PartitionEntry[i].PartitionType == 0)
                        continue;

                    ListViewItem lvi = new ListViewItem((i + 1).ToString());
                    lvi.SubItems.Add(StringHelpers.FormatByteCount(layout.PartitionEntry[i].StartingOffset) + "B");
                    lvi.SubItems.Add(StringHelpers.FormatByteCount(layout.PartitionEntry[i].PartitionLength) + "B");
                    lvi.SubItems.Add(MapPartitionType(layout.PartitionEntry[i].PartitionType));

                    string volID;
                    bool found = false;
                    if (volumesByPartitionNumbers != null && volumesByPartitionNumbers.TryGetValue(layout.PartitionEntry[i].PartitionNumber, out volID))
                    {
                        volumesByPartitionNumbers.Remove(layout.PartitionEntry[i].PartitionNumber);
                        string mountPoints = VolumeManager.GetVolumeMountPoints(volID, '|');
                        if (mountPoints != null)
                        {
                            lvi.Tag = mountPoints.Split('|')[0];
                            lvi.SubItems.Add(mountPoints.Replace("|", ";  "));
                            found = mountPoints.Length > 0;
                        }
                    }

                    lvi.ImageIndex = found ? 0 : 1;

                    lvPartitions.Items.Add(lvi);
                }
        }

        private void listView1_DoubleClick(object sender, EventArgs e)
        {
            if (lvPartitions.SelectedItems.Count < 1)
                return;
            var path = lvPartitions.SelectedItems[0].Tag as string;
            if (!string.IsNullOrEmpty(path))
                try
                {
                    Process.Start(path);
                }
                catch { }
        }
    }
}
