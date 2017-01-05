using System.Data;

namespace TaxiSystem
{
    public class UserHandler
    {
        //Returns city and country by zip code
        public static User GetZipCodeInfo(string zipCode)
        {
            User user = new User();
            DataTable table = DbHelper.SelectZipCodeInfo(zipCode);

            if (table.Rows.Count == 1)
            {
                DataRow row = table.Rows[0];

                user.city = row["City"].ToString();
                user.country = row["Country"].ToString();

                return user;
            }

            else
            {
                return null;
            }
        }
    }
}