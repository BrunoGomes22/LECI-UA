
namespace forms_train
{
    partial class Form1
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

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel1 = new System.Windows.Forms.Panel();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.panel2 = new System.Windows.Forms.Panel();
            this.listBox1 = new System.Windows.Forms.ListBox();
            this.panel3 = new System.Windows.Forms.Panel();
            this.txtid_rota = new System.Windows.Forms.TextBox();
            this.Label11 = new System.Windows.Forms.Label();
            this.bttnOK = new System.Windows.Forms.Button();
            this.bttnEdit = new System.Windows.Forms.Button();
            this.Label6 = new System.Windows.Forms.Label();
            this.Label5 = new System.Windows.Forms.Label();
            this.Label3 = new System.Windows.Forms.Label();
            this.Label2 = new System.Windows.Forms.Label();
            this.Label1 = new System.Windows.Forms.Label();
            this.bttnCancel = new System.Windows.Forms.Button();
            this.bttnAdd = new System.Windows.Forms.Button();
            this.txtFK_Comboio = new System.Windows.Forms.TextBox();
            this.txtestacao_chegada = new System.Windows.Forms.TextBox();
            this.txtestacao_partida = new System.Windows.Forms.TextBox();
            this.txthorario_chegada = new System.Windows.Forms.TextBox();
            this.txthorario_partida = new System.Windows.Forms.TextBox();
            this.bttnDelete = new System.Windows.Forms.Button();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.fileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.loadCustomersToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.splitContainer1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 26);
            this.panel1.Margin = new System.Windows.Forms.Padding(4);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1174, 507);
            this.panel1.TabIndex = 0;
            // 
            // splitContainer1
            // 
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.Location = new System.Drawing.Point(0, 0);
            this.splitContainer1.Margin = new System.Windows.Forms.Padding(4);
            this.splitContainer1.Name = "splitContainer1";
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.panel2);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.panel3);
            this.splitContainer1.Size = new System.Drawing.Size(1174, 507);
            this.splitContainer1.SplitterDistance = 241;
            this.splitContainer1.SplitterWidth = 5;
            this.splitContainer1.TabIndex = 0;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.listBox1);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Margin = new System.Windows.Forms.Padding(4);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(241, 507);
            this.panel2.TabIndex = 0;
            // 
            // listBox1
            // 
            this.listBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.listBox1.FormattingEnabled = true;
            this.listBox1.ItemHeight = 16;
            this.listBox1.Location = new System.Drawing.Point(0, 0);
            this.listBox1.Margin = new System.Windows.Forms.Padding(4);
            this.listBox1.Name = "listBox1";
            this.listBox1.Size = new System.Drawing.Size(241, 507);
            this.listBox1.TabIndex = 1;
            this.listBox1.SelectedIndexChanged += new System.EventHandler(this.listBox1_SelectedIndexChanged);
            // 
            // panel3
            // 
            this.panel3.AutoScroll = true;
            this.panel3.Controls.Add(this.txtid_rota);
            this.panel3.Controls.Add(this.Label11);
            this.panel3.Controls.Add(this.bttnOK);
            this.panel3.Controls.Add(this.bttnEdit);
            this.panel3.Controls.Add(this.Label6);
            this.panel3.Controls.Add(this.Label5);
            this.panel3.Controls.Add(this.Label3);
            this.panel3.Controls.Add(this.Label2);
            this.panel3.Controls.Add(this.Label1);
            this.panel3.Controls.Add(this.bttnCancel);
            this.panel3.Controls.Add(this.bttnAdd);
            this.panel3.Controls.Add(this.txtFK_Comboio);
            this.panel3.Controls.Add(this.txtestacao_chegada);
            this.panel3.Controls.Add(this.txtestacao_partida);
            this.panel3.Controls.Add(this.txthorario_chegada);
            this.panel3.Controls.Add(this.txthorario_partida);
            this.panel3.Controls.Add(this.bttnDelete);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel3.Location = new System.Drawing.Point(0, 0);
            this.panel3.Margin = new System.Windows.Forms.Padding(4);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(928, 507);
            this.panel3.TabIndex = 0;
            // 
            // txtid_rota
            // 
            this.txtid_rota.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtid_rota.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.txtid_rota.Location = new System.Drawing.Point(45, 82);
            this.txtid_rota.Margin = new System.Windows.Forms.Padding(4);
            this.txtid_rota.Name = "txtid_rota";
            this.txtid_rota.ReadOnly = true;
            this.txtid_rota.Size = new System.Drawing.Size(112, 26);
            this.txtid_rota.TabIndex = 140;
            // 
            // Label11
            // 
            this.Label11.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.Label11.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.Label11.Location = new System.Drawing.Point(42, 55);
            this.Label11.Margin = new System.Windows.Forms.Padding(4, 1, 4, 4);
            this.Label11.Name = "Label11";
            this.Label11.Size = new System.Drawing.Size(96, 20);
            this.Label11.TabIndex = 139;
            this.Label11.Text = "ID da rota";
            // 
            // bttnOK
            // 
            this.bttnOK.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bttnOK.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.bttnOK.Location = new System.Drawing.Point(45, 292);
            this.bttnOK.Margin = new System.Windows.Forms.Padding(4);
            this.bttnOK.Name = "bttnOK";
            this.bttnOK.Size = new System.Drawing.Size(128, 39);
            this.bttnOK.TabIndex = 133;
            this.bttnOK.Text = "OK";
            this.bttnOK.Visible = false;
            this.bttnOK.Click += new System.EventHandler(this.bttnOK_Click);
            // 
            // bttnEdit
            // 
            this.bttnEdit.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bttnEdit.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.bttnEdit.Location = new System.Drawing.Point(233, 292);
            this.bttnEdit.Margin = new System.Windows.Forms.Padding(4);
            this.bttnEdit.Name = "bttnEdit";
            this.bttnEdit.Size = new System.Drawing.Size(128, 39);
            this.bttnEdit.TabIndex = 131;
            this.bttnEdit.Text = "Edit";
            this.bttnEdit.Click += new System.EventHandler(this.bttnEdit_Click);
            // 
            // Label6
            // 
            this.Label6.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.Label6.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.Label6.Location = new System.Drawing.Point(42, 205);
            this.Label6.Margin = new System.Windows.Forms.Padding(4, 4, 4, 1);
            this.Label6.Name = "Label6";
            this.Label6.Size = new System.Drawing.Size(115, 20);
            this.Label6.TabIndex = 126;
            this.Label6.Text = "Comboio";
            // 
            // Label5
            // 
            this.Label5.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.Label5.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.Label5.Location = new System.Drawing.Point(263, 133);
            this.Label5.Margin = new System.Windows.Forms.Padding(4, 4, 4, 1);
            this.Label5.Name = "Label5";
            this.Label5.Size = new System.Drawing.Size(183, 20);
            this.Label5.TabIndex = 122;
            this.Label5.Text = "Estação de chegada";
            // 
            // Label3
            // 
            this.Label3.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.Label3.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.Label3.Location = new System.Drawing.Point(42, 133);
            this.Label3.Margin = new System.Windows.Forms.Padding(4, 4, 4, 1);
            this.Label3.Name = "Label3";
            this.Label3.Size = new System.Drawing.Size(218, 20);
            this.Label3.TabIndex = 120;
            this.Label3.Text = "Estação de partida";
            // 
            // Label2
            // 
            this.Label2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.Label2.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.Label2.Location = new System.Drawing.Point(364, 60);
            this.Label2.Margin = new System.Windows.Forms.Padding(4, 4, 4, 1);
            this.Label2.Name = "Label2";
            this.Label2.Size = new System.Drawing.Size(198, 20);
            this.Label2.TabIndex = 118;
            this.Label2.Text = "Horário de chegada";
            // 
            // Label1
            // 
            this.Label1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.Label1.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.Label1.Location = new System.Drawing.Point(176, 60);
            this.Label1.Margin = new System.Windows.Forms.Padding(4, 1, 4, 4);
            this.Label1.Name = "Label1";
            this.Label1.Size = new System.Drawing.Size(180, 20);
            this.Label1.TabIndex = 116;
            this.Label1.Text = "Horário de partida";
            // 
            // bttnCancel
            // 
            this.bttnCancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bttnCancel.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.bttnCancel.Location = new System.Drawing.Point(132, 425);
            this.bttnCancel.Margin = new System.Windows.Forms.Padding(4);
            this.bttnCancel.Name = "bttnCancel";
            this.bttnCancel.Size = new System.Drawing.Size(128, 39);
            this.bttnCancel.TabIndex = 132;
            this.bttnCancel.Text = "Cancel";
            this.bttnCancel.Visible = false;
            this.bttnCancel.Click += new System.EventHandler(this.bttnCancel_Click);
            // 
            // bttnAdd
            // 
            this.bttnAdd.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bttnAdd.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.bttnAdd.Location = new System.Drawing.Point(45, 352);
            this.bttnAdd.Margin = new System.Windows.Forms.Padding(4);
            this.bttnAdd.Name = "bttnAdd";
            this.bttnAdd.Size = new System.Drawing.Size(128, 39);
            this.bttnAdd.TabIndex = 130;
            this.bttnAdd.Text = "Add";
            this.bttnAdd.Click += new System.EventHandler(this.bttnAdd_Click);
            // 
            // txtFK_Comboio
            // 
            this.txtFK_Comboio.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtFK_Comboio.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.txtFK_Comboio.Location = new System.Drawing.Point(45, 227);
            this.txtFK_Comboio.Margin = new System.Windows.Forms.Padding(4, 1, 4, 4);
            this.txtFK_Comboio.Name = "txtFK_Comboio";
            this.txtFK_Comboio.ReadOnly = true;
            this.txtFK_Comboio.Size = new System.Drawing.Size(159, 26);
            this.txtFK_Comboio.TabIndex = 127;
            // 
            // txtestacao_chegada
            // 
            this.txtestacao_chegada.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtestacao_chegada.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.txtestacao_chegada.Location = new System.Drawing.Point(266, 155);
            this.txtestacao_chegada.Margin = new System.Windows.Forms.Padding(4, 1, 4, 4);
            this.txtestacao_chegada.Name = "txtestacao_chegada";
            this.txtestacao_chegada.ReadOnly = true;
            this.txtestacao_chegada.Size = new System.Drawing.Size(189, 26);
            this.txtestacao_chegada.TabIndex = 123;
            // 
            // txtestacao_partida
            // 
            this.txtestacao_partida.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtestacao_partida.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.txtestacao_partida.Location = new System.Drawing.Point(45, 155);
            this.txtestacao_partida.Margin = new System.Windows.Forms.Padding(4, 1, 4, 4);
            this.txtestacao_partida.Name = "txtestacao_partida";
            this.txtestacao_partida.ReadOnly = true;
            this.txtestacao_partida.Size = new System.Drawing.Size(184, 26);
            this.txtestacao_partida.TabIndex = 121;
            // 
            // txthorario_chegada
            // 
            this.txthorario_chegada.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txthorario_chegada.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.txthorario_chegada.Location = new System.Drawing.Point(367, 82);
            this.txthorario_chegada.Margin = new System.Windows.Forms.Padding(4, 1, 4, 4);
            this.txthorario_chegada.Name = "txthorario_chegada";
            this.txthorario_chegada.ReadOnly = true;
            this.txthorario_chegada.Size = new System.Drawing.Size(164, 26);
            this.txthorario_chegada.TabIndex = 119;
            // 
            // txthorario_partida
            // 
            this.txthorario_partida.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txthorario_partida.Font = new System.Drawing.Font("Verdana", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.txthorario_partida.Location = new System.Drawing.Point(179, 82);
            this.txthorario_partida.Margin = new System.Windows.Forms.Padding(4);
            this.txthorario_partida.Name = "txthorario_partida";
            this.txthorario_partida.ReadOnly = true;
            this.txthorario_partida.Size = new System.Drawing.Size(160, 26);
            this.txthorario_partida.TabIndex = 117;
            // 
            // bttnDelete
            // 
            this.bttnDelete.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bttnDelete.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(161)));
            this.bttnDelete.Location = new System.Drawing.Point(233, 352);
            this.bttnDelete.Margin = new System.Windows.Forms.Padding(4);
            this.bttnDelete.Name = "bttnDelete";
            this.bttnDelete.Size = new System.Drawing.Size(128, 39);
            this.bttnDelete.TabIndex = 136;
            this.bttnDelete.Text = "Delete";
            this.bttnDelete.Click += new System.EventHandler(this.bttnDelete_Click);
            // 
            // menuStrip1
            // 
            this.menuStrip1.Font = new System.Drawing.Font("Tahoma", 9F);
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fileToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1174, 26);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // fileToolStripMenuItem
            // 
            this.fileToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.loadCustomersToolStripMenuItem,
            this.toolStripSeparator1,
            this.exitToolStripMenuItem});
            this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
            this.fileToolStripMenuItem.Size = new System.Drawing.Size(42, 24);
            this.fileToolStripMenuItem.Text = "File";
            // 
            // loadCustomersToolStripMenuItem
            // 
            this.loadCustomersToolStripMenuItem.Name = "loadCustomersToolStripMenuItem";
            this.loadCustomersToolStripMenuItem.Size = new System.Drawing.Size(224, 26);
            this.loadCustomersToolStripMenuItem.Text = "Load Rotas";
            this.loadCustomersToolStripMenuItem.Click += new System.EventHandler(this.loadCustomersToolStripMenuItem_Click);
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
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1174, 533);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "Form1";
            this.Text = "Rotas";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.panel1.ResumeLayout(false);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.ListBox listBox1;
        private System.Windows.Forms.Panel panel3;
        internal System.Windows.Forms.TextBox txtid_rota;
        internal System.Windows.Forms.Label Label11;
        internal System.Windows.Forms.Button bttnOK;
        internal System.Windows.Forms.Button bttnEdit;
        internal System.Windows.Forms.Label Label6;
        internal System.Windows.Forms.Label Label5;
        internal System.Windows.Forms.Label Label3;
        internal System.Windows.Forms.Label Label2;
        internal System.Windows.Forms.Label Label1;
        internal System.Windows.Forms.Button bttnCancel;
        internal System.Windows.Forms.Button bttnAdd;
        internal System.Windows.Forms.TextBox txtFK_Comboio;
        internal System.Windows.Forms.TextBox txtestacao_chegada;
        internal System.Windows.Forms.TextBox txtestacao_partida;
        internal System.Windows.Forms.TextBox txthorario_chegada;
        internal System.Windows.Forms.TextBox txthorario_partida;
        private System.Windows.Forms.Button bttnDelete;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem fileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem loadCustomersToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
    }
}

