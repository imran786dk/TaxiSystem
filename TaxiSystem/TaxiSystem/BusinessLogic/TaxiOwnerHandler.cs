using System;

namespace TaxiSystem
{
    public class TaxiOwnerHandler
    {
        public static void AddOwner(string cvrNo, string companyName, string fName, string lName, string street, string zipCode, string city,string country, string tel1, string tel2, string email)
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
            taxiOwner.tel1 = Int32.Parse(tel1);
            taxiOwner.tel2 = Int32.Parse(tel2);
            taxiOwner.email = email;

            string plainPassword = PasswordHandler.RandomPassword();
            taxiOwner.createDate = DateTime.Now;
            taxiOwner.status = 1;
            taxiOwner.type = 2;


            taxiOwner.salt = PasswordHandler.CreateSalt();
            taxiOwner.password = PasswordHandler.CreateSHA256Hash(taxiOwner.salt, plainPassword);

            EmailHandler.PasswordMail(plainPassword, email);

            DbHelper.CreateOwner(taxiOwner);
            
        }
    }
}