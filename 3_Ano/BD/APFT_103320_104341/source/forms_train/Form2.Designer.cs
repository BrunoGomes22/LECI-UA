
namespace forms_train
{
    partial class Form2
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
            this.listBox1 = new System.Windows.Forms.ListBox();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.fileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.loadVagoesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.bttnDelete = new System.Windows.Forms.Button();
            this.txtdescricao = new System.Windows.Forms.TextBox();
            this.txtcapacidade = new System.Windows.Forms.TextBox();
            this.txtmodelo = new System.Windows.Forms.TextBox();
            this.txtFK_Comboio = new System.Windows.Forms.TextBox();
            this.bttnAdd = new System.Windows.Forms.Button();
            this.bttnCancel = new System.Windows.Forms.Button();
            this.Label1 = new System.Windows.Forms.Label();
            this.Label2 = new System.Windows.Forms.Label();
            this.Label3 = new System.Windows.Forms.Label();
            this.Label6 = new System.Windows.Forms.Label();
            this.bttnEdit = new System.Windows.Forms.Button();
            this.bttnOK = new System.Windows.Forms.Button();
            this.Label11 = new System.Windows.Forms.Label();
            this.txtid_vagao = new System.Windows.Forms.TextBox();
            this.panel3 = new System.Windows.Forms.Panel();
            this.menuStrip1.SuspendLayout();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // listBox1
            // 
            this.listBox1.FormattingEnabled = true;
            this.listBox1.ItemHeight = 16;
            this.listBox1.Location = new System.Drawing.Point(0, 32);
            this.listBox1.Name = "listBox1";
            this.listBox1.Size = new System.Drawing.Size(343, 516);
            this.listBox1.TabIndex = 0;
            this.listBox1.SelectedIndexChanged += new System.EventHandler(this.listBox1_SelectedIndexChanged_1);
            // 
            // menuStrip1
            // 
            this.menuStrip1.Font = new System.Drawing.Font("Tahoma", 9F);
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fileToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1227, 26);
            this.menuStrip1.TabIndex = 2;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // fileToolStripMenuItem
            // 
            this.fileToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.loadVagoesToolStripMenuItem,
            this.toolStripSeparator1,
            this.exitToolStripMenuItem});
            this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
            this.fileToolStripMenuItem.Size = new System.Drawing.Size(42, 22);
            this.fileToolStripMenuItem.Text = "File";
            // 
            // loadVagoesToolStripMenuItem
            // 
            this.loadVagoesToolStripMenuItem.Name = "loadVagoesToolStripMenuItem";
            this.loadVagoesToolStripMenuItem.Size = new System.Drawing.Size(224, 26);
            this.loadVagoesToolStripMenuItem.Text = "Load Vagoes";
            this.loadVagoesToolStripMenuItem.Click += new System.EventHandler(this.loadVagoesToolStripMenuItem_Click_1);
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
            this.exitToolStripMenuItem.Click += new System.EventHandler(this.exitToolStripMenuItem_Click_1);
            // 
            // bttnDelete
            // 
            this.bttnDelete.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bttnDelete.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.bttnDelete.Location = new System.Drawing.Point(356, 315);
            this.bttnDelete.Margin = new System.Windows.Forms.Padding(4);
            this.bttnDelete.Name = "bttnDelete";
            this.bttnDelete.Size = new System.Drawing.Size(128, 39);
            this.bttnDelete.TabIndex = 136;
            this.bttnDelete.Text = "Delete";
            this.bttnDelete.Click += new System.EventHandler(this.bttnDelete_Click_1);
            // 
            // txtdescricao
            // 
            this.txtdescricao.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtdescricao.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.txtdescricao.Location = new System.Drawing.Point(196, 82);
            this.txtdescricao.Margin = new System.Windows.Forms.Padding(4);
            this.txtdescricao.Name = "txtdescricao";
            this.txtdescricao.ReadOnly = true;
            this.txtdescricao.Size = new System.Drawing.Size(332, 26);
            this.txtdescricao.TabIndex = 117;
            // 
            // txtcapacidade
            // 
            this.txtcapacidade.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtcapacidade.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.txtcapacidade.Location = new System.Drawing.Point(575, 82);
            this.txtcapacidade.Margin = new System.Windows.Forms.Padding(4, 1, 4, 4);
            this.txtcapacidade.Name = "txtcapacidade";
            this.txtcapacidade.ReadOnly = true;
            this.txtcapacidade.Size = new System.Drawing.Size(164, 26);
            this.txtcapacidade.TabIndex = 119;
            // 
            // txtmodelo
            // 
            this.txtmodelo.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtmodelo.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.txtmodelo.Location = new System.Drawing.Point(45, 155);
            this.txtmodelo.Margin = new System.Windows.Forms.Padding(4, 1, 4, 4);
            this.txtmodelo.Name = "txtmodelo";
            this.txtmodelo.ReadOnly = true;
            this.txtmodelo.Size = new System.Drawing.Size(184, 26);
            this.txtmodelo.TabIndex = 121;
            // 
            // txtFK_Comboio
            // 
            this.txtFK_Comboio.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtFK_Comboio.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.txtFK_Comboio.Location = new System.Drawing.Point(278, 155);
            this.txtFK_Comboio.Margin = new System.Windows.Forms.Padding(4, 1, 4, 4);
            this.txtFK_Comboio.Name = "txtFK_Comboio";
            this.txtFK_Comboio.ReadOnly = true;
            this.txtFK_Comboio.Size = new System.Drawing.Size(159, 26);
            this.txtFK_Comboio.TabIndex = 127;
            // 
            // bttnAdd
            // 
            this.bttnAdd.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bttnAdd.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.bttnAdd.Location = new System.Drawing.Point(168, 315);
            this.bttnAdd.Margin = new System.Windows.Forms.Padding(4);
            this.bttnAdd.Name = "bttnAdd";
            this.bttnAdd.Size = new System.Drawing.Size(128, 39);
            this.bttnAdd.TabIndex = 130;
            this.bttnAdd.Text = "Add";
            this.bttnAdd.Click += new System.EventHandler(this.bttnAdd_Click_1);
            // 
            // bttnCancel
            // 
            this.bttnCancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bttnCancel.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.bttnCancel.Location = new System.Drawing.Point(255, 388);
            this.bttnCancel.Margin = new System.Windows.Forms.Padding(4);
            this.bttnCancel.Name = "bttnCancel";
            this.bttnCancel.Size = new System.Drawing.Size(128, 39);
            this.bttnCancel.TabIndex = 132;
            this.bttnCancel.Text = "Cancel";
            this.bttnCancel.Visible = false;
            this.bttnCancel.Click += new System.EventHandler(this.bttnCancel_Click_1);
            // 
            // Label1
            // 
            this.Label1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.Label1.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.Label1.Location = new System.Drawing.Point(193, 60);
            this.Label1.Margin = new System.Windows.Forms.Padding(4, 1, 4, 4);
            this.Label1.Name = "Label1";
            this.Label1.Size = new System.Drawing.Size(180, 20);
            this.Label1.TabIndex = 116;
            this.Label1.Text = "Descrição";
            // 
            // Label2
            // 
            this.Label2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.Label2.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.Label2.Location = new System.Drawing.Point(572, 60);
            this.Label2.Margin = new System.Windows.Forms.Padding(4, 4, 4, 1);
            this.Label2.Name = "Label2";
            this.Label2.Size = new System.Drawing.Size(198, 20);
            this.Label2.TabIndex = 118;
            this.Label2.Text = "Capacidade do Vagão";
            // 
            // Label3
            // 
            this.Label3.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.Label3.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.Label3.Location = new System.Drawing.Point(42, 133);
            this.Label3.Margin = new System.Windows.Forms.Padding(4, 4, 4, 1);
            this.Label3.Name = "Label3";
            this.Label3.Size = new System.Drawing.Size(187, 20);
            this.Label3.TabIndex = 120;
            this.Label3.Text = "Modelo";
            // 
            // Label6
            // 
            this.Label6.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.Label6.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.Label6.Location = new System.Drawing.Point(275, 133);
            this.Label6.Margin = new System.Windows.Forms.Padding(4, 4, 4, 1);
            this.Label6.Name = "Label6";
            this.Label6.Size = new System.Drawing.Size(115, 20);
            this.Label6.TabIndex = 126;
            this.Label6.Text = "Comboio";
            // 
            // bttnEdit
            // 
            this.bttnEdit.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bttnEdit.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.bttnEdit.Location = new System.Drawing.Point(356, 255);
            this.bttnEdit.Margin = new System.Windows.Forms.Padding(4);
            this.bttnEdit.Name = "bttnEdit";
            this.bttnEdit.Size = new System.Drawing.Size(128, 39);
            this.bttnEdit.TabIndex = 131;
            this.bttnEdit.Text = "Edit";
            this.bttnEdit.Click += new System.EventHandler(this.bttnEdit_Click_1);
            // 
            // bttnOK
            // 
            this.bttnOK.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bttnOK.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.bttnOK.Location = new System.Drawing.Point(168, 255);
            this.bttnOK.Margin = new System.Windows.Forms.Padding(4);
            this.bttnOK.Name = "bttnOK";
            this.bttnOK.Size = new System.Drawing.Size(128, 39);
            this.bttnOK.TabIndex = 133;
            this.bttnOK.Text = "OK";
            this.bttnOK.Visible = false;
            this.bttnOK.Click += new System.EventHandler(this.bttnOK_Click_1);
            // 
            // Label11
            // 
            this.Label11.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.Label11.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.Label11.Location = new System.Drawing.Point(42, 54);
            this.Label11.Margin = new System.Windows.Forms.Padding(4, 1, 4, 4);
            this.Label11.Name = "Label11";
            this.Label11.Size = new System.Drawing.Size(115, 20);
            this.Label11.TabIndex = 139;
            this.Label11.Text = "ID do Vagão";
            // 
            // txtid_vagao
            // 
            this.txtid_vagao.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtid_vagao.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.txtid_vagao.Location = new System.Drawing.Point(45, 82);
            this.txtid_vagao.Margin = new System.Windows.Forms.Padding(4);
            this.txtid_vagao.Name = "txtid_vagao";
            this.txtid_vagao.ReadOnly = true;
            this.txtid_vagao.Size = new System.Drawing.Size(112, 26);
            this.txtid_vagao.TabIndex = 140;
            // 
            // panel3
            // 
            this.panel3.AutoScroll = true;
            this.panel3.Controls.Add(this.txtid_vagao);
            this.panel3.Controls.Add(this.Label11);
            this.panel3.Controls.Add(this.bttnOK);
            this.panel3.Controls.Add(this.bttnEdit);
            this.panel3.Controls.Add(this.Label6);
            this.panel3.Controls.Add(this.Label3);
            this.panel3.Controls.Add(this.Label2);
            this.panel3.Controls.Add(this.Label1);
            this.panel3.Controls.Add(this.bttnCancel);
            this.panel3.Controls.Add(this.bttnAdd);
            this.panel3.Controls.Add(this.txtFK_Comboio);
            this.panel3.Controls.Add(this.txtmodelo);
            this.panel3.Controls.Add(this.txtcapacidade);
            this.panel3.Controls.Add(this.txtdescricao);
            this.panel3.Controls.Add(this.bttnDelete);
            this.panel3.Location = new System.Drawing.Point(350, 32);
            this.panel3.Margin = new System.Windows.Forms.Padding(4);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(877, 516);
            this.panel3.TabIndex = 3;
            // 
            // Form2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1227, 549);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.menuStrip1);
            this.Controls.Add(this.listBox1);
            this.Name = "Form2";
            this.Text = "Vagoes";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ListBox listBox1;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem fileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem loadVagoesToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
        private System.Windows.Forms.Button bttnDelete;
        internal System.Windows.Forms.TextBox txtdescricao;
        internal System.Windows.Forms.TextBox txtcapacidade;
        internal System.Windows.Forms.TextBox txtmodelo;
        internal System.Windows.Forms.TextBox txtFK_Comboio;
        internal System.Windows.Forms.Button bttnAdd;
        internal System.Windows.Forms.Button bttnCancel;
        internal System.Windows.Forms.Label Label1;
        internal System.Windows.Forms.Label Label2;
        internal System.Windows.Forms.Label Label3;
        internal System.Windows.Forms.Label Label6;
        internal System.Windows.Forms.Button bttnEdit;
        internal System.Windows.Forms.Button bttnOK;
        internal System.Windows.Forms.Label Label11;
        internal System.Windows.Forms.TextBox txtid_vagao;
        private System.Windows.Forms.Panel panel3;
    }
}