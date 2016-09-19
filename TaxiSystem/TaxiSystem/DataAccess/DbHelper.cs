using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Runtime.InteropServices;

namespace TaxiSystem
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

        public static void CreateOwner(TaxiOwner taxiOwnwer)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlCommand cmd = new SqlCommand("spCreateTaxiOwner", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@fName", SqlDbType.VarChar).Value = taxiOwnwer.fName;
                    cmd.Parameters.Add("@lName", SqlDbType.VarChar).Value = taxiOwnwer.lName;
                    cmd.Parameters.Add("@street", SqlDbType.VarChar).Value = taxiOwnwer.street;
                    cmd.Parameters.Add("@zipCode", SqlDbType.Int).Value = taxiOwnwer.zipCode;
                    cmd.Parameters.Add("@city", SqlDbType.VarChar).Value = taxiOwnwer.city;
                    cmd.Parameters.Add("@country", SqlDbType.VarChar).Value = taxiOwnwer.country;
                    cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = taxiOwnwer.email;
                    cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = taxiOwnwer.password;
                    cmd.Parameters.Add("@salt", SqlDbType.VarChar).Value = taxiOwnwer.salt;
                    cmd.Parameters.Add("@createDate", SqlDbType.DateTime).Value = taxiOwnwer.createDate;
                    cmd.Parameters.Add("@type", SqlDbType.Int).Value = taxiOwnwer.type;
                    cmd.Parameters.Add("@companyName", SqlDbType.VarChar).Value = taxiOwnwer.companyName;
                    cmd.Parameters.Add("@cvrNo", SqlDbType.VarChar).Value = taxiOwnwer.cvrNo;
                    cmd.Parameters.Add("@tel", SqlDbType.VarChar).Value = taxiOwnwer.tel;


                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public static void CreateDriver(TaxiDriver taxiDriver)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlCommand cmd = new SqlCommand("spCreateTaxiDriver", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@fName", SqlDbType.VarChar).Value = taxiDriver.fName;
                    cmd.Parameters.Add("@lName", SqlDbType.VarChar).Value = taxiDriver.lName;
                    cmd.Parameters.Add("@street", SqlDbType.VarChar).Value = taxiDriver.street;
                    cmd.Parameters.Add("@zipCode", SqlDbType.Int).Value = taxiDriver.zipCode;
                    cmd.Parameters.Add("@city", SqlDbType.VarChar).Value = taxiDriver.city;
                    cmd.Parameters.Add("@country", SqlDbType.VarChar).Value = taxiDriver.country;
                    cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = taxiDriver.email;
                    cmd.Parameters.Add("@tel", SqlDbType.Int).Value = taxiDriver.tel;
                    cmd.Parameters.Add("@createDate", SqlDbType.DateTime).Value = taxiDriver.createDate;
                    cmd.Parameters.Add("@type", SqlDbType.Int).Value = taxiDriver.type;
                    cmd.Parameters.Add("@cprNo", SqlDbType.Int).Value = taxiDriver.cprNo;
                    cmd.Parameters.Add("@drivingLicenseNo", SqlDbType.Int).Value = taxiDriver.drivingLicenseNo;
                    cmd.Parameters.Add("@taxiDriverNo", SqlDbType.Int).Value = taxiDriver.taxiDriverNo;
                    cmd.Parameters.Add("@taxiDriverExp", SqlDbType.DateTime).Value = taxiDriver.taxiDriverExp;
                    cmd.Parameters.Add("@bankAccount", SqlDbType.Int).Value = taxiDriver.bankAccount;
                    cmd.Parameters.Add("@payCheckEmail", SqlDbType.VarChar).Value = taxiDriver.payCheckEmail;
                    cmd.Parameters.Add("@pensionPercent", SqlDbType.Float).Value = taxiDriver.pensionPercent;
                    cmd.Parameters.Add("@taxPercent", SqlDbType.Float).Value = taxiDriver.taxPercent;
                    cmd.Parameters.Add("@taxDeductions", SqlDbType.Float).Value = taxiDriver.taxDeductions;

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public static TaxiOwner SelectUser(string email)
        {
            TaxiOwner taxiOwner = new TaxiOwner();

            using (SqlConnection con = new SqlConnection(conString))
            {

                using (SqlCommand cmd = new SqlCommand("spGetUser", con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email;

                        DataTable table = new DataTable();

                        da.Fill(table);

                        if (table.Rows.Count == 1)
                        {
                            DataRow row = table.Rows[0];

                            taxiOwner.fName = row["FirstName"].ToString();
                            taxiOwner.lName = row["LastName"].ToString();
                            taxiOwner.street = row["Street"].ToString();
                            taxiOwner.zipCode = Convert.ToInt32(row["ZipCode"]);
                            taxiOwner.city = row["City"].ToString();
                            taxiOwner.country = row["Country"].ToString();
                            taxiOwner.tel = Convert.ToInt32(row["Tel"]);
                            taxiOwner.email = row["Email"].ToString();
                            taxiOwner.createDate = Convert.ToDateTime(row["CreateDate"]);
                            taxiOwner.type = Convert.ToInt32(row["Type"]);

                        }
                    }
                }
            }

            return taxiOwner;
        }

    }
}