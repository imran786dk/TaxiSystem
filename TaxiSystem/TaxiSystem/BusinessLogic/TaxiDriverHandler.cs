using System;

namespace TaxiSystem
{
    public class TaxiDriverHandler
    {
        public static bool AddDriver(string cprNo, string fName, string lName, string street, string zipCode, string city, string country, string tel, string email, 
            string drivingLicenseNo, string taxiDriverNo, string taxiDriverExp, string bankAccount, string pensionPercent, string taxPercent, string taxDeductions)
        {
            TaxiDriver taxiDriver = new TaxiDriver();

            taxiDriver.cprNo = cprNo;
            taxiDriver.fName = fName;
            taxiDriver.lName = lName;
            taxiDriver.street = street;
            taxiDriver.zipCode = zipCode;
            taxiDriver.city = city;
            taxiDriver.country = country;
            taxiDriver.tel = tel;
            taxiDriver.email = email;
            taxiDriver.drivingLicenseNo = drivingLicenseNo;
            taxiDriver.taxiDriverNo = taxiDriverNo;
            taxiDriver.taxiDriverExp = taxiDriverExp;
            taxiDriver.bankAccount = bankAccount;
            taxiDriver.pensionPercent = Double.Parse(pensionPercent);
            taxiDriver.taxPercent = Double.Parse(taxPercent);
            taxiDriver.taxDeductions = Double.Parse(taxDeductions);
            taxiDriver.type = 3;

            try
            {
                DbHelper.CreateDriver(taxiDriver);
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}