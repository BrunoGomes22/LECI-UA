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
    public partial class Form1 : Form
    {
        private SqlConnection cn;
        private int currentRota;
        private bool adding;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
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
                currentRota = listBox1.SelectedIndex;
                ShowRota();
            }
        }

        private void loadCustomersToolStripMenuItem_Click(object sender, EventArgs e) //carregar tabela das rotas
        {
            if (!verifySGBDConnection())
                return;

            SqlCommand cmd = new SqlCommand("SELECT * FROM train.Rota", cn);
            SqlDataReader reader = cmd.ExecuteReader();
            listBox1.Items.Clear();

            while (reader.Read())
            {
                Rota R = new Rota();
                R.id_rota = reader["id_rota"].ToString();
                R.horario_partida = reader["horario_partida"].ToString();
                R.horario_chegada = reader["horario_chegada"].ToString();
                R.estacao_partida = reader["estacao_partida"].ToString();
                R.estacao_chegada = reader["estacao_chegada"].ToString();
                R.FK_Comboio = reader["FK_Comboio"].ToString();
                listBox1.Items.Add(R);
            }

            cn.Close();


            currentRota = 0;
            ShowRota();
        }

        private void SubmitRota(Rota R)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT train.Rota (id_rota, horario_partida, horario_chegada, estacao_partida, estacao_chegada, FK_Comboio) " + "VALUES (@id_rota, @horario_partida, @horario_chegada, @estacao_partida, @estacao_chegada, @FK_Comboio) ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id_rota", R.id_rota);
            cmd.Parameters.AddWithValue("@horario_partida", R.horario_partida);
            cmd.Parameters.AddWithValue("@horario_chegada", R.horario_chegada);
            cmd.Parameters.AddWithValue("@estacao_partida", R.estacao_partida);
            cmd.Parameters.AddWithValue("@estacao_chegada", R.estacao_chegada);
            cmd.Parameters.AddWithValue("@FK_Comboio", R.FK_Comboio);
            cmd.Connection = cn;

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to update route in database. \n ERROR MESSAGE: \n" + ex.Message);
            }
            finally
            {
                cn.Close();
            }
        }

        private void UpdateRota(Rota R)
        {
            int rows = 0;  //breakpoint?

            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "UPDATE train.Rota " + "SET horario_partida = @horario_partida, " + "    horario_chegada = @horario_chegada, " + "    estacao_partida = @estacao_partida, " + "    estacao_chegada = @estacao_chegada, " + "    FK_Comboio = @FK_Comboio "  + "WHERE id_rota = @id_rota";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id_rota", R.id_rota);
            cmd.Parameters.AddWithValue("@horario_partida", R.horario_partida);
            cmd.Parameters.AddWithValue("@horario_chegada", R.horario_chegada);
            cmd.Parameters.AddWithValue("@estacao_partida", R.estacao_partida);
            cmd.Parameters.AddWithValue("@estacao_chegada", R.estacao_chegada);
            cmd.Parameters.AddWithValue("@FK_Comboio", R.FK_Comboio);
            cmd.Connection = cn;

            try
            {
                rows = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to update route in database. \n ERROR MESSAGE: \n" + ex.Message);
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

        private void RemoveRota(string id_rota)
        {
            if (!verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "DELETE train.Rota WHERE id_rota=@id_rota ";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id_rota", id_rota);
            cmd.Connection = cn;

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to delete route in database. \n ERROR MESSAGE: \n" + ex.Message);
            }
            finally
            {
                cn.Close();
            }
        }

        // Helper routines
        public void LockControls()
        {
            txtid_rota.ReadOnly = true;
            txthorario_partida.ReadOnly = true;
            txthorario_chegada.ReadOnly = true;
            txtestacao_partida.ReadOnly = true;
            txtestacao_chegada.ReadOnly = true;
            txtFK_Comboio.ReadOnly = true;
        }

        public void UnlockControls()
        {
            txtid_rota.ReadOnly = false;
            txthorario_partida.ReadOnly = false;
            txthorario_chegada.ReadOnly = false;
            txtestacao_partida.ReadOnly = false;
            txtestacao_chegada.ReadOnly = false;
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
            txtid_rota.Text = "";
            txthorario_partida.Text = "";
            txthorario_chegada.Text = "";
            txtestacao_partida.Text = "";
            txtestacao_chegada.Text = "";
            txtFK_Comboio.Text = "";
        }

        public void ShowRota()
        {
            if (listBox1.Items.Count == 0 | currentRota < 0)
                return;
            Rota rota = new Rota();
            rota = (Rota)listBox1.Items[currentRota];
            txtid_rota.Text = rota.id_rota;
            txthorario_partida.Text = rota.horario_partida;
            txthorario_chegada.Text = rota.horario_chegada;
            txtestacao_partida.Text = rota.estacao_partida;
            txtestacao_chegada.Text = rota.estacao_chegada;
            txtFK_Comboio.Text = rota.FK_Comboio;

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

        private bool SaveRota()
        {
            Rota rota = new Rota();
            try
            {
                rota.id_rota = txtid_rota.Text;
                rota.horario_partida = txthorario_partida.Text;
                rota.horario_chegada = txthorario_chegada.Text;
                rota.estacao_partida = txtestacao_partida.Text;
                rota.estacao_chegada = txtestacao_chegada.Text;
                rota.FK_Comboio = txtFK_Comboio.Text;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            if (adding)
            {
                SubmitRota(rota);
                listBox1.Items.Add(rota);
            }
            else
            {
                UpdateRota(rota);
                listBox1.Items[currentRota] = rota;
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
                currentRota = listBox1.SelectedIndex;
                if (currentRota < 0)
                    currentRota = 0;
                ShowRota();
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
            currentRota = listBox1.SelectedIndex;
            if (currentRota < 0)
            {
                MessageBox.Show("Please select a route to edit");
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
                SaveRota();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            listBox1.Enabled = true;
            int idx = listBox1.FindString(txtid_rota.Text);
            listBox1.SelectedIndex = idx;
            ShowButtons();
        }

        private void bttnDelete_Click(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex > -1)
            {
                try
                {
                    RemoveRota(((Rota)listBox1.SelectedItem).id_rota);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    return;
                }
                listBox1.Items.RemoveAt(listBox1.SelectedIndex);
                if (currentRota == listBox1.Items.Count)
                    currentRota = listBox1.Items.Count - 1;
                if (currentRota == -1)
                {
                    ClearFields();
                    MessageBox.Show("There are no more routes");
                }
                else
                {
                    ShowRota();
                }
            }
        }


        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

    }
}
