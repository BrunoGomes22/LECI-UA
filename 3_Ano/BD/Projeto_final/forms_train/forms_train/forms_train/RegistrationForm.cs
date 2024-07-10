using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Security.Cryptography;


namespace forms_train
{
    public partial class RegistrationForm : Form
    {
        private SqlConnection cn;
        public RegistrationForm()
        {
            InitializeComponent();
        }

        private void RegistrationForm_Load(object sender, EventArgs e)
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

        private bool ValidateInputs()
        {
            if(string.IsNullOrEmpty(txtFirstName.Text) || string.IsNullOrEmpty(txtLastName.Text) || string.IsNullOrEmpty(txtUsername.Text) || string.IsNullOrEmpty(txtPassword.Text))
            {
                MessageBox.Show("Por favor, preencha todos os campos.");
                return false;
            }
            return true;
        }

        private void btnRegister_Click(object sender, EventArgs e)
        {

            if (!ValidateInputs())
                return;

            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            if(InsertRegistrationData(firstName, lastName, username, password))
            {
                MessageBox.Show("Registo da conta realizado com sucesso!");
                this.Close();
            }
            else
            {
                MessageBox.Show("Operação de registo falhada. Tente novamente.");
            }
        }

        private bool InsertRegistrationData(string firstName, string lastName, string username, string password)
        {
            if (!verifySGBDConnection())
            {
                return false;
            }

            string salt = GenerateSalt();

            SqlCommand cmd = new SqlCommand("INSERT INTO train.Gestor (firstname, lastname, username, pass, salt) VALUES (@firstName, @lastName, @username, @password, @salt);", cn);
            cmd.Parameters.AddWithValue("@firstName", firstName);
            cmd.Parameters.AddWithValue("@lastName", lastName);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", PasswordHelper.HashPassword(password, salt));
            cmd.Parameters.AddWithValue("@salt", salt);

            try
            {
                int rowsAffected = cmd.ExecuteNonQuery();
                return rowsAffected > 0;
            }
            catch(SqlException ex)
            {
                Console.WriteLine("Erro a inserir dados de registo." + ex.Message);
                return false;
            }
        }

        private string GenerateSalt()
        {
            using (RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider())
            {
                byte[] saltBytes = new byte[16];
                rng.GetBytes(saltBytes);

                string salt = Convert.ToBase64String(saltBytes);
                return salt;
            }
        }
    }
}
