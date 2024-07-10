
namespace forms_train
{
    partial class Form3
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
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.fileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.loadComboiosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.listBox1 = new System.Windows.Forms.ListBox();
            this.txtid_comboio = new System.Windows.Forms.TextBox();
            this.Label11 = new System.Windows.Forms.Label();
            this.bttnOK = new System.Windows.Forms.Button();
            this.bttnEdit = new System.Windows.Forms.Button();
            this.Label3 = new System.Windows.Forms.Label();
            this.Label2 = new System.Windows.Forms.Label();
            this.Label1 = new System.Windows.Forms.Label();
            this.bttnCancel = new System.Windows.Forms.Button();
            this.bttnAdd = new System.Windows.Forms.Button();
            this.txtmodelo = new System.Windows.Forms.TextBox();
            this.txtdata_fabrico = new System.Windows.Forms.TextBox();
            this.bttnDelete = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txtcapacidade = new System.Windows.Forms.TextBox();
            this.menuStrip1.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Font = new System.Drawing.Font("Tahoma", 9F);
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fileToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1199, 30);
            this.menuStrip1.TabIndex = 3;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // fileToolStripMenuItem
            // 
            this.fileToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.loadComboiosToolStripMenuItem,
            this.toolStripSeparator1,
            this.exitToolStripMenuItem});
            this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
            this.fileToolStripMenuItem.Size = new System.Drawing.Size(42, 26);
            this.fileToolStripMenuItem.Text = "File";
            // 
            // loadComboiosToolStripMenuItem
            // 
            this.loadComboiosToolStripMenuItem.Name = "loadComboiosToolStripMenuItem";
            this.loadComboiosToolStripMenuItem.Size = new System.Drawing.Size(224, 26);
            this.loadComboiosToolStripMenuItem.Text = "Load Comboios";
            this.loadComboiosToolStripMenuItem.Click += new System.EventHandler(this.loadComboiosToolStripMenuItem_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(221, 6);
            // 
            // exitToolStripMenuItem
            // 
            this.exitToolStripMenuItem.Name = "exitToolStripMenuItem";
            this.exitToolStripMenuItem.Size = new System.Drawing.Size(224, 26);
            this.exitToolStripMenuItem.Text = "Exit";
            this.exitToolStripMenuItem.Click += new System.EventHandler(this.exitToolStripMenuItem_Click);
            // 
            // listBox1
            // 
            this.listBox1.FormattingEnabled = true;
            this.listBox1.ItemHeight = 16;
            this.listBox1.Location = new System.Drawing.Point(0, 33);
            this.listBox1.Name = "listBox1";
            this.listBox1.Size = new System.Drawing.Size(393, 644);
            this.listBox1.TabIndex = 4;
            this.listBox1.SelectedIndexChanged += new System.EventHandler(this.listBox1_SelectedIndexChanged);
            // 
            // txtid_comboio
            // 
            this.txtid_comboio.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtid_comboio.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.txtid_comboio.Location = new System.Drawing.Point(67, 161);
            this.txtid_comboio.Margin = new System.Windows.Forms.Padding(4);
            this.txtid_comboio.Name = "txtid_comboio";
            this.txtid_comboio.ReadOnly = true;
            this.txtid_comboio.Size = new System.Drawing.Size(132, 26);
            this.txtid_comboio.TabIndex = 155;
            // 
            // Label11
            // 
            this.Label11.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.Label11.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.Label11.Location = new System.Drawing.Point(64, 139);
            this.Label11.Margin = new System.Windows.Forms.Padding(4, 1, 4, 4);
            this.Label11.Name = "Label11";
            this.Label11.Size = new System.Drawing.Size(153, 20);
            this.Label11.TabIndex = 154;
            this.Label11.Text = "ID do Comboio";
            // 
            // bttnOK
            // 
            this.bttnOK.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bttnOK.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.bttnOK.Location = new System.Drawing.Point(224, 312);
            this.bttnOK.Margin = new System.Windows.Forms.Padding(4);
            this.bttnOK.Name = "bttnOK";
            this.bttnOK.Size = new System.Drawing.Size(128, 39);
            this.bttnOK.TabIndex = 152;
            this.bttnOK.Text = "OK";
            this.bttnOK.Visible = false;
            this.bttnOK.Click += new System.EventHandler(this.bttnOK_Click);
            // 
            // bttnEdit
            // 
            this.bttnEdit.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bttnEdit.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.bttnEdit.Location = new System.Drawing.Point(432, 312);
            this.bttnEdit.Margin = new System.Windows.Forms.Padding(4);
            this.bttnEdit.Name = "bttnEdit";
            this.bttnEdit.Size = new System.Drawing.Size(128, 39);
            this.bttnEdit.TabIndex = 150;
            this.bttnEdit.Text = "Edit";
            this.bttnEdit.Click += new System.EventHandler(this.bttnEdit_Click);
            // 
            // Label3
            // 
            this.Label3.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.Label3.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.Label3.Location = new System.Drawing.Point(283, 214);
            this.Label3.Margin = new System.Windows.Forms.Padding(4, 4, 4, 1);
            this.Label3.Name = "Label3";
            this.Label3.Size = new System.Drawing.Size(187, 20);
            this.Label3.TabIndex = 145;
            this.Label3.Text = "Modelo";
            // 
            // Label2
            // 
            this.Label2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.Label2.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.Label2.Location = new System.Drawing.Point(478, 139);
            this.Label2.Margin = new System.Windows.Forms.Padding(4, 4, 4, 1);
            this.Label2.Name = "Label2";
            this.Label2.Size = new System.Drawing.Size(205, 20);
            this.Label2.TabIndex = 143;
            this.Label2.Text = "Data de fabrico";
            // 
            // Label1
            // 
            this.Label1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.Label1.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.Label1.Location = new System.Drawing.Point(239, 139);
            this.Label1.Margin = new System.Windows.Forms.Padding(4, 1, 4, 4);
            this.Label1.Name = "Label1";
            this.Label1.Size = new System.Drawing.Size(180, 20);
            this.Label1.TabIndex = 141;
            this.Label1.Text = "Capacidade";
            // 
            // bttnCancel
            // 
            this.bttnCancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bttnCancel.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.bttnCancel.Location = new System.Drawing.Point(317, 446);
            this.bttnCancel.Margin = new System.Windows.Forms.Padding(4);
            this.bttnCancel.Name = "bttnCancel";
            this.bttnCancel.Size = new System.Drawing.Size(128, 39);
            this.bttnCancel.TabIndex = 151;
            this.bttnCancel.Text = "Cancel";
            this.bttnCancel.Visible = false;
            this.bttnCancel.Click += new System.EventHandler(this.bttnCancel_Click);
            // 
            // bttnAdd
            // 
            this.bttnAdd.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bttnAdd.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.bttnAdd.Location = new System.Drawing.Point(224, 372);
            this.bttnAdd.Margin = new System.Windows.Forms.Padding(4);
            this.bttnAdd.Name = "bttnAdd";
            this.bttnAdd.Size = new System.Drawing.Size(128, 39);
            this.bttnAdd.TabIndex = 149;
            this.bttnAdd.Text = "Add";
            this.bttnAdd.Click += new System.EventHandler(this.bttnAdd_Click);
            // 
            // txtmodelo
            // 
            this.txtmodelo.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtmodelo.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.txtmodelo.Location = new System.Drawing.Point(286, 236);
            this.txtmodelo.Margin = new System.Windows.Forms.Padding(4, 1, 4, 4);
            this.txtmodelo.Name = "txtmodelo";
            this.txtmodelo.ReadOnly = true;
            this.txtmodelo.Size = new System.Drawing.Size(184, 26);
            this.txtmodelo.TabIndex = 146;
            // 
            // txtdata_fabrico
            // 
            this.txtdata_fabrico.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtdata_fabrico.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.txtdata_fabrico.Location = new System.Drawing.Point(481, 161);
            this.txtdata_fabrico.Margin = new System.Windows.Forms.Padding(4, 1, 4, 4);
            this.txtdata_fabrico.Name = "txtdata_fabrico";
            this.txtdata_fabrico.ReadOnly = true;
            this.txtdata_fabrico.Size = new System.Drawing.Size(264, 26);
            this.txtdata_fabrico.TabIndex = 144;
            // 
            // bttnDelete
            // 
            this.bttnDelete.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bttnDelete.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.bttnDelete.Location = new System.Drawing.Point(432, 372);
            this.bttnDelete.Margin = new System.Windows.Forms.Padding(4);
            this.bttnDelete.Name = "bttnDelete";
            this.bttnDelete.Size = new System.Drawing.Size(128, 39);
            this.bttnDelete.TabIndex = 153;
            this.bttnDelete.Text = "Delete";
            this.bttnDelete.Click += new System.EventHandler(this.bttnDelete_Click);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.txtcapacidade);
            this.panel1.Controls.Add(this.Label3);
            this.panel1.Controls.Add(this.bttnOK);
            this.panel1.Controls.Add(this.txtmodelo);
            this.panel1.Controls.Add(this.bttnCancel);
            this.panel1.Controls.Add(this.Label11);
            this.panel1.Controls.Add(this.bttnAdd);
            this.panel1.Controls.Add(this.bttnEdit);
            this.panel1.Controls.Add(this.txtid_comboio);
            this.panel1.Controls.Add(this.txtdata_fabrico);
            this.panel1.Controls.Add(this.Label2);
            this.panel1.Controls.Add(this.Label1);
            this.panel1.Controls.Add(this.bttnDelete);
            this.panel1.Location = new System.Drawing.Point(399, 33);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(800, 591);
            this.panel1.TabIndex = 156;
            // 
            // txtcapacidade
            // 
            this.txtcapacidade.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtcapacidade.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.txtcapacidade.Location = new System.Drawing.Point(240, 161);
            this.txtcapacidade.Margin = new System.Windows.Forms.Padding(4);
            this.txtcapacidade.Name = "txtcapacidade";
            this.txtcapacidade.ReadOnly = true;
            this.txtcapacidade.Size = new System.Drawing.Size(205, 26);
            this.txtcapacidade.TabIndex = 156;
            // 
            // Form3
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1199, 625);
            this.Controls.Add(this.listBox1);
            this.Controls.Add(this.menuStrip1);
            this.Controls.Add(this.panel1);
            this.Name = "Form3";
            this.Text = "Comboios";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem fileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem loadComboiosToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
        private System.Windows.Forms.ListBox listBox1;
        internal System.Windows.Forms.TextBox txtid_comboio;
        internal System.Windows.Forms.Label Label11;
        internal System.Windows.Forms.Button bttnOK;
        internal System.Windows.Forms.Button bttnEdit;
        internal System.Windows.Forms.Label Label3;
        internal System.Windows.Forms.Label Label2;
        internal System.Windows.Forms.Label Label1;
        internal System.Windows.Forms.Button bttnCancel;
        internal System.Windows.Forms.Button bttnAdd;
        internal System.Windows.Forms.TextBox txtmodelo;
        internal System.Windows.Forms.TextBox txtdata_fabrico;
        private System.Windows.Forms.Button bttnDelete;
        private System.Windows.Forms.Panel panel1;
        internal System.Windows.Forms.TextBox txtcapacidade;
    }
}