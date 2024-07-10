using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;

namespace forms_train
{
    public static class PasswordHelper
    {
        public static string HashPassword(string password, string salt)
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
    }
}
