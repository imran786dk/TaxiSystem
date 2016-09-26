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

        public static void CreateOwner(TaxiOwner taxiOwner)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlCommand cmd = new SqlCommand("spCreateTaxiOwner", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@fName", SqlDbType.NVarChar).Value = taxiOwner.fName;
                    cmd.Parameters.Add("@lName", SqlDbType.NVarChar).Value = taxiOwner.lName;
                    cmd.Parameters.Add("@street", SqlDbType.NVarChar).Value = taxiOwner.street;
                    cmd.Parameters.Add("@zipCode", SqlDbType.NVarChar).Value = taxiOwner.zipCode;
                    cmd.Parameters.Add("@city", SqlDbType.NVarChar).Value = taxiOwner.city;
                    cmd.Parameters.Add("@country", SqlDbType.NVarChar).Value = taxiOwner.country;
                    cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = taxiOwner.email;
                    cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = taxiOwner.password;
                    cmd.Parameters.Add("@salt", SqlDbType.NVarChar).Value = taxiOwner.salt;
                    cmd.Parameters.Add("@type", SqlDbType.Int).Value = taxiOwner.type;
                    cmd.Parameters.Add("@companyName", SqlDbType.NVarChar).Value = taxiOwner.companyName;
                    cmd.Parameters.Add("@cvrNo", SqlDbType.NVarChar).Value = taxiOwner.cvrNo;
                    cmd.Parameters.Add("@tel", SqlDbType.NVarChar).Value = taxiOwner.tel;
                    cmd.Parameters.Add("@createDate", SqlDbType.NVarChar).Value = taxiOwner.createDate;


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
                    cmd.Parameters.Add("@createDate", SqlDbType.NVarChar).Value = taxiDriver.createDate;

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public static void CreateTaxi(Taxi taxi)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlCommand cmd = new SqlCommand("spCreateTaxiDriver", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@licensePlate", SqlDbType.NVarChar).Value = taxi.licensePlate;
                    cmd.Parameters.Add("@permissionNo", SqlDbType.NVarChar).Value = taxi.permissionNo;
                    cmd.Parameters.Add("@units", SqlDbType.Int).Value = taxi.units;
                    cmd.Parameters.Add("@trips", SqlDbType.Int).Value = taxi.trips;
                    cmd.Parameters.Add("@mileage", SqlDbType.Int).Value = taxi.mileage;
                    cmd.Parameters.Add("@occupiedMileage", SqlDbType.Int).Value = taxi.occupiedMileage;
                    cmd.Parameters.Add("@controlMileage", SqlDbType.Int).Value = taxi.controlMileage;
                    cmd.Parameters.Add("@vehicleMileage", SqlDbType.Int).Value = taxi.vehicleMileage;
                    cmd.Parameters.Add("@createDate", SqlDbType.NVarChar).Value = taxi.createDate;
                    cmd.Parameters.Add("@taxiOwnerId", SqlDbType.Int).Value = taxi.taxiOwnerId;
           
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public static void CreateShift(Shift shift)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlCommand cmd = new SqlCommand("spCreateTaxiDriver", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@drivingBookNo", SqlDbType.NVarChar).Value = shift.drivingBookNo;
                    cmd.Parameters.Add("@drivingBookPage", SqlDbType.NVarChar).Value = shift.drivingBookPage;
                    cmd.Parameters.Add("@date", SqlDbType.NVarChar).Value = shift.date;
                    cmd.Parameters.Add("@units", SqlDbType.Int).Value = shift.units;
                    cmd.Parameters.Add("@trips", SqlDbType.Int).Value = shift.trips;
                    cmd.Parameters.Add("@mileage", SqlDbType.Int).Value = shift.mileage;
                    cmd.Parameters.Add("@occupiedMileage", SqlDbType.Int).Value = shift.occupiedMileage;
                    cmd.Parameters.Add("@controlMileage", SqlDbType.Int).Value = shift.controlMileage;
                    cmd.Parameters.Add("@vehicleMileage", SqlDbType.Int).Value = shift.vehicleMileage;
                    cmd.Parameters.Add("@withoutMeter", SqlDbType.Int).Value = shift.withoutMeter;
                    cmd.Parameters.Add("@errorTrips", SqlDbType.Int).Value = shift.errorTrips;
                    cmd.Parameters.Add("@onAccount", SqlDbType.Int).Value = shift.onAccount;
                    cmd.Parameters.Add("@createDate", SqlDbType.NVarChar).Value = shift.createDate;
                    cmd.Parameters.Add("@taxiId", SqlDbType.Int).Value = shift.taxiId;
                    cmd.Parameters.Add("@taxiDriverId", SqlDbType.Int).Value = shift.taxiDriverId;

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
                            taxiOwner.createDate = row["CreateDate"].ToString();
                        }
                    }
                }
            }

            return taxiOwner;
        }

        public static void ChangePassword(string email, string password, string salt)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlCommand cmd = new SqlCommand("spChangeEmail", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
                    cmd.Parameters.Add("@Password", SqlDbType.NVarChar).Value = password;
                    cmd.Parameters.Add("@PasswordSalt", SqlDbType.NVarChar).Value = salt;

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }

    }
}