using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Text.RegularExpressions;
using System.IO;
using System.Threading;
using System.Runtime.InteropServices;
using System.Net;
using System.Reflection;
using System.Diagnostics;

namespace WinFlashTool
{
    public partial class MainForm : Form
    {
        const int IOCTL_DISK_GET_LENGTH_INFO = 0x0007405c;

        RegistryHelper _RegHelper = new RegistryHelper();

        List<DiskRecord> _LastKnownFullDiskList;

        ManualResetEvent _Shutdown = new ManualResetEvent(false);
        Thread _RefreshThread;

        public MainForm()
        {
            InitializeComponent();
            _LastKnownFullDiskList = QueryAllDisks();
            _RefreshThread = new Thread(UpdateThreadBody);
            _RefreshThread.Start();
            RefreshDeviceList();

            txtFileName.Text = _RegHelper.GetValue<string>("LastImageFile", "");

            string[] args = Environment.GetCommandLineArgs();
            if (args != null && args.Length > 1)
            {
                try
                {
                    if (File.Exists(args[1]))
                        txtFileName.Text = Path.GetFullPath(args[1]);
                }
                catch
                {
                	
                }
            }

            lblProgress.Text = "Ready";
        }

        protected override void OnClosed(EventArgs e)
        {
            base.OnClosed(e);
            _Shutdown.Set();
            if (!_RefreshThread.Join(500))
                _RefreshThread.Abort();
        }

        void UpdateThreadBody()
        {
            try
            {
                do
                {
                    var lst = QueryAllDisks();
                    if (lst != null)
                    {
                        try
                        {
                            BeginInvoke(new ThreadStart(() => ProcessNewDiskList(lst)));
                        }
                        catch { }
                    }
                } while (!_Shutdown.WaitOne(500, false));
            }
            catch { }
        }

        void ProcessNewDiskList(List<DiskRecord> disks)
        {
            try
            {
                _LastKnownFullDiskList = disks;
                Dictionary<string, DiskRecord> allDisks = new Dictionary<string, DiskRecord>();
                foreach (var dsk in disks)
                    allDisks[dsk.Info.DeviceID] = dsk;

                for (int i = 0; i < lvDevices.Items.Count; i++)
                {
                    var existingDSK = lvDevices.Items[i].Tag as DiskRecord;
                    if (existingDSK == null || existingDSK.Info == null)
                        continue;
                    DiskRecord newRec;
                    if (allDisks.TryGetValue(existingDSK.Info.DeviceID, out newRec) && !ShouldHideDiskItem(newRec))
                    {
                        lvDevices.Items[i].Tag = newRec;
                        allDisks.Remove(existingDSK.Info.DeviceID);
                    }
                    else
                        lvDevices.Items.RemoveAt(i--);
                }

                bool removableOnly = chbHideDevices.Checked;

                //Remaining items
                foreach (var dsk in allDisks.Values)
                {
                    if (ShouldHideDiskItem(dsk))
                        continue;
                    var lvi = CreateListViewItemForDisk(dsk);
                    if (lvi != null)
                        lvDevices.Items.Add(lvi);
                }

                label1.Visible = lvDevices.Items.Count == 0;
            }
            catch
            {

            }
        }

        Guid GUID_DEVINTERFACE_DISK = new Guid("53F56307-B6BF-11D0-94F2-00A0C91EFB8B");

        Regex rgSD = new Regex(@"\b(SD|MMC)\b");
        Regex rgMS = new Regex(@"\b(MS)\b");
        Regex rgSM = new Regex(@"\b(SM|xD|SmartMedia|Smart Media)\b");
        Regex rgCF = new Regex(@"\b(CF|CompactFlash|Compact Flash)\b");

        const int SectorSize = 512;

        class DiskRecord
        {
            public DiskDevice.STORAGE_HOTPLUG_INFO Hotplug;
            public DiskDevice.STORAGE_DEVICE_DESCRIPTOR Descriptor;
            public DeviceEnumerator.DeviceInfo Info;
            public long VolumeSize;
        }

