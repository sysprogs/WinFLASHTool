namespace WinFlashTool
{
    partial class MainForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
            this.lblIntro = new System.Windows.Forms.Label();
            this.gbSourceImage = new System.Windows.Forms.GroupBox();
            this.lblFileName = new System.Windows.Forms.Label();
            this.btnBrowseImage = new System.Windows.Forms.Button();
            this.txtFileName = new System.Windows.Forms.TextBox();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.gbTargetDevice = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.chbHideDevices = new System.Windows.Forms.CheckBox();
            this.btnCancel = new System.Windows.Forms.Button();
            this.btnWrite = new System.Windows.Forms.Button();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.lvDevices = new System.Windows.Forms.ListView();
            this.chDevice = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.chHotplug = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.chRemovableMedia = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.chSize = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.lblProgress = new System.Windows.Forms.ToolStripStatusLabel();
            this.toolStripStatusLabel2 = new System.Windows.Forms.ToolStripStatusLabel();
            this.toolStripProgressBar1 = new System.Windows.Forms.ToolStripProgressBar();
            this.cbResize = new System.Windows.Forms.CheckBox();
            this.gbSourceImage.SuspendLayout();
            this.gbTargetDevice.SuspendLayout();
            this.statusStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblIntro
            // 
            this.lblIntro.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblIntro.Location = new System.Drawing.Point(12, 9);
            this.lblIntro.Name = "lblIntro";
            this.lblIntro.Size = new System.Drawing.Size(600, 21);
            this.lblIntro.TabIndex = 0;
            this.lblIntro.Text = "This tool allows writing raw images to SD and other FLASH memory cards.";
            // 
            // gbSourceImage
            // 
            this.gbSourceImage.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gbSourceImage.Controls.Add(this.cbResize);
            this.gbSourceImage.Controls.Add(this.lblFileName);
            this.gbSourceImage.Controls.Add(this.btnBrowseImage);
            this.gbSourceImage.Controls.Add(this.txtFileName);
            this.gbSourceImage.Location = new System.Drawing.Point(12, 33);
            this.gbSourceImage.Name = "gbSourceImage";
            this.gbSourceImage.Size = new System.Drawing.Size(600, 63);
            this.gbSourceImage.TabIndex = 1;
            this.gbSourceImage.TabStop = false;
            this.gbSourceImage.Text = "Source image";
            // 
            // lblFileName
            // 
            this.lblFileName.AutoSize = true;
            this.lblFileName.Location = new System.Drawing.Point(6, 21);
            this.lblFileName.Name = "lblFileName";
            this.lblFileName.Size = new System.Drawing.Size(55, 13);
            this.lblFileName.TabIndex = 0;
            this.lblFileName.Text = "File name:";
            // 
            // btnBrowseImage
            // 
            this.btnBrowseImage.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnBrowseImage.Location = new System.Drawing.Point(570, 18);
            this.btnBrowseImage.Name = "btnBrowseImage";
            this.btnBrowseImage.Size = new System.Drawing.Size(24, 20);
            this.btnBrowseImage.TabIndex = 2;
            this.btnBrowseImage.Text = "...";
            this.btnBrowseImage.UseVisualStyleBackColor = true;
            this.btnBrowseImage.Click += new System.EventHandler(this.button1_Click);
            // 
            // txtFileName
            // 
            this.txtFileName.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtFileName.Location = new System.Drawing.Point(67, 18);
            this.txtFileName.Name = "txtFileName";
            this.txtFileName.Size = new System.Drawing.Size(506, 20);
            this.txtFileName.TabIndex = 1;
            this.txtFileName.TextChanged += new System.EventHandler(this.txtFileName_TextChanged);
            // 
            // gbTargetDevice
            // 
            this.gbTargetDevice.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gbTargetDevice.Controls.Add(this.label1);
            this.gbTargetDevice.Controls.Add(this.chbHideDevices);
            this.gbTargetDevice.Controls.Add(this.btnCancel);
            this.gbTargetDevice.Controls.Add(this.btnWrite);
            this.gbTargetDevice.Controls.Add(this.lvDevices);
            this.gbTargetDevice.Location = new System.Drawing.Point(12, 102);
            this.gbTargetDevice.Name = "gbTargetDevice";
            this.gbTargetDevice.Size = new System.Drawing.Size(600, 316);
            this.gbTargetDevice.TabIndex = 2;
            this.gbTargetDevice.TabStop = false;
            this.gbTargetDevice.Text = "Target device";
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(35, 112);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(520, 78);
            this.label1.TabIndex = 4;
            this.label1.Text = "No compatible devices found. Please insert the memory card in the card reader or " +
    "uncheck the checkbox below to see non-removable devices.";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.label1.Visible = false;
            // 
            // chbHideDevices
            // 
            this.chbHideDevices.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.chbHideDevices.AutoSize = true;
            this.chbHideDevices.Checked = true;
            this.chbHideDevices.CheckState = System.Windows.Forms.CheckState.Checked;
            this.chbHideDevices.Location = new System.Drawing.Point(6, 282);
            this.chbHideDevices.Name = "chbHideDevices";
            this.chbHideDevices.Size = new System.Drawing.Size(394, 17);
            this.chbHideDevices.TabIndex = 2;
            this.chbHideDevices.Text = "Hide devices with fixed media (e.g. HDDs) and devices with no media inserted";
            this.chbHideDevices.UseVisualStyleBackColor = true;
            this.chbHideDevices.CheckedChanged += new System.EventHandler(this.checkBox1_CheckedChanged);
            // 
            // btnCancel
            // 
            this.btnCancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnCancel.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancel.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCancel.ImageKey = "(none)";
            this.btnCancel.Location = new System.Drawing.Point(505, 269);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(89, 39);
            this.btnCancel.TabIndex = 3;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Visible = false;
            this.btnCancel.Click += new System.EventHandler(this.button2_Click);
            // 
            // btnWrite
            // 
            this.btnWrite.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnWrite.Enabled = false;
            this.btnWrite.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnWrite.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnWrite.ImageKey = "no32.png";
            this.btnWrite.ImageList = this.imageList1;
            this.btnWrite.Location = new System.Drawing.Point(505, 269);
            this.btnWrite.Name = "btnWrite";
            this.btnWrite.Size = new System.Drawing.Size(89, 39);
            this.btnWrite.TabIndex = 3;
            this.btnWrite.Text = "Write";
            this.btnWrite.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnWrite.UseVisualStyleBackColor = true;
            this.btnWrite.Click += new System.EventHandler(this.button3_Click);
            // 
            // imageList1
            // 
            this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            this.imageList1.Images.SetKeyName(0, "hdd32.png");
            this.imageList1.Images.SetKeyName(1, "ms32.png");
            this.imageList1.Images.SetKeyName(2, "sd32.png");
            this.imageList1.Images.SetKeyName(3, "xd32.png");
            this.imageList1.Images.SetKeyName(4, "1354823506_compact_flash_unmount.png");
            this.imageList1.Images.SetKeyName(5, "usbdisk32.png");
            this.imageList1.Images.SetKeyName(6, "usbstick32.png");
            this.imageList1.Images.SetKeyName(7, "no32.png");
            // 
            // lvDevices
            // 
            this.lvDevices.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lvDevices.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.chDevice,
            this.chHotplug,
            this.chRemovableMedia,
            this.chSize});
            this.lvDevices.FullRowSelect = true;
            this.lvDevices.GridLines = true;
            this.lvDevices.HideSelection = false;
            this.lvDevices.Location = new System.Drawing.Point(6, 19);
            this.lvDevices.MultiSelect = false;
            this.lvDevices.Name = "lvDevices";
            this.lvDevices.Size = new System.Drawing.Size(588, 244);
            this.lvDevices.SmallImageList = this.imageList1;
            this.lvDevices.TabIndex = 1;
            this.lvDevices.UseCompatibleStateImageBehavior = false;
            this.lvDevices.View = System.Windows.Forms.View.Details;
            this.lvDevices.SelectedIndexChanged += new System.EventHandler(this.listView1_SelectedIndexChanged);
            this.lvDevices.DoubleClick += new System.EventHandler(this.listView1_DoubleClick);
            // 
            // chDevice
            // 
            this.chDevice.Text = "Device";
            this.chDevice.Width = 220;
            // 
            // chHotplug
            // 
            this.chHotplug.Text = "Hotplug";
            this.chHotplug.Width = 50;
            // 
            // chRemovableMedia
            // 
            this.chRemovableMedia.Text = "Removable Media";
            this.chRemovableMedia.Width = 110;
            // 
            // chSize
            // 
            this.chSize.Text = "Size";
            this.chSize.Width = 120;
            // 
            // statusStrip1
            // 
            this.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.lblProgress,
            this.toolStripStatusLabel2,
            this.toolStripProgressBar1});
            this.statusStrip1.Location = new System.Drawing.Point(0, 421);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(624, 22);
            this.statusStrip1.TabIndex = 5;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // lblProgress
            // 
            this.lblProgress.Name = "lblProgress";
            this.lblProgress.Size = new System.Drawing.Size(48, 17);
            this.lblProgress.Text = "Inactive";
            this.lblProgress.TextChanged += new System.EventHandler(this.toolStripStatusLabel1_TextChanged);
            // 
            // toolStripStatusLabel2
            // 
            this.toolStripStatusLabel2.Name = "toolStripStatusLabel2";
            this.toolStripStatusLabel2.Size = new System.Drawing.Size(459, 17);
            this.toolStripStatusLabel2.Spring = true;
            // 
            // toolStripProgressBar1
            // 
            this.toolStripProgressBar1.AutoSize = false;
            this.toolStripProgressBar1.Maximum = 1000;
            this.toolStripProgressBar1.Name = "toolStripProgressBar1";
            this.toolStripProgressBar1.Size = new System.Drawing.Size(100, 16);
            // 
            // cbResize
            // 
            this.cbResize.AutoSize = true;
            this.cbResize.Location = new System.Drawing.Point(9, 41);
            this.cbResize.Name = "cbResize";
            this.cbResize.Size = new System.Drawing.Size(331, 17);
            this.cbResize.TabIndex = 3;
            this.cbResize.Text = "Reize the last Ext2FS partition until the end of the storage device";
            this.cbResize.UseVisualStyleBackColor = true;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(624, 443);
            this.Controls.Add(this.statusStrip1);
            this.Controls.Add(this.gbTargetDevice);
            this.Controls.Add(this.gbSourceImage);
            this.Controls.Add(this.lblIntro);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MinimumSize = new System.Drawing.Size(550, 400);
            this.Name = "MainForm";
            this.Text = "WinFLASHTool";
            this.SizeChanged += new System.EventHandler(this.MainForm_SizeChanged);
            this.gbSourceImage.ResumeLayout(false);
            this.gbSourceImage.PerformLayout();
            this.gbTargetDevice.ResumeLayout(false);
            this.gbTargetDevice.PerformLayout();
            this.statusStrip1.ResumeLayout(false);
            this.statusStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblIntro;
        private System.Windows.Forms.GroupBox gbSourceImage;
        private System.Windows.Forms.Button btnBrowseImage;
        private System.Windows.Forms.TextBox txtFileName;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.GroupBox gbTargetDevice;
        private System.Windows.Forms.ListView lvDevices;
        private System.Windows.Forms.ColumnHeader chDevice;
        private System.Windows.Forms.ColumnHeader chSize;
        private System.Windows.Forms.CheckBox chbHideDevices;
        private System.Windows.Forms.ColumnHeader chHotplug;
        private System.Windows.Forms.ColumnHeader chRemovableMedia;
        private System.Windows.Forms.ImageList imageList1;
        private System.Windows.Forms.Button btnWrite;
        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.ToolStripProgressBar toolStripProgressBar1;
        private System.Windows.Forms.ToolStripStatusLabel lblProgress;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel2;
        private System.Windows.Forms.Label lblFileName;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.CheckBox cbResize;
    }
}

