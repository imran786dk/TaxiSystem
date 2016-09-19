using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

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
                    cmd.Parameters.Add("@status", SqlDbType.Int).Value = taxiOwnwer.status;
                    cmd.Parameters.Add("@companyName", SqlDbType.VarChar).Value = taxiOwnwer.companyName;
                    cmd.Parameters.Add("@cvrNo", SqlDbType.VarChar).Value = taxiOwnwer.cvrNo;
                    cmd.Parameters.Add("@tel1", SqlDbType.VarChar).Value = taxiOwnwer.tel1;
                    cmd.Parameters.Add("@tel2", SqlDbType.VarChar).Value = taxiOwnwer.tel2;

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
                    cmd.Parameters.Add("@tel1", SqlDbType.Int).Value = taxiDriver.tel1;
                    cmd.Parameters.Add("@tel2", SqlDbType.Int).Value = taxiDriver.tel2;
                    cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = taxiDriver.password;
                    cmd.Parameters.Add("@salt", SqlDbType.VarChar).Value = taxiDriver.salt;
                    cmd.Parameters.Add("@createDate", SqlDbType.DateTime).Value = taxiDriver.createDate;
                    cmd.Parameters.Add("@type", SqlDbType.Int).Value = taxiDriver.type;
                    cmd.Parameters.Add("@status", SqlDbType.Int).Value = taxiDriver.status;
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

    }
}