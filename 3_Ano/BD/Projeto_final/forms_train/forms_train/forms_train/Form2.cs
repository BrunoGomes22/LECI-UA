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
    public partial class Form2 : Form
    {
        private SqlConnection cn;
        private int currentVagao;
        private bool adding;
        public Form2()
        {
            InitializeComponent();

        }

        private void Form2_Load(object sender, EventArgs e)
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

        private void listBox1_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex >= 0)
            {
                currentVagao = listBox1.SelectedIndex;
                ShowVagao();
            }
        }


        private void loadVagoesToolStripMenuItem_Click_1(object sender, EventArgs e) //carregar tabela dos vagoes
        {
            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand("SELECT train.Vagao.id_vagao, descricao, capacidade, FK_Comboio, modelo FROM train.Vagao, train.Modelo_vagao WHERE  train.Vagao.id_vagao = train.Modelo_vagao.id_vagao;", cn);
            SqlDataReader reader = cmd.ExecuteReader();
            listBox1.Items.Clear();

            while (reader.Read())
            {
                Vagao V = new Vagao();
                V.id_vagao = reader["id_vagao"].ToString();
                V.descricao = reader["descricao"].ToString();
                V.capacidade = reader["capacidade"].ToString();
                V.FK_Comboio = reader["FK_Comboio"].ToString();
                V.modelo = reader["modelo"].ToString();
                listBox1.Items.Add(V);
            }

            cn.Close();


            currentVagao = 0;
            ShowVagao();
        }

        private void SubmitVagao(Vagao V)
        {
            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT INTO train.Vagao (id_vagao, descricao, capacidade, FK_Comboio) " +
                              "VALUES (@id_vagao, @descricao, @capacidade, @FK_Comboio)";

            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id_vagao", V.id_vagao);
            cmd.Parameters.AddWithValue("@descricao", V.descricao);
            cmd.Parameters.AddWithValue("@capacidade", V.capacidade);


            if (V.FK_Comboio == "")
                cmd.Parameters.AddWithValue("@FK_Comboio", DBNull.Value);
            else
                cmd.Parameters.AddWithValue("@FK_Comboio", V.FK_Comboio);

            cmd.Connection = cn;

            try
            {
                cmd.ExecuteNonQuery();

                // Insert into Modelo_vagao table
                cmd.CommandText = "INSERT INTO train.Modelo_vagao (id_vagao, modelo) " +
                                  "VALUES (@id_vagao, @modelo)";

                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id_vagao", V.id_vagao);
                cmd.Parameters.AddWithValue("@modelo", V.modelo);

                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to insert vagao into database.\nERROR MESSAGE:\n" + ex.Message);
            }
            finally
            {
                cn.Close();
            }
        }




        private void UpdateVagao(Vagao V)
        {
            int rows = 0;

            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;

            try
            {
                // Update Vagao table
                cmd.CommandText = "UPDATE train.Vagao " +
                    "SET descricao = @descricao, capacidade = @capacidade, FK_Comboio = @FK_Comboio " +
                    "WHERE id_vagao = @id_vagao";
                cmd.Parameters.AddWithValue("@descricao", V.descricao);
                cmd.Parameters.AddWithValue("@capacidade", V.capacidade);
                cmd.Parameters.AddWithValue("@FK_Comboio", V.FK_Comboio);
                cmd.Parameters.AddWithValue("@id_vagao", V.id_vagao);
                rows += cmd.ExecuteNonQuery();

                // Update Modelo_vagao table
                cmd.CommandText = "UPDATE train.Modelo_vagao " +
                    "SET modelo = @modelo " +
                    "WHERE id_vagao = @id_vagao";
                cmd.Parameters.AddWithValue("@modelo", V.modelo);
                rows += cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to update vagao in database. \n ERROR MESSAGE: \n" + ex.Message);
            }
            finally
            {
                if (rows > 0)
                    MessageBox.Show("Update OK");
                else
                    MessageBox.Show("Update NOT OK");

                cn.Close();
            }
        }



        private void RemoveVagao(string id_vagao)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "DELETE FROM train.Modelo_vagao WHERE id_vagao = @id_vagao";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id_vagao", id_vagao);
            cmd.Connection = cn;

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to delete vagao in database. \n ERROR MESSAGE: \n" + ex.Message);
            }

            cmd.CommandText = "DELETE FROM train.Vagao WHERE id_vagao = @id_vagao";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id_vagao", id_vagao);

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to delete vagao in database. \n ERROR MESSAGE: \n" + ex.Message);
            }
            finally
            {
                cn.Close();
            }
        }


        // Helper routines
        public void LockControls()
        {
            txtid_vagao.ReadOnly = true;
            txtdescricao.ReadOnly = true;
            txtcapacidade.ReadOnly = true;
            txtFK_Comboio.ReadOnly = true;
            txtmodelo.ReadOnly = true;
        }

        public void UnlockControls()
        {
            txtid_vagao.ReadOnly = false;
            txtdescricao.ReadOnly = false;
            txtcapacidade.ReadOnly = false;
            txtFK_Comboio.ReadOnly = false;
            txtmodelo.ReadOnly = false;
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
            txtid_vagao.Text = "";
            txtdescricao.Text = "";
            txtcapacidade.Text = "";
            txtFK_Comboio.Text = "";
            txtmodelo.Text = "";
        }

        public void ShowVagao()
        {
            if (listBox1.Items.Count == 0 | currentVagao < 0)
                return;
            Vagao vagao = new Vagao();
            vagao = (Vagao)listBox1.Items[currentVagao];
            txtid_vagao.Text = vagao.id_vagao;
            txtdescricao.Text = vagao.descricao;
            txtcapacidade.Text = vagao.capacidade;
            txtFK_Comboio.Text = vagao.FK_Comboio;
            txtmodelo.Text = vagao.modelo;
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

        private bool SaveVagao()
        {
            Vagao vagao = new Vagao();
            try
            {
                vagao.id_vagao = txtid_vagao.Text;
                vagao.descricao = txtdescricao.Text;
                vagao.capacidade = txtcapacidade.Text;
                vagao.FK_Comboio = txtFK_Comboio.Text;
                vagao.modelo = txtmodelo.Text;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            if (adding)
            {
                SubmitVagao(vagao);
                listBox1.Items.Add(vagao);
            }
            else
            {
                UpdateVagao(vagao);
                listBox1.Items[currentVagao] = vagao;
            }
            return true;
        }

        private void bttnAdd_Click_1(object sender, EventArgs e)
        {
            adding = true;
            ClearFields();
            HideButtons();
            listBox1.Enabled = false;
        }

        private void bttnCancel_Click_1(object sender, EventArgs e)
        {
            listBox1.Enabled = true;
            if (listBox1.Items.Count > 0)
            {
                currentVagao = listBox1.SelectedIndex;
                if (currentVagao < 0)
                    currentVagao = 0;
                ShowVagao();
            }
            else
            {
                ClearFields();
                LockControls();
            }
            ShowButtons();
        }

        private void bttnEdit_Click_1(object sender, EventArgs e)
        {
            currentVagao = listBox1.SelectedIndex;
            if (currentVagao < 0)
            {
                MessageBox.Show("Please select a vagao to edit");
                return;
            }
            adding = false;
            HideButtons();
            listBox1.Enabled = false;
        }

        private void bttnOK_Click_1(object sender, EventArgs e)
        {
            try
            {
                SaveVagao();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            listBox1.Enabled = true;
            int idx = listBox1.FindString(txtid_vagao.Text);
            listBox1.SelectedIndex = idx;
            ShowButtons();
        }

       
        private void bttnDelete_Click_1(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex > -1)
            {
                try
                {
                    RemoveVagao(((Vagao)listBox1.SelectedItem).id_vagao);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    return;
                }
                listBox1.Items.RemoveAt(listBox1.SelectedIndex);
                if (currentVagao == listBox1.Items.Count)
                    currentVagao = listBox1.Items.Count - 1;
                if (currentVagao == -1)
                {
                    ClearFields();
                    MessageBox.Show("There are no more vagoes");
                }
                else
                {
                    ShowVagao();
                }
            }
        }

        private void exitToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            Application.Exit();
        }

    }
}
