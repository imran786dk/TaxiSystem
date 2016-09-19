using System;

namespace TaxiSystem
{
    public class TaxiOwnerHandler
    {
        public static void AddOwner(string cvrNo, string companyName, string fName, string lName, string street, string zipCode, string city,string country, string tel, string email)
        {
            TaxiOwner taxiOwner = new TaxiOwner();

            taxiOwner.cvrNo = Int32.Parse(cvrNo);
            taxiOwner.companyName = companyName;
            taxiOwner.fName = fName;
            taxiOwner.lName = lName;
            taxiOwner.street = street;
            taxiOwner.zipCode = Int32.Parse(zipCode);
            taxiOwner.city = city;
            taxiOwner.country = country;
            taxiOwner.tel = Int32.Parse(tel);
            taxiOwner.email = email;

            string plainPassword = PasswordHandler.RandomPassword();
            taxiOwner.createDate = DateTime.Now;
            taxiOwner.type = 1;


            taxiOwner.salt = PasswordHandler.CreateSalt();
            taxiOwner.password = PasswordHandler.CreateSHA256Hash(taxiOwner.salt, plainPassword);

            EmailHandler.PasswordMail(plainPassword, email);

            DbHelper.CreateOwner(taxiOwner);
            
        }
    }
}