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
    public partial class LoginForm : Form
    {
        private SqlConnection cn;
        public LoginForm()
        {
            InitializeComponent();
        }

        private void LoginForm_Load(object sender, EventArgs e)
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
            if(string.IsNullOrEmpty(txtUsername.Text) || string.IsNullOrEmpty(txtPassword.Text))
            {
                MessageBox.Show("Por favor, preencha todos os campos.");
                return false;
            }
            return true;
        }

        private void Login_Click(object sender, EventArgs e)   //botao para entrar na db
        {
            if (!ValidateInputs())
                return;

            string username = txtUsername.Text;
            string password = txtPassword.Text;

            if(CheckCredentials(username,password))
            {
                DialogResult = DialogResult.OK;
                Close();
            }
            else
            {
                MessageBox.Show("Nome de utilizador ou palavra-passe inválidos! Tente novamente.");
            }
        }

        private bool CheckCredentials(string username, string password)
        {
            if (!verifySGBDConnection())
                return false;

            SqlCommand cmd = new SqlCommand("SELECT pass, salt FROM train.Gestor WHERE username = @Username;", cn);
            cmd.Parameters.AddWithValue("@Username", username);

            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    string hashedPasswordFromDB = reader.GetString(0);
                    string salt = reader.GetString(1);
                    string hashedPassword = HashPassword(password, salt);

                    return hashedPasswordFromDB == hashedPassword;
                }
                else
                {
                    return false;
                }
            }

        }

        private string HashPassword(string password, string salt)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] passwordBytes = Encoding.UTF8.GetBytes(password);
                byte[] saltBytes = Encoding.UTF8.GetBytes(salt);

                byte[] combinedBytes = new byte[passwordBytes.Length + saltBytes.Length];
                Buffer.BlockCopy(passwordBytes, 0, combinedBytes, 0, passwordBytes.Length);
                Buffer.BlockCopy(saltBytes, 0, combinedBytes, passwordBytes.Length, saltBytes.Length);

                byte[] hashedBytes = sha256.ComputeHash(combinedBytes);
                string hashedPassword = Convert.ToBase64String(hashedBytes);

                return hashedPassword;
            }
        }


        private void btnRegisterL_Click(object sender, EventArgs e)
        {
            RegistrationForm registrationForm = new RegistrationForm();
            registrationForm.ShowDialog();

            registrationForm.Dispose();
        }
    }
}
