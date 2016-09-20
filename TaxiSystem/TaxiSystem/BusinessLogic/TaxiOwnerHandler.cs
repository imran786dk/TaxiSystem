using System;

namespace TaxiSystem
{
    public class TaxiOwnerHandler
    {
        public static bool AddOwner(string cvrNo, string companyName, string fName, string lName, string street, string zipCode, string city,string country, string tel, string email)
        {
            TaxiOwner taxiOwner = new TaxiOwner();

            taxiOwner.cvrNo = cvrNo;
            taxiOwner.companyName = companyName;
            taxiOwner.fName = fName;
            taxiOwner.lName = lName;
            taxiOwner.street = street;
            taxiOwner.zipCode = zipCode;
            taxiOwner.city = city;
            taxiOwner.country = country;
            taxiOwner.tel = tel;
            taxiOwner.email = email;
            taxiOwner.type = 2;
            taxiOwner.createDate = DateTime.Now.ToShortDateString();

            string plainPassword = PasswordHandler.RandomPassword();
            taxiOwner.salt = PasswordHandler.CreateSalt();
            taxiOwner.password = PasswordHandler.CreateSHA256Hash(taxiOwner.salt, plainPassword);

            EmailHandler.PasswordMail(plainPassword, email);

            try
            {
                DbHelper.CreateOwner(taxiOwner);
                return true;
            }
            catch
            {
                return false;
            }
            
        }
    }
}