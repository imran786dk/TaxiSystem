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

        public static void CreateTaxiOwner(TaxiOwner taxiOwner)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("spCreateTaxiOwner", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@fName", SqlDbType.NVarChar).Value = taxiOwner.fName;
                        cmd.Parameters.Add("@lName", SqlDbType.NVarChar).Value = taxiOwner.lName;
                        cmd.Parameters.Add("@street", SqlDbType.NVarChar).Value = taxiOwner.street;
                        cmd.Parameters.Add("@zipCode", SqlDbType.Int).Value = taxiOwner.zipCode;
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
                catch
                {
                    throw;
                }
            }
        }

        public static void CreateTaxiDriver(TaxiDriver taxiDriver)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("spCreateTaxiDriver", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@fName", SqlDbType.NVarChar).Value = taxiDriver.fName;
                        cmd.Parameters.Add("@lName", SqlDbType.NVarChar).Value = taxiDriver.lName;
                        cmd.Parameters.Add("@street", SqlDbType.NVarChar).Value = taxiDriver.street;
                        cmd.Parameters.Add("@zipCode", SqlDbType.Int).Value = taxiDriver.zipCode;
                        cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = taxiDriver.email;
                        cmd.Parameters.Add("@tel", SqlDbType.NVarChar).Value = taxiDriver.tel;
                        cmd.Parameters.Add("@type", SqlDbType.Int).Value = taxiDriver.type;
                        cmd.Parameters.Add("@cprNo", SqlDbType.NVarChar).Value = taxiDriver.cprNo;
                        cmd.Parameters.Add("@drivingLicenseNo", SqlDbType.NVarChar).Value = taxiDriver.drivingLicenseNo;
                        cmd.Parameters.Add("@taxiDriverNo", SqlDbType.NVarChar).Value = taxiDriver.taxiDriverNo;
                        cmd.Parameters.Add("@taxiDriverExp", SqlDbType.NVarChar).Value = taxiDriver.taxiDriverExp;
                        cmd.Parameters.Add("@createDate", SqlDbType.NVarChar).Value = taxiDriver.createDate;
                        cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = taxiDriver.password;
                        cmd.Parameters.Add("@salt", SqlDbType.NVarChar).Value = taxiDriver.salt;

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
                catch
                {
                    throw;
                }
            }
        }

        public static void CreateTaxi(Taxi taxi)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("spCreateTaxi", con))
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
                        cmd.Parameters.Add("@userId", SqlDbType.Int).Value = taxi.userId;

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
                catch
                {
                    throw;
                }           
            }
        }

        public static void UpdateTaxi(Taxi taxi)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("spUpdateTaxi", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@taxiId", SqlDbType.Int).Value = taxi.taxiId;
                        cmd.Parameters.Add("@units", SqlDbType.Int).Value = taxi.units;
                        cmd.Parameters.Add("@trips", SqlDbType.Int).Value = taxi.trips;
                        cmd.Parameters.Add("@mileage", SqlDbType.Int).Value = taxi.mileage;
                        cmd.Parameters.Add("@occupiedMileage", SqlDbType.Int).Value = taxi.occupiedMileage;
                        cmd.Parameters.Add("@controlMileage", SqlDbType.Int).Value = taxi.controlMileage;
                        cmd.Parameters.Add("@vehicleMileage", SqlDbType.Int).Value = taxi.vehicleMileage;

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
                catch
                {
                    throw;
                }
            }
        }

        public static void CreateShift(Shift shift)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("spCreateShift", con))
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
                        cmd.Parameters.Add("@userId", SqlDbType.Int).Value = shift.userId;

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
                catch
                {
                    throw;
                }             
            }
        }

        public static TaxiOwner SelectTaxiOwner(string email)
        {
            TaxiOwner taxiOwner = new TaxiOwner();

            using (SqlConnection con = new SqlConnection(conString))
            {
                try
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

                                taxiOwner.userId = Convert.ToInt32(row["UserId"]);
                                taxiOwner.fName = row["FirstName"].ToString();
                                taxiOwner.lName = row["LastName"].ToString();
                                taxiOwner.street = row["Street"].ToString();
                                taxiOwner.zipCode = Convert.ToInt32(row["ZipCode"]);
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

                            return taxiOwner;
                        }
                    }
                }
                catch
                {
                    throw;
                }
            }
        }

        public static TaxiDriver SelectTaxiDriver(string email)
        {
            TaxiDriver taxiDriver = new TaxiDriver();

            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("spGetTaxiDriver", con))
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

                                taxiDriver.userId = Convert.ToInt32(row["UserId"]);
                                taxiDriver.fName = row["FirstName"].ToString();
                                taxiDriver.lName = row["LastName"].ToString();
                                taxiDriver.street = row["Street"].ToString();
                                taxiDriver.zipCode = Convert.ToInt32(row["ZipCode"]);
                                taxiDriver.city = row["City"].ToString();
                                taxiDriver.country = row["Country"].ToString();
                                taxiDriver.tel = row["Tel"].ToString();
                                taxiDriver.email = row["Email"].ToString();
                                taxiDriver.type = Convert.ToInt32(row["Type"]);
                                taxiDriver.cprNo = row["CprNo"].ToString();
                                taxiDriver.password = row["Password"].ToString();
                                taxiDriver.salt = row["PasswordSalt"].ToString();
                                taxiDriver.createDate = row["CreateDate"].ToString();
                                taxiDriver.drivingLicenseNo = row["DrivingLicenseNo"].ToString();
                                taxiDriver.taxiDriverNo = row["TaxiDriverNo"].ToString();
                                taxiDriver.taxiDriverExp = row["TaxiDriverExp"].ToString();
                            }

                            return taxiDriver;
                        }
                    }
                }
                catch
                {
                    throw;
                }
            }
        }

        public static TaxiDriver SelectTaxiDriverById(int userId)
        {
            TaxiDriver taxiDriver = new TaxiDriver();

            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("spGetTaxiDriverById", con))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;

                            cmd.Parameters.Add("@userId", SqlDbType.NVarChar).Value = userId;

                            DataTable table = new DataTable();

                            da.Fill(table);

                            if (table.Rows.Count == 1)
                            {
                                DataRow row = table.Rows[0];

                                taxiDriver.userId = Convert.ToInt32(row["UserId"]);
                                taxiDriver.fName = row["FirstName"].ToString();
                                taxiDriver.lName = row["LastName"].ToString();
                                taxiDriver.street = row["Street"].ToString();
                                taxiDriver.zipCode = Convert.ToInt32(row["ZipCode"]);
                                taxiDriver.city = row["City"].ToString();
                                taxiDriver.country = row["Country"].ToString();
                                taxiDriver.tel = row["Tel"].ToString();
                                taxiDriver.email = row["Email"].ToString();
                                taxiDriver.type = Convert.ToInt32(row["Type"]);
                                taxiDriver.cprNo = row["CprNo"].ToString();
                                taxiDriver.password = row["Password"].ToString();
                                taxiDriver.salt = row["PasswordSalt"].ToString();
                                taxiDriver.createDate = row["CreateDate"].ToString();
                                taxiDriver.drivingLicenseNo = row["DrivingLicenseNo"].ToString();
                                taxiDriver.taxiDriverNo = row["TaxiDriverNo"].ToString();
                                taxiDriver.taxiDriverExp = row["TaxiDriverExp"].ToString();
                            }

                            return taxiDriver;
                        }
                    }
                }
                catch
                {
                    throw;
                }
            }
        }

        public static Taxi SelectTaxi(int taxiId)
        {
            Taxi taxi = new Taxi();

            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("spGetTaxi", con))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;

                            cmd.Parameters.Add("@taxiId", SqlDbType.NVarChar).Value = taxiId;

                            DataTable table = new DataTable();

                            da.Fill(table);

                            if (table.Rows.Count == 1)
                            {
                                DataRow row = table.Rows[0];

                                taxi.taxiId = Convert.ToInt32(row["TaxiId"]);
                                taxi.licensePlate = row["LicensePlate"].ToString();
                                taxi.permissionNo = row["PermissionNo"].ToString();
                                taxi.units = Convert.ToInt32(row["Units"]);
                                taxi.trips = Convert.ToInt32(row["Trips"]);
                                taxi.mileage = Convert.ToInt32(row["Mileage"]);
                                taxi.occupiedMileage = Convert.ToInt32(row["OccupiedMileage"]);
                                taxi.controlMileage = Convert.ToInt32(row["ControlMileage"]);
                                taxi.vehicleMileage = Convert.ToInt32(row["VehicleMileage"]);
                                taxi.createDate = row["CreateDate"].ToString();
                                taxi.userId = Convert.ToInt32(row["UserId"]);
                            }

                            return taxi;
                        }
                    }
                }
                catch
                {
                    throw;
                }
            }
        }

        public static int SelectType(string email)
        {
            int type = 0;

            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("spCheckEmail", con))
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

                                type = Convert.ToInt32(row["Type"]);
                            }

                            return type;
                        }
                    }
                }
                catch
                {
                    throw;
                }
            }
        }

        public static bool CheckEmail(string email)
        {

            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("spCheckEmail", con))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;

                            cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;

                            DataTable table = new DataTable();

                            da.Fill(table);

                            if (table.Rows.Count == 0)
                            {
                                return true;
                            }
                            else
                            {
                                return false;
                            }
                        }
                    }
                }
                catch
                {
                    throw;
                }
            }
        }

        public static bool CheckTaxi(string permissionNo)
        {

            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("spGetTaxiByPermissionNo", con))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;

                            cmd.Parameters.Add("@permissionNo", SqlDbType.NVarChar).Value = permissionNo;

                            DataTable table = new DataTable();

                            da.Fill(table);

                            if (table.Rows.Count == 0)
                            {
                                return true;
                            }
                            else
                            {
                                return false;
                            }
                        }
                    }
                }
                catch
                {
                    throw;
                }
            }
        }

        public static void ChangePassword(string email, string password, string salt)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                try
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
                catch
                {
                    throw;
                }
            }
        }

        public static User SelectZipCodeInfo(string zipCode)
        {
            User user = new User();

            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("spGetZipCodeInfo", con))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;

                            cmd.Parameters.Add("@zipCode", SqlDbType.NVarChar).Value = zipCode;

                            DataTable table = new DataTable();

                            da.Fill(table);

                            if (table.Rows.Count == 1)
                            {
                                DataRow row = table.Rows[0];

                                user.city = row["City"].ToString();
                                user.country = row["Country"].ToString();
                            }

                            return user;
                        }
                    }
                }
                catch
                {
                    throw;
                }
            }
        }

    }
}