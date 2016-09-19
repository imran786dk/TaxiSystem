using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiSystem
{
    public class LoginHandler
    {
        public static TaxiOwner CheckLogin(String email, String password)
        {
            TaxiOwner taxiOwner = DbHelper.SelectUser(email);

            string dbPassword = taxiOwner.password;
            string salt = taxiOwner.salt;
            string passwordToCheck = PasswordHandler.CreateSHA256Hash(salt, password);

            if (dbPassword == passwordToCheck)
            {
                return taxiOwner;

            }
            else
            {
                return null;
            }
        }
    }   
}