        List<DiskRecord> QueryAllDisks()
        {
            List<DiskRecord> disks = new List<DiskRecord>();
            try
            {
                using (var devenum = new DeviceEnumerator(GUID_DEVINTERFACE_DISK))
                    foreach (var info in devenum.GetAllDevices())
                    {
                        long volumeSize = 0;
                        DiskDevice.STORAGE_HOTPLUG_INFO hotplug = null;
                        DiskDevice.STORAGE_DEVICE_DESCRIPTOR desc = null;
                        try
                        {
                            using (var dev = new DiskDevice(info.DevicePath))
                            {
                                try
                                {
                                    hotplug = dev.QueryHotplugInfo();
                                }
                                catch (Exception ex)
                                {

                                }

                                try
                                {
                                    desc = dev.QueryDeviceDescriptor();
                                }
                                catch
                                {

                                }

                                byte[] result = new byte[8];
                                try
                                {
                                    if (dev.DeviceIoControl(IOCTL_DISK_GET_LENGTH_INFO, null, result) == 8)
                                        volumeSize = BitConverter.ToInt64(result, 0);
                                }
                                catch
                                {

                                }
                            }

                            disks.Add(new DiskRecord { Descriptor = desc, Hotplug = hotplug, Info = info, VolumeSize = volumeSize });
                        }
                        catch { }
                    }
            }
            catch
            {
            	
            }
            return disks;
        }

        bool ShouldHideDiskItem(DiskRecord dsk)
        {
            if (!chbHideDevices.Checked)
                return false;
            if (dsk.Hotplug != null && !dsk.Hotplug.MediaRemovable)
                return true;
            if (dsk.VolumeSize == 0)
                return true;
            return false;
        }

        ListViewItem CreateListViewItemForDisk(DiskRecord dsk)
        {
            ListViewItem lvi = new ListViewItem(dsk.Info.UserFriendlyName);
            if (dsk.Hotplug == null)
            {
                lvi.SubItems.Add("N/A");
                lvi.SubItems.Add("N/A");
                lvi.ImageIndex = 0;
            }
            else
            {
                lvi.SubItems.Add(dsk.Hotplug.DeviceHotplug ? "yes" : "no");
                lvi.SubItems.Add(dsk.Hotplug.MediaRemovable ? "yes" : "no");
                if (!dsk.Hotplug.MediaRemovable)
                {
                    if (dsk.Descriptor != null && dsk.Descriptor.BusType == DiskDevice.STORAGE_BUS_TYPE.BusTypeUsb)
                        lvi.ImageIndex = 5;
                    else
                        lvi.ImageIndex = 0;
                }
                else
                {
                    if (rgSD.IsMatch(dsk.Info.UserFriendlyName))
                        lvi.ImageIndex = 2;
                    else if (rgMS.IsMatch(dsk.Info.UserFriendlyName))
                        lvi.ImageIndex = 1;
                    else if (rgSM.IsMatch(dsk.Info.UserFriendlyName))
                        lvi.ImageIndex = 3;
                    else if (rgCF.IsMatch(dsk.Info.UserFriendlyName))
                        lvi.ImageIndex = 4;
                    else
                    {
                        if (dsk.Descriptor != null && dsk.Descriptor.BusType == DiskDevice.STORAGE_BUS_TYPE.BusTypeUsb)
                            lvi.ImageIndex = 6;
                        else
                            lvi.ImageIndex = 0;
                    }
                }
            }

            lvi.Tag = dsk;

            if (dsk.VolumeSize > 0)
                lvi.SubItems.Add(StringHelpers.FormatByteCount(dsk.VolumeSize));
            else
                lvi.SubItems.Add("No media");
            return lvi;
        }

        private void RefreshDeviceList()
        {
            lvDevices.Items.Clear();
            if (_LastKnownFullDiskList == null)
                return;
            try
            {
                foreach (var dsk in _LastKnownFullDiskList)
                {
                    if (ShouldHideDiskItem(dsk))
                        continue;
                    var lvi = CreateListViewItemForDisk(dsk);
                    if (lvi != null)
                        lvDevices.Items.Add(lvi);
                }
            }
            catch (Exception)
            {

            }
            label1.Visible = lvDevices.Items.Count == 0;
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            RefreshDeviceList();
        }


        class ThreadContext
        {
            public DiskDevice dev;
            public FileStream fs;
            public string FileName;
            public string devID;
            public ParsedChangeFile.PARTITION_RECORD? ResizedPartition;
        }

