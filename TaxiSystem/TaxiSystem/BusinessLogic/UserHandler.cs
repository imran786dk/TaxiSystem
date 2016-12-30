namespace TaxiSystem
{
    public class UserHandler
    {
        public static User GetZipCodeInfo(string zipCode)
        {

            return DbHelper.SelectZipCodeInfo(zipCode);

        }
    }
}