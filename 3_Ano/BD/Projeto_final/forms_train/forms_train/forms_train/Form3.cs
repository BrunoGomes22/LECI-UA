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
    public partial class Form3 : Form
    {
        private SqlConnection cn;
        private int currentComboio;
        private bool adding;
        public Form3()
        {
            InitializeComponent();
        }

        private void Form3_Load(object sender, EventArgs e)
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
                currentComboio = listBox1.SelectedIndex;
                ShowComboio();
            }
        }

        private void loadComboiosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand("SELECT train.Comboio.id_comboio, capacidade, data_fabrico, modelo FROM train.Comboio, train.Modelo_Comboio WHERE train.Comboio.id_comboio = train.Modelo_Comboio.id_comboio;", cn);
            SqlDataReader reader = cmd.ExecuteReader();
            listBox1.Items.Clear();

            while (reader.Read())
            {
                Comboio C = new Comboio();
                C.id_comboio = reader["id_comboio"].ToString();
                C.capacidade = reader["capacidade"].ToString();
                C.data_fabrico = reader["data_fabrico"].ToString();
                C.modelo = reader["modelo"].ToString();
                listBox1.Items.Add(C);
            }

            cn.Close();


            currentComboio = 0;
            ShowComboio();
        }

        private void SubmitComboio(Comboio C)
        {
            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT INTO train.Comboio (id_comboio, capacidade, data_fabrico) " +
                              "VALUES (@id_comboio, @capacidade, @data_fabrico)";

            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id_comboio", C.id_comboio);
            cmd.Parameters.AddWithValue("@capacidade", C.capacidade);
            cmd.Parameters.AddWithValue("@data_fabrico", C.data_fabrico);

            cmd.Connection = cn;

            try
            {
                cmd.ExecuteNonQuery();

                // Insert into Modelo_Comboio table
                cmd.CommandText = "INSERT INTO train.Modelo_Comboio (id_comboio, modelo) " +
                                  "VALUES (@id_comboio, @modelo)";

                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id_comboio", C.id_comboio);
                cmd.Parameters.AddWithValue("@modelo", C.modelo);

                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to insert comboio into database.\nERROR MESSAGE:\n" + ex.Message);
            }
            finally
            {
                cn.Close();
            }
        }

        private void UpdateComboio(Comboio C)
        {
            int rows = 0;

            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;

            try
            {
                // Update Comboio table
                cmd.CommandText = "UPDATE train.Comboio " +
                    "SET capacidade = @capacidade, data_fabrico = @data_fabrico " +
                    "WHERE id_comboio = @id_comboio";
                cmd.Parameters.AddWithValue("@capacidade", C.capacidade);
                cmd.Parameters.AddWithValue("@data_fabrico", C.data_fabrico);
                cmd.Parameters.AddWithValue("@id_comboio", C.id_comboio);
                rows += cmd.ExecuteNonQuery();

                // Update Modelo_Comboio table
                cmd.CommandText = "UPDATE train.Modelo_Comboio " +
                    "SET modelo = @modelo " +
                    "WHERE id_comboio = @id_comboio";
                cmd.Parameters.AddWithValue("@modelo", C.modelo);
                rows += cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to update comboio in database. \n ERROR MESSAGE: \n" + ex.Message);
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

        private void RemoveComboio(string id_comboio)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "DELETE FROM train.Modelo_Comboio WHERE id_comboio = @id_comboio";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id_comboio", id_comboio);
            cmd.Connection = cn;

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to delete comboio in database. \n ERROR MESSAGE: \n" + ex.Message);
            }

            cmd.CommandText = "DELETE FROM train.Comboio WHERE id_comboio = @id_comboio";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id_comboio", id_comboio);

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to delete comboio in database. \n ERROR MESSAGE: \n" + ex.Message);
            }
            finally
            {
                cn.Close();
            }
        }

        // Helper routines
        public void LockControls()
        {
            txtid_comboio.ReadOnly = true;
            txtcapacidade.ReadOnly = true;
            txtdata_fabrico.ReadOnly = true;
            txtmodelo.ReadOnly = true;
        }

        public void UnlockControls()
        {
            txtid_comboio.ReadOnly = false;
            txtcapacidade.ReadOnly = false;
            txtdata_fabrico.ReadOnly = false;
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
            txtid_comboio.Text = "";
            txtcapacidade.Text = "";
            txtdata_fabrico.Text = "";
            txtmodelo.Text = "";
        }

        public void ShowComboio()
        {
            if (listBox1.Items.Count == 0 | currentComboio < 0)
                return;
            Comboio comboio = new Comboio();
            comboio = (Comboio)listBox1.Items[currentComboio];
            txtid_comboio.Text = comboio.id_comboio;
            txtcapacidade.Text = comboio.capacidade;
            txtdata_fabrico.Text = comboio.data_fabrico;
            txtmodelo.Text = comboio.modelo;
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

        private bool SaveComboio()
        {
            Comboio comboio = new Comboio();
            try
            {
                comboio.id_comboio = txtid_comboio.Text;
                comboio.capacidade = txtcapacidade.Text;
                comboio.data_fabrico = txtdata_fabrico.Text;
                comboio.modelo = txtmodelo.Text;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            if (adding)
            {
                SubmitComboio(comboio);
                listBox1.Items.Add(comboio);
            }
            else
            {
                UpdateComboio(comboio);
                listBox1.Items[currentComboio] = comboio;
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
                currentComboio = listBox1.SelectedIndex;
                if (currentComboio < 0)
                    currentComboio = 0;
                ShowComboio();
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
            currentComboio = listBox1.SelectedIndex;
            if (currentComboio < 0)
            {
                MessageBox.Show("Please select a comboio to edit");
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
                SaveComboio();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            listBox1.Enabled = true;
            int idx = listBox1.FindString(txtid_comboio.Text);
            listBox1.SelectedIndex = idx;
            ShowButtons();
        }

        private void bttnDelete_Click(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex > -1)
            {
                try
                {
                    RemoveComboio(((Comboio)listBox1.SelectedItem).id_comboio);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    return;
                }
                listBox1.Items.RemoveAt(listBox1.SelectedIndex);
                if (currentComboio == listBox1.Items.Count)
                    currentComboio = listBox1.Items.Count - 1;
                if (currentComboio == -1)
                {
                    ClearFields();
                    MessageBox.Show("There are no more comboios");
                }
                else
                {
                    ShowComboio();
                }
            }
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
