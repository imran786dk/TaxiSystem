using System;

namespace TaxiSystem
{
    public class TaxiDriverHandler
    {
        public static bool AddDriver(string cprNo, string fName, string lName, string street, string zipCode, string city, string country, string tel, string email,
            string drivingLicenseNo, string taxiDriverNo, string taxiDriverExp)
        {
            TaxiDriver taxiDriver = new TaxiDriver();

            taxiDriver.cprNo = cprNo;
            taxiDriver.fName = fName;
            taxiDriver.lName = lName;
            taxiDriver.street = street;
            taxiDriver.zipCode = int.Parse(zipCode);
            taxiDriver.city = city;
            taxiDriver.country = country;
            taxiDriver.tel = tel;
            taxiDriver.email = email;
            taxiDriver.drivingLicenseNo = drivingLicenseNo;
            taxiDriver.taxiDriverNo = taxiDriverNo;
            taxiDriver.taxiDriverExp = taxiDriverExp;
            taxiDriver.type = 3;
            taxiDriver.createDate = DateTime.Now.ToShortDateString();
            taxiDriver.password = null;
            taxiDriver.salt = null;



            string plainPassword = PasswordHandler.RandomPassword();
            taxiDriver.salt = PasswordHandler.CreateSalt();
            taxiDriver.password = PasswordHandler.CreateSHA256Hash(taxiDriver.salt, plainPassword);

            EmailHandler.PasswordMail(plainPassword, email);

            try
            {
                DbHelper.CreateTaxiDriver(taxiDriver);
                return true;
            }
            catch
            {
                return false;
            }

        }

        public static TaxiDriver getTaxiDriver (int userId)
        {
            return DbHelper.SelectTaxiDriverById(userId);
        }
    }
}
