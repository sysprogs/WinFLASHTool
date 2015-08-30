namespace WinFlashTool
{
    partial class EraseConfirmationForm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(EraseConfirmationForm));
            this.lblHeading = new System.Windows.Forms.Label();
            this.lblWarning = new System.Windows.Forms.Label();
            this.lblIntro = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.lblDevName = new System.Windows.Forms.Label();
            this.lblDevSize = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.lblInternalName = new System.Windows.Forms.Label();
            this.gbPartitions = new System.Windows.Forms.GroupBox();
            this.lvPartitions = new System.Windows.Forms.ListView();
            this.chNumber = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.chOffset = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.chSize = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.chType = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.chMountPoints = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.btnErase = new System.Windows.Forms.Button();
            this.btnCancel = new System.Windows.Forms.Button();
            this.gbTargetDevice = new System.Windows.Forms.GroupBox();
            this.gbPartitions.SuspendLayout();
            this.gbTargetDevice.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblHeading
            // 
            this.lblHeading.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblHeading.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblHeading.Location = new System.Drawing.Point(9, 6);
            this.lblHeading.Name = "lblHeading";
            this.lblHeading.Size = new System.Drawing.Size(607, 30);
            this.lblHeading.TabIndex = 0;
            this.lblHeading.Text = "Confirm erasing device";
            this.lblHeading.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // lblWarning
            // 
            this.lblWarning.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblWarning.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblWarning.ForeColor = System.Drawing.Color.Red;
            this.lblWarning.Location = new System.Drawing.Point(8, 36);
            this.lblWarning.Name = "lblWarning";
            this.lblWarning.Size = new System.Drawing.Size(604, 46);
            this.lblWarning.TabIndex = 1;
            this.lblWarning.Text = "Warning! If you continue, all data on the selected device will be permanently and" +
    " unrecoverably erased! ";
            // 
            // lblIntro
            // 
            this.lblIntro.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblIntro.Location = new System.Drawing.Point(12, 82);
            this.lblIntro.Name = "lblIntro";
            this.lblIntro.Size = new System.Drawing.Size(600, 18);
            this.lblIntro.TabIndex = 1;
            this.lblIntro.Text = "Please review the information about the target device before you continue:";
            // 
            // label4
            // 
            this.label4.Location = new System.Drawing.Point(5, 14);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(123, 16);
            this.label4.TabIndex = 1;
            this.label4.Text = "Device name:";
            // 
            // label5
            // 
            this.label5.Location = new System.Drawing.Point(5, 29);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(123, 16);
            this.label5.TabIndex = 1;
            this.label5.Text = "Total size:";
            // 
            // lblDevName
            // 
            this.lblDevName.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblDevName.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDevName.Location = new System.Drawing.Point(134, 14);
            this.lblDevName.Name = "lblDevName";
            this.lblDevName.Size = new System.Drawing.Size(463, 16);
            this.lblDevName.TabIndex = 0;
            this.lblDevName.Text = "???";
            // 
            // lblDevSize
            // 
            this.lblDevSize.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblDevSize.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDevSize.Location = new System.Drawing.Point(134, 29);
            this.lblDevSize.Name = "lblDevSize";
            this.lblDevSize.Size = new System.Drawing.Size(463, 16);
            this.lblDevSize.TabIndex = 0;
            this.lblDevSize.Text = "N/A";
            // 
            // label6
            // 
            this.label6.Location = new System.Drawing.Point(5, 45);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(123, 16);
            this.label6.TabIndex = 1;
            this.label6.Text = "Windows Disk name:";
            // 
            // lblInternalName
            // 
            this.lblInternalName.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblInternalName.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblInternalName.Location = new System.Drawing.Point(134, 45);
            this.lblInternalName.Name = "lblInternalName";
            this.lblInternalName.Size = new System.Drawing.Size(463, 16);
            this.lblInternalName.TabIndex = 0;
            this.lblInternalName.Text = "N/A";
            // 
            // gbPartitions
            // 
            this.gbPartitions.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gbPartitions.Controls.Add(this.lvPartitions);
            this.gbPartitions.Location = new System.Drawing.Point(11, 171);
            this.gbPartitions.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.gbPartitions.Name = "gbPartitions";
            this.gbPartitions.Padding = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.gbPartitions.Size = new System.Drawing.Size(602, 217);
            this.gbPartitions.TabIndex = 2;
            this.gbPartitions.TabStop = false;
            this.gbPartitions.Text = "Detected partitions";
            // 
            // lvPartitions
            // 
            this.lvPartitions.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lvPartitions.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.chNumber,
            this.chOffset,
            this.chSize,
            this.chType,
            this.chMountPoints});
            this.lvPartitions.FullRowSelect = true;
            this.lvPartitions.GridLines = true;
            this.lvPartitions.HideSelection = false;
            this.lvPartitions.Location = new System.Drawing.Point(4, 16);
            this.lvPartitions.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.lvPartitions.Name = "lvPartitions";
            this.lvPartitions.Size = new System.Drawing.Size(594, 197);
            this.lvPartitions.SmallImageList = this.imageList1;
            this.lvPartitions.TabIndex = 1;
            this.lvPartitions.UseCompatibleStateImageBehavior = false;
            this.lvPartitions.View = System.Windows.Forms.View.Details;
            this.lvPartitions.DoubleClick += new System.EventHandler(this.listView1_DoubleClick);
            // 
            // chNumber
            // 
            this.chNumber.Text = "#";
            // 
            // chOffset
            // 
            this.chOffset.Text = "Offset";
            this.chOffset.Width = 80;
            // 
            // chSize
            // 
            this.chSize.Text = "Size";
            this.chSize.Width = 80;
            // 
            // chType
            // 
            this.chType.Text = "Type";
            // 
            // chMountPoints
            // 
            this.chMountPoints.Text = "Mount Point(s)";
            this.chMountPoints.Width = 240;
            // 
            // imageList1
            // 
            this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            this.imageList1.Images.SetKeyName(0, "Hard_Drive.png");
            this.imageList1.Images.SetKeyName(1, "UnknownDrive32.png");
            // 
            // btnErase
            // 
            this.btnErase.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnErase.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnErase.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnErase.ForeColor = System.Drawing.Color.Red;
            this.btnErase.Location = new System.Drawing.Point(344, 392);
            this.btnErase.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btnErase.Name = "btnErase";
            this.btnErase.Size = new System.Drawing.Size(176, 39);
            this.btnErase.TabIndex = 3;
            this.btnErase.Text = "Erase and overwrite";
            this.btnErase.UseVisualStyleBackColor = true;
            // 
            // btnCancel
            // 
            this.btnCancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancel.Location = new System.Drawing.Point(524, 392);
            this.btnCancel.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(89, 39);
            this.btnCancel.TabIndex = 4;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            // 
            // gbTargetDevice
            // 
            this.gbTargetDevice.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gbTargetDevice.Controls.Add(this.label4);
            this.gbTargetDevice.Controls.Add(this.lblDevName);
            this.gbTargetDevice.Controls.Add(this.label5);
            this.gbTargetDevice.Controls.Add(this.lblDevSize);
            this.gbTargetDevice.Controls.Add(this.lblInternalName);
            this.gbTargetDevice.Controls.Add(this.label6);
            this.gbTargetDevice.Location = new System.Drawing.Point(11, 102);
            this.gbTargetDevice.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.gbTargetDevice.Name = "gbTargetDevice";
            this.gbTargetDevice.Padding = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.gbTargetDevice.Size = new System.Drawing.Size(602, 65);
            this.gbTargetDevice.TabIndex = 1;
            this.gbTargetDevice.TabStop = false;
            this.gbTargetDevice.Text = "Target device";
            // 
            // EraseConfirmationForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.btnCancel;
            this.ClientSize = new System.Drawing.Size(624, 442);
            this.Controls.Add(this.gbTargetDevice);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnErase);
            this.Controls.Add(this.gbPartitions);
            this.Controls.Add(this.lblIntro);
            this.Controls.Add(this.lblWarning);
            this.Controls.Add(this.lblHeading);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MinimumSize = new System.Drawing.Size(420, 360);
            this.Name = "EraseConfirmationForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "WinFLASHTool";
            this.gbPartitions.ResumeLayout(false);
            this.gbTargetDevice.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label lblHeading;
        private System.Windows.Forms.Label lblWarning;
        private System.Windows.Forms.Label lblIntro;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label lblDevName;
        private System.Windows.Forms.Label lblDevSize;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label lblInternalName;
        private System.Windows.Forms.GroupBox gbPartitions;
        private System.Windows.Forms.ListView lvPartitions;
        private System.Windows.Forms.ColumnHeader chNumber;
        private System.Windows.Forms.ColumnHeader chOffset;
        private System.Windows.Forms.ColumnHeader chSize;
        private System.Windows.Forms.ColumnHeader chType;
        private System.Windows.Forms.ColumnHeader chMountPoints;
        private System.Windows.Forms.ImageList imageList1;
        private System.Windows.Forms.Button btnErase;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.GroupBox gbTargetDevice;
    }
}