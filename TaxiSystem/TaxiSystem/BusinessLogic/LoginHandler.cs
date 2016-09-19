using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiSystem
{
    public class LoginHandler
    {
        public static bool LoginAccess(string email, string password)
        {
            if (CheckPassword(email, password) == true)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static bool CheckPassword(String email, String password)
        {
            User user = GetUser(email);

            string dbPassword = user.password;
            string salt = user.salt;
            string passwordToCheck = PasswordHandler.CreateSHA256Hash(salt, password);

            if (dbPassword == passwordToCheck)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static User GetUser(string email)
        {
            return DbHelper.SelectUser(email);
        }
    }

    
}