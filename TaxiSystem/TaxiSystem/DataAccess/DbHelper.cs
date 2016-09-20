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

                    cmd.Parameters.Add("@fName", SqlDbType.NVarChar).Value = taxiOwnwer.fName;
                    cmd.Parameters.Add("@lName", SqlDbType.NVarChar).Value = taxiOwnwer.lName;
                    cmd.Parameters.Add("@street", SqlDbType.NVarChar).Value = taxiOwnwer.street;
                    cmd.Parameters.Add("@zipCode", SqlDbType.NVarChar).Value = taxiOwnwer.zipCode;
                    cmd.Parameters.Add("@city", SqlDbType.NVarChar).Value = taxiOwnwer.city;
                    cmd.Parameters.Add("@country", SqlDbType.NVarChar).Value = taxiOwnwer.country;
                    cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = taxiOwnwer.email;
                    cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = taxiOwnwer.password;
                    cmd.Parameters.Add("@salt", SqlDbType.NVarChar).Value = taxiOwnwer.salt;
                    cmd.Parameters.Add("@type", SqlDbType.Int).Value = taxiOwnwer.type;
                    cmd.Parameters.Add("@companyName", SqlDbType.NVarChar).Value = taxiOwnwer.companyName;
                    cmd.Parameters.Add("@cvrNo", SqlDbType.NVarChar).Value = taxiOwnwer.cvrNo;
                    cmd.Parameters.Add("@tel", SqlDbType.NVarChar).Value = taxiOwnwer.tel;


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

                    cmd.Parameters.Add("@fName", SqlDbType.NVarChar).Value = taxiDriver.fName;
                    cmd.Parameters.Add("@lName", SqlDbType.NVarChar).Value = taxiDriver.lName;
                    cmd.Parameters.Add("@street", SqlDbType.NVarChar).Value = taxiDriver.street;
                    cmd.Parameters.Add("@zipCode", SqlDbType.NVarChar).Value = taxiDriver.zipCode;
                    cmd.Parameters.Add("@city", SqlDbType.NVarChar).Value = taxiDriver.city;
                    cmd.Parameters.Add("@country", SqlDbType.NVarChar).Value = taxiDriver.country;
                    cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = taxiDriver.email;
                    cmd.Parameters.Add("@tel", SqlDbType.NVarChar).Value = taxiDriver.tel;
                    cmd.Parameters.Add("@type", SqlDbType.Int).Value = taxiDriver.type;
                    cmd.Parameters.Add("@cprNo", SqlDbType.NVarChar).Value = taxiDriver.cprNo;
                    cmd.Parameters.Add("@drivingLicenseNo", SqlDbType.NVarChar).Value = taxiDriver.drivingLicenseNo;
                    cmd.Parameters.Add("@taxiDriverNo", SqlDbType.NVarChar).Value = taxiDriver.taxiDriverNo;
                    cmd.Parameters.Add("@taxiDriverExp", SqlDbType.NVarChar).Value = taxiDriver.taxiDriverExp;
                    cmd.Parameters.Add("@bankAccount", SqlDbType.NVarChar).Value = taxiDriver.bankAccount;
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

                using (SqlCommand cmd = new SqlCommand("spGetTaxiOwner", con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;

                        DataTable table = new DataTable();

                        da.Fill(table);

                        if (table.Rows.Count == 1)
                        {
                            DataRow row = table.Rows[0];

                            taxiOwner.fName = row["FirstName"].ToString();
                            taxiOwner.lName = row["LastName"].ToString();
                            taxiOwner.street = row["Street"].ToString();
                            taxiOwner.zipCode = row["ZipCode"].ToString();
                            taxiOwner.city = row["City"].ToString();
                            taxiOwner.country = row["Country"].ToString();
                            taxiOwner.tel = row["Tel"].ToString();
                            taxiOwner.email = row["Email"].ToString();
                            taxiOwner.type = Convert.ToInt32(row["Type"]);
                            taxiOwner.companyName = row["CompanyName"].ToString();
                            taxiOwner.cvrNo = row["CvrNo"].ToString();
                            taxiOwner.password = row["Password"].ToString();
                            taxiOwner.salt = row["PasswordSalt"].ToString();
                        }
                    }
                }
            }

            return taxiOwner;
        }

    }
}