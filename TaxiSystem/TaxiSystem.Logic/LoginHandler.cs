namespace TaxiSystem
{
    public class LoginHandler
    {
        //Returns the type of the user
        public static int GetType(string email)
        {

            int type = DbHelper.SelectType(email);

                return type;   
        }

        //Validates user credentials for taxi owner
        public static TaxiOwner TaxiOwnerLogin(string email, string password)
        {
                TaxiOwner taxiOwner = TaxiOwnerHandler.GetTaxiOwner(email);

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

        //Validates user credentials for taxi driver
        public static TaxiDriver TaxiDriverLogin(string email, string password)
        {
            TaxiDriver taxiDriver = TaxiDriverHandler.GetTaxiDriver(email);

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

        //Checks if the email is already used
        public static bool checkEmailAvailability(string email)
        {
            return DbHelper.CheckEmail(email);
        }
    }   
}