using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiSystem
{
    public class ForgotPasswordHandler
    {
        public static bool SendNewPassword(string email)
        {

            string plainPassword = PasswordHandler.RandomPassword();
            string salt = PasswordHandler.CreateSalt();
            string password = PasswordHandler.CreateSHA256Hash(salt, plainPassword);

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