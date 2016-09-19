using System;

namespace TaxiSystem
{
    public class TaxiDriverHandler
    {
        public static void AddDriver(string cprNo, string fName, string lName, string street, string zipCode, string city, string country, string tel, string email, 
            string drivingLicenseNo, string taxiDriverNo, string taxiDriverExp, string bankAccount, string payCheckEmail, string pensionPercent, string taxPercent, string taxDeductions)
        {
            TaxiDriver taxiDriver = new TaxiDriver();

            taxiDriver.cprNo = Int32.Parse(cprNo);
            taxiDriver.fName = fName;
            taxiDriver.lName = lName;
            taxiDriver.street = street;
            taxiDriver.zipCode = Int32.Parse(zipCode);
            taxiDriver.city = city;
            taxiDriver.country = country;
            taxiDriver.tel = Int32.Parse(tel);
            taxiDriver.drivingLicenseNo = Int32.Parse(drivingLicenseNo);
            taxiDriver.taxiDriverNo = Int32.Parse(taxiDriverNo);
            taxiDriver.taxiDriverExp = DateTime.Parse(taxiDriverExp);
            taxiDriver.bankAccount = Int32.Parse(bankAccount);
            taxiDriver.payCheckEmail = payCheckEmail;
            taxiDriver.pensionPercent = Double.Parse(pensionPercent);
            taxiDriver.taxPercent = Double.Parse(taxPercent);
            taxiDriver.taxDeductions = Double.Parse(taxDeductions);

            string plainPassword = PasswordHandler.RandomPassword();
            taxiDriver.createDate = DateTime.Now;
            taxiDriver.type = 2;


            taxiDriver.salt = PasswordHandler.CreateSalt();
            taxiDriver.password = PasswordHandler.CreateSHA256Hash(taxiDriver.salt, plainPassword);

            EmailHandler.PasswordMail(plainPassword, email);

            DbHelper.CreateDriver(taxiDriver);

        }
    }
}