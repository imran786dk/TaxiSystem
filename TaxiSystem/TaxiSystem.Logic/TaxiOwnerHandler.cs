using System;
using System.Data;

namespace TaxiSystem
{
    public class TaxiOwnerHandler
    {
        //Creates a taxi owner
        public static bool AddOwner(TaxiOwner owner)
        {

            owner.typeId = 2;
            owner.createDate = DateTime.Now.ToString("yyyy-MM-dd");
            string plainPassword = PasswordHandler.RandomPassword();
            owner.salt = PasswordHandler.CreateSalt();
            owner.password = PasswordHandler.CreateSHA256Hash(owner.salt, plainPassword);

            if (EmailHandler.PasswordMail(plainPassword, owner.email) == true)
            {
                try
                {
                    DbHelper.CreateTaxiOwner(owner);
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

        //Updates a taxi owner
        public static bool ChangeOwner(TaxiOwner owner)
        {
            try
            {
                DbHelper.UpdateTaxiOwner(owner);
                return true;
            }
            catch
            {
                return false;
            }

        }

        //Gets a taxiowner by email
        public static TaxiOwner GetTaxiOwner(string email)
        {

            return DbHelper.SelectTaxiOwner(email); ;
        }

        //Gets a taxi owner by id
        public static TaxiOwner GetTaxiOwnerById(int userId)
        {

            return DbHelper.SelectTaxiOwnerById(userId); ;
        }

    }
}