        private bool GUIEnabled
        {
            set
            {
                gbSourceImage.Enabled = chbHideDevices.Enabled = lvDevices.Enabled = btnWrite.Visible = value;
                btnCancel.Visible = !value;
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            DiskDevice dev = null;
            FileStream fs = null;
            try
            {
                if (!File.Exists(txtFileName.Text))
                    throw new Exception("Please select a valid image file");

                if (lvDevices.SelectedItems.Count == 0)
                    throw new Exception("Please select target device");

                var rec = lvDevices.SelectedItems[0].Tag as DiskRecord;
                var info = rec == null ? null : rec.Info;
                if (info == null)
                    throw new Exception("Please select a valid target device");

                string devPath = info.DevicePath;

                dev = new DiskDevice(devPath);
                long volumeSize = 0;
                byte[] result = new byte[8];
                if (dev.DeviceIoControl(IOCTL_DISK_GET_LENGTH_INFO, null, result) == 8)
                    volumeSize = BitConverter.ToInt64(result, 0);
                if (volumeSize <= 0)
                    throw new Exception("Please insert a card into the card reader");

                fs = File.Open(txtFileName.Text, FileMode.Open, FileAccess.Read, FileShare.Read);

                if (fs.Length > volumeSize)
                    throw new Exception(string.Format("The selected media ({0}) is too small for the selected image file {1})", StringHelpers.FormatByteCount(volumeSize), StringHelpers.FormatByteCount(fs.Length)));

                _RegHelper.SetValue("LastImageFile", txtFileName.Text);

                if (new EraseConfirmationForm(info, dev, volumeSize).ShowDialog() != DialogResult.OK)
                    return;

                lblProgress.Text = "Preparing...";
                GUIEnabled = false;
                _AbortWriting = false;
                var ctx = new ThreadContext { dev = dev, fs = fs, devID = info.DeviceID, FileName = txtFileName.Text};
                if (cbResize.Checked)
                {
                    try
                    {
                        var pt = ParsedChangeFile.ReadPartitionTable(ctx.FileName);
                        if (pt != null && pt.Length > 0 && pt[pt.Length - 1].Type == 0x83)
                            ctx.ResizedPartition = pt[pt.Length - 1];
                    }
                    catch { }
                }

                new Thread(WriteThreadBody).Start(ctx);
                fs = null;
                dev = null;
            }
            catch (System.Exception ex)
            {
                MessageBox.Show(ex.Message, Text, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            finally
            {
                if (fs != null)
                    fs.Dispose();
                if (dev != null)
                    dev.Dispose();
            }
        }

        void UpdateProgress(string text, long progress, long max)
        {
            if (InvokeRequired)
                BeginInvoke(new ThreadStart(() => UpdateProgress(text, progress, max)));
            else
            {
                if (text != null)
                    lblProgress.Text = text;

                if (max == 0)
                    toolStripProgressBar1.Style = ProgressBarStyle.Marquee;
                else
                {
                    if (progress > max)
                        progress = max;
                    toolStripProgressBar1.Style = ProgressBarStyle.Continuous;
                    toolStripProgressBar1.Value = (int)((progress * toolStripProgressBar1.Maximum) / max);
                }
            }
        }


        delegate bool AskRetryDelegate(string message);

        bool AskRetry(string message)
        {
            if (InvokeRequired)
                return (bool)Invoke(new AskRetryDelegate(AskRetry), message);
            return MessageBox.Show(message, Text, MessageBoxButtons.RetryCancel, MessageBoxIcon.Warning) == DialogResult.Retry;
        }

        //Returns false if need a retry
        bool AttemptWrite(ThreadContext ctx, string devPath)
        {
            DateTime start = DateTime.Now;
            UpdateProgress("Resetting device...", 0, 0);
            for (; ; )
            {
                ctx.dev = new DiskDevice(devPath);
                if (ctx.dev.Write(new byte[SectorSize]) == SectorSize)
                    break;
                ctx.dev.Dispose();
                ctx.dev = null;
                if ((DateTime.Now - start).TotalSeconds > 10)
                    throw new Exception("Cannot get write access to the device.");
            }


            long totalSize = ctx.fs.Length, done = 0;
            const int bufferSize = 1024 * 1024;
            IntPtr buffer = IntPtr.Zero;

            start = DateTime.Now;

            try
            {
                ctx.dev.SeekAbs(0);

                byte[] firstSector = null;  //The very first sector will be written in the very end. Otherwise the partition driver might block us from writing the raw disk object.

                buffer = Marshal.AllocCoTaskMem(bufferSize);
                while (done < totalSize)
                {
                    if (_AbortWriting)
                        throw new OperationCanceledException();

                    int todo = (int)Math.Min(bufferSize, totalSize - done), cdone;
                    if (!DeviceControl.ReadFile(ctx.fs.SafeFileHandle, buffer, todo, out cdone, IntPtr.Zero) || cdone != todo)
                        if (!AskRetry("Cannot read image file at offset " + done.ToString()))
                            throw new OperationCanceledException();
                        else
                            return false;

                    if (firstSector == null)
                    {
                        firstSector = new byte[SectorSize];
                        Marshal.Copy(buffer, firstSector, 0, SectorSize);
                        Marshal.Copy(new byte[SectorSize], 0, buffer, SectorSize);
                    }

                    if ((todo % SectorSize) != 0)
                    {
                        //If the image file is not aligned to the sector boundary, the device write would fail unless we manually align it
                        todo = ((todo + SectorSize - 1) / SectorSize) * SectorSize;
                    }

                    if (ctx.dev.Write(buffer, todo) != todo)
                        if (!AskRetry("Cannot write medium at offset " + done.ToString()))
                            throw new OperationCanceledException();
                        else
                            return false;

                    ctx.dev.SeekRel(todo);

                    string statusText;
                    long msec = (long)(DateTime.Now - start).TotalMilliseconds;
                    if (msec < 5000)
                        statusText = string.Format("Writing ({0}B done)...", StringHelpers.FormatByteCount(done));
                    else
                    {
                        long bps = (done * 1000) / msec;
                        long bytesLeft = totalSize - done;
                        if (bps == 0)
                            bps = 1;
                        int secEstimated = (int)(bytesLeft / bps);

                        statusText = string.Format("Writing ({0}B done, {1}B/s, {2}:{3:d2} remaining)...", StringHelpers.FormatByteCount(done), StringHelpers.FormatByteCount(bps), secEstimated / 60, secEstimated % 60);
                    }
                    UpdateProgress(statusText, done, totalSize);
                    done += todo;
                }

                if (firstSector == null)
                    throw new Exception("First sector not cached");

                if (ctx.ResizedPartition.HasValue)
                {
                    string resizer = @"E:\projects\IMPORTED\e2fsprogs\resize\resize2fs.exe";
                    var devLength = ctx.dev.QueryLength().Length;
                    if ((ctx.ResizedPartition.Value.StartingLBA + ctx.ResizedPartition.Value.TotalSectorCount) * 512UL > devLength)
                        throw new Exception("Image is too small");

                    var pt = ParsedChangeFile.ReadPartitionTable(firstSector);
                    int partitionNumber = -1;
                    for (int i = 0; i < pt.Length; i++)
                        if (pt[i].Equals(ctx.ResizedPartition.Value))
                        {
                            partitionNumber = i;
                            break;
                        }

                    if (partitionNumber == -1)
                        throw new Exception("Matching partition not found in image");

                    ulong newSizeInBytes = devLength - ctx.ResizedPartition.Value.StartingLBA * 512UL;
                    int offsetInBootSector = 0x1BE + partitionNumber * 0x10 + 0x0c;
                    if (BitConverter.ToUInt32(firstSector, offsetInBootSector) != ctx.ResizedPartition.Value.TotalSectorCount)
                        throw new Exception("Internal error: wrong partition table offset");
                    BitConverter.GetBytes((int)(newSizeInBytes / 512)).CopyTo(firstSector, offsetInBootSector);

                    UpdateProgress("Resizing file system...", 0, 0);
                    var proc = Process.Start(new ProcessStartInfo
                    {
                        FileName = resizer,
                        Arguments = string.Format("\"{0}@{1}/{2}", ctx.FileName, ctx.ResizedPartition.Value.StartingLBA * 512L, newSizeInBytes),
                        CreateNoWindow = true,
                        UseShellExecute = false
                    });

                    proc.WaitForExit();
                    if (proc.ExitCode != 0)
                        throw new Exception("Failed to resize Ext2FS - exit code " + proc.ExitCode);

                    UpdateProgress("Writing resized file system...", 0, 0);
                    string chg = ctx.FileName + ".chg";
                    using (var chf = new ParsedChangeFile(chg, ctx.ResizedPartition.Value.StartingLBA * 512, devLength))
                    {
                        chf.Apply(ctx.dev, (d, t) => UpdateProgress("Writing resized file system...", d, t));
                    }
                }

                ctx.dev.SeekAbs(0);
                ctx.dev.Write(firstSector);
            }
            finally
            {
                if (buffer != IntPtr.Zero)
                    Marshal.FreeCoTaskMem(buffer);
            }
            return true;
        }

        delegate void ReportCompletionDelegate(Exception ex);

        void ReportCompletion(Exception ex)
        {
            if (InvokeRequired)
                BeginInvoke(new ReportCompletionDelegate(ReportCompletion), ex);
            else
            {
                if (ex == null)
                    MessageBox.Show("The image has been written successfully.", Text, MessageBoxButtons.OK, MessageBoxIcon.Information);
                else if (!(ex is OperationCanceledException))
                    MessageBox.Show(ex.Message, Text, MessageBoxButtons.OK, MessageBoxIcon.Error);
                GUIEnabled = true;
                toolStripProgressBar1.Style = ProgressBarStyle.Continuous;
                toolStripProgressBar1.Value = 0;
                lblProgress.Text = "Ready";
            }
        }

        bool _AbortWriting;

        void WriteThreadBody(object obj)
        {
            ThreadContext ctx = (ThreadContext)obj;

            UpdateProgress("Erasing partition table...", 0, 0);
            try
            {
                //Erase
                ctx.dev.SeekAbs(0);
                ctx.dev.Write(new byte[SectorSize]);
                ctx.dev.Dispose();
                ctx.dev = null;

                string devPath = null;

                using (var devenum = new DeviceEnumerator(GUID_DEVINTERFACE_DISK))
                    foreach (var info in devenum.GetAllDevices())
                    {
                        if (info.DeviceID == ctx.devID)
                        {
                            devPath = info.DevicePath;
                            if (!info.ChangeDeviceState(DeviceEnumerator.DICS.DICS_DISABLE))
                                throw new Exception("Cannot reset the card reader. Please remove the card, put it back and retry.");
                            if (!info.ChangeDeviceState(DeviceEnumerator.DICS.DICS_ENABLE))
                                throw new Exception("Cannot re-enable the card reader. Please enable it manually using device manager.");
                        }
                    }

                if (devPath == null)
                    throw new Exception("Cannot reset the card reader. Please remove the card, put it back and retry.");

                for (; ; )
                {
                    if (AttemptWrite(ctx, devPath))
                        break;
                }

                ReportCompletion(null);
            }
            catch (System.Exception ex)
            {
                ReportCompletion(ex);
            }
            finally
            {
                if (ctx.fs != null)
                    ctx.fs.Dispose();
                if (ctx.dev != null)
                    ctx.dev.Dispose();
            }
        }

        private void listView1_DoubleClick(object sender, EventArgs e)
        {
            button3_Click(sender, e);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (openFileDialog1.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                txtFileName.Text = openFileDialog1.FileName;
        }

        private void MainForm_SizeChanged(object sender, EventArgs e)
        {
            toolStripStatusLabel1_TextChanged(sender, e);
        }

        private void toolStripStatusLabel1_TextChanged(object sender, EventArgs e)
        {
            toolStripProgressBar1.Width = statusStrip1.Width - lblProgress.Width - 20;
        }

        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (lvDevices.SelectedItems.Count < 1)
            {
                btnWrite.Enabled = false;
                return;
            }
            btnWrite.ImageIndex = lvDevices.SelectedItems[0].ImageIndex;
            btnWrite.Enabled = true;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            _AbortWriting = true;
        }

        private void txtFileName_TextChanged(object sender, EventArgs e)
        {
            var fn = txtFileName.Text;
            ParsedChangeFile.PARTITION_RECORD[] pt = null;
            try
            {
                if (File.Exists(fn))
                    pt = ParsedChangeFile.ReadPartitionTable(fn);
            }
            catch { }

            if (pt != null && pt.Length > 0 && pt[pt.Length - 1].Type == 0x83)
                cbResize.Checked = cbResize.Enabled = true;
            else
                cbResize.Checked = cbResize.Enabled = false;
        }
    }
}
