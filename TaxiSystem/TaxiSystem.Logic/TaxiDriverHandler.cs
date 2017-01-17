using System;
using System.Data;

namespace TaxiSystem
{
    public class TaxiDriverHandler
    {
        //Add a taxi driver
        public static bool AddDriver(TaxiDriver driver)
        {
            driver.type = 3;
            driver.createDate = DateTime.Now.ToString("yyyy-MM-dd");
            string plainPassword = PasswordHandler.RandomPassword();
            driver.salt = PasswordHandler.CreateSalt();
            driver.password = PasswordHandler.CreateSHA256Hash(driver.salt, plainPassword);

            if (EmailHandler.PasswordMail(plainPassword, driver.email) == true)
            {

                try
                {
                    DbHelper.CreateTaxiDriver(driver);
                    return true;
                }
                catch
                {
                    return false;
                }
            }

            else
            {
                return false;
            }
        }

        //Gets a taxi driver by email
        public static TaxiDriver GetTaxiDriver(string email)
        {
            
            return DbHelper.SelectTaxiDriver(email);
        }

        //Gets a taxi driver by userId
        public static TaxiDriver GetTaxiDriverById(int userId)
        {

            return DbHelper.SelectTaxiDriverById(userId);
        }

        //Updates a taxi driver
        public static bool ChangeDriver(TaxiDriver driver)
        {
            try
            {
                DbHelper.UpdateTaxiDriver(driver);
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
