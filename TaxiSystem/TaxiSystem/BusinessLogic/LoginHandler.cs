using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiSystem
{
    public class LoginHandler
    {
        public static int GetType(string email)
        {

            int type = DbHelper.SelectType(email);

                return type;   
        }

        public static TaxiOwner TaxiOwnerLogin(string email, string password)
        {
            TaxiOwner taxiOwner = DbHelper.SelectTaxiOwner(email);

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

        public static TaxiDriver TaxiDriverLogin(string email, string password)
        {
            TaxiDriver taxiDriver = DbHelper.SelectTaxiDriver(email);

            string dbPassword = taxiDriver.password;
            string salt = taxiDriver.salt;
            string passwordToCheck = PasswordHandler.CreateSHA256Hash(salt, password);

            if (dbPassword == passwordToCheck)
            {
                return taxiDriver;

            }
            else
            {
                return null;
            }
        }

        public static bool checkEmailAvailability(string email)
        {
            return DbHelper.CheckEmail(email);
        }
    }   
}