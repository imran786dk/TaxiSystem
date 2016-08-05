using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TaxiSystem.BusinessLogic;

namespace TaxiSystem.DataAccess
{
    public class DbHelper
    {

        public static string conString = ConfigurationManager.ConnectionStrings["TaxiSystemCS"].ConnectionString;

        public static bool TestConnection()
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    con.Open();
                    return true;
                }
                catch (SqlException)
                {
                    return false;
                }
            }
        }

        public static void CreateUser(User user)
        {

            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlCommand cmd = new SqlCommand("Test_Insert", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = user.Email;

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }

    }
}