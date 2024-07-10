using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace forms_train
{
    public partial class Form4 : Form
    {
        private SqlConnection cn;
        private int currentManuntencao;
        private bool adding;
        public Form4()
        {
            InitializeComponent();
        }

        private void Form4_Load(object sender, EventArgs e)
        {
            cn = getSGBDConnection();
        }

        private SqlConnection getSGBDConnection()
        {
            String dbServer = "tcp: mednat.ieeta.pt\\SQLSERVER,8101";
            String dbName = "p7g1";
            String userName = "p7g1";
            String userPass = "Jafunfa2023";
            return new SqlConnection("Data Source = " + dbServer + " ;" + "Initial Catalog = " + dbName +
                                                        "; uid = " + userName + ";" + "password = " + userPass);
        }

        private bool verifySGBDConnection()
        {
            if (cn == null)
                cn = getSGBDConnection();

            if (cn.State != ConnectionState.Open)
                cn.Open();

            return cn.State == ConnectionState.Open;
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex >= 0)
            {
                currentManuntencao = listBox1.SelectedIndex;
                ShowManuntencao();
            }
        }

        private void loadManuntencoesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand("SELECT * FROM train.Manuntencao", cn);
            SqlDataReader reader = cmd.ExecuteReader();
            listBox1.Items.Clear();

            while (reader.Read())
            {
                Manuntencao M = new Manuntencao();
                M.id_manuntencao = reader["id_manuntencao"].ToString();
                M.descricao = reader["descricao"].ToString();
                M.data_manuntencao = reader["data_manuntencao"].ToString();
                M.FK_Comboio = reader["FK_Comboio"].ToString();
                listBox1.Items.Add(M);
            }

            cn.Close();

            currentManuntencao = 0;
            ShowManuntencao();
        }

        private void SubmitManuntencao(Manuntencao M)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT train.Manuntencao (id_manuntencao, descricao, data_manuntencao, FK_Comboio) " + "VALUES (@id_manuntencao, @descricao, @data_manuntencao, @FK_Comboio) ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id_manuntencao", M.id_manuntencao);
            cmd.Parameters.AddWithValue("@descricao", M.descricao);
            cmd.Parameters.AddWithValue("@data_manuntencao", M.data_manuntencao);
            cmd.Parameters.AddWithValue("@FK_Comboio", M.FK_Comboio);
            cmd.Connection = cn;

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to update manutenção in database. \n ERROR MESSAGE: \n" + ex.Message);
            }
            finally
            {
                cn.Close();
            }
        }

        private void UpdateManuntecao(Manuntencao M)
        {
            int rows = 0;  //breakpoint?

            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "UPDATE train.Manuntencao " + "SET descricao = @descricao, " + "    data_manuntencao = @data_manuntencao, " + "    FK_Comboio = @FK_Comboio " + "WHERE id_manuntencao = @id_manuntencao";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id_manuntencao", M.id_manuntencao);
            cmd.Parameters.AddWithValue("@descricao", M.descricao);
            cmd.Parameters.AddWithValue("@data_manuntencao", M.data_manuntencao);
            cmd.Parameters.AddWithValue("@FK_Comboio", M.FK_Comboio);
            cmd.Connection = cn;

            try
            {
                rows = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to update manuntenção in database. \n ERROR MESSAGE: \n" + ex.Message);
            }
            finally
            {
                if (rows == 1)
                    MessageBox.Show("Update OK");
                else
                    MessageBox.Show("Update NOT OK");

                cn.Close();
            }
        }

        private void RemoveManuntencao(string id_manuntencao)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "DELETE train.Manuntencao WHERE id_manuntencao=@id_manuntencao ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id_manuntencao", id_manuntencao);
            cmd.Connection = cn;

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to delete manutenção in database. \n ERROR MESSAGE: \n" + ex.Message);
            }
            finally
            {
                cn.Close();
            }
        }

        // Helper routines
        public void LockControls()
        {
            txtid_manuntencao.ReadOnly = true;
            txtdescricao.ReadOnly = true;
            txtdata_manuntencao.ReadOnly = true;
            txtFK_Comboio.ReadOnly = true;
        }

        public void UnlockControls()
        {
            txtid_manuntencao.ReadOnly = false;
            txtdescricao.ReadOnly = false;
            txtdata_manuntencao.ReadOnly = false;
            txtFK_Comboio.ReadOnly = false;
        }

        public void ShowButtons()
        {
            LockControls();
            bttnAdd.Visible = true;
            bttnDelete.Visible = true;
            bttnEdit.Visible = true;
            bttnOK.Visible = false;
            bttnCancel.Visible = false;
        }

        public void ClearFields()
        {
            txtid_manuntencao.Text = "";
            txtdescricao.Text = "";
            txtdata_manuntencao.Text = "";
            txtFK_Comboio.Text = "";
        }

        public void ShowManuntencao()
        {
            if (listBox1.Items.Count == 0 | currentManuntencao < 0)
                return;
            Manuntencao manuntencao = new Manuntencao();
            manuntencao = (Manuntencao)listBox1.Items[currentManuntencao];
            txtid_manuntencao.Text = manuntencao.id_manuntencao;
            txtdescricao.Text = manuntencao.descricao;
            txtdata_manuntencao.Text = manuntencao.data_manuntencao;
            txtFK_Comboio.Text = manuntencao.FK_Comboio;

        }

        public void HideButtons()
        {
            UnlockControls();
            bttnAdd.Visible = false;
            bttnDelete.Visible = false;
            bttnEdit.Visible = false;
            bttnOK.Visible = true;
            bttnCancel.Visible = true;
        }

        private bool SaveManuntencao()
        {
            Manuntencao manuntencao = new Manuntencao();
            try
            {
                manuntencao.id_manuntencao = txtid_manuntencao.Text;
                manuntencao.descricao = txtdescricao.Text;
                manuntencao.data_manuntencao = txtdata_manuntencao.Text;
                manuntencao.FK_Comboio = txtFK_Comboio.Text;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            if (adding)
            {
                SubmitManuntencao(manuntencao);
                listBox1.Items.Add(manuntencao);
            }
            else
            {
                UpdateManuntecao(manuntencao);
                listBox1.Items[currentManuntencao] = manuntencao;
            }
            return true;
        }

        private void bttnAdd_Click(object sender, EventArgs e)
        {
            adding = true;
            ClearFields();
            HideButtons();
            listBox1.Enabled = false;
        }

        private void bttnCancel_Click(object sender, EventArgs e)
        {
            listBox1.Enabled = true;
            if (listBox1.Items.Count > 0)
            {
                currentManuntencao = listBox1.SelectedIndex;
                if (currentManuntencao < 0)
                    currentManuntencao = 0;
                ShowManuntencao();
            }
            else
            {
                ClearFields();
                LockControls();
            }
            ShowButtons();
        }

        private void bttnEdit_Click(object sender, EventArgs e)
        {
            currentManuntencao = listBox1.SelectedIndex;
            if (currentManuntencao < 0)
            {
                MessageBox.Show("Please select a manutenção to edit");
                return;
            }
            adding = false;
            HideButtons();
            listBox1.Enabled = false;
        }

        private void bttnOK_Click(object sender, EventArgs e)
        {
            try
            {
                SaveManuntencao();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            listBox1.Enabled = true;
            int idx = listBox1.FindString(txtid_manuntencao.Text);
            listBox1.SelectedIndex = idx;
            ShowButtons();
        }

        private void bttnDelete_Click(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex > -1)
            {
                try
                {
                    RemoveManuntencao(((Manuntencao)listBox1.SelectedItem).id_manuntencao);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    return;
                }
                listBox1.Items.RemoveAt(listBox1.SelectedIndex);
                if (currentManuntencao == listBox1.Items.Count)
                    currentManuntencao = listBox1.Items.Count - 1;
                if (currentManuntencao == -1)
                {
                    ClearFields();
                    MessageBox.Show("There are no more manutenções");
                }
                else
                {
                    ShowManuntencao();
                }
            }
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

    }
}
