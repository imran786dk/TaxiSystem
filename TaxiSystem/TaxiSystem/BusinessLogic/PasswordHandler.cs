using System;
using System.Security.Cryptography;
using System.Text;

namespace TaxiSystem
{
    public class PasswordHandler
    {
        public const int SaltByteSize = 32;
        public string salt = CreateSalt();

        public static string CreateSalt()                           //Generates a random salt of 32-bit

        {
            RNGCryptoServiceProvider csprng = new RNGCryptoServiceProvider();
            byte[] salt = new byte[SaltByteSize];
            csprng.GetBytes(salt);

            return Convert.ToBase64String(salt);
        }

        public static string CreateSHA256Hash(string salt, string password)
        {
            byte[] bytes = Encoding.UTF8.GetBytes(salt + password);
            SHA256Managed sha256Hash = new SHA256Managed();
            byte[] hash = sha256Hash.ComputeHash(bytes);

            return Convert.ToBase64String(hash);
        }

        public static string RandomPassword()               //Generates a random password of 8 characters
        {

            int lengthOfPassword = 8;
            string valid = "abcdefghijklmnozABCDEFGHIJKLMNOZ1234567890";
            StringBuilder strB = new StringBuilder(100);
            Random random = new Random();
            while (0 < lengthOfPassword--)
            {
                strB.Append(valid[random.Next(valid.Length)]);
            }
            return strB.ToString();

        }

        public static bool SendNewPassword(string email)
        {

            string plainPassword = RandomPassword();
            string salt = CreateSalt();
            string password = CreateSHA256Hash(salt, plainPassword);

            EmailHandler.PasswordMail(plainPassword, email);

            try
            {
                DbHelper.ChangePassword(email, password, salt);
                return true;
            }
            catch
            {
                return false;
            }

        }
    }
}