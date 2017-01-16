using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace TaxiSystem
{
    public class DbHelper
    {

        public static string conString = ConfigurationManager.ConnectionStrings["TaxiSystemCS"].ConnectionString;

        //Returns true if data connection is open
        public static bool Connection()
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

        //Creates a taxi owner
        public static void CreateTaxiOwner(TaxiOwner owner)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("spCreateTaxiOwner", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@fName", SqlDbType.NVarChar).Value = owner.fName;
                        cmd.Parameters.Add("@lName", SqlDbType.NVarChar).Value = owner.lName;
                        cmd.Parameters.Add("@street", SqlDbType.NVarChar).Value = owner.street;
                        cmd.Parameters.Add("@zipCode", SqlDbType.Int).Value = owner.zipCode;
                        cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = owner.email;
                        cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = owner.password;
                        cmd.Parameters.Add("@salt", SqlDbType.NVarChar).Value = owner.salt;
                        cmd.Parameters.Add("@type", SqlDbType.Int).Value = owner.type;
                        cmd.Parameters.Add("@companyName", SqlDbType.NVarChar).Value = owner.companyName;
                        cmd.Parameters.Add("@cvrNo", SqlDbType.NVarChar).Value = owner.cvrNo;
                        cmd.Parameters.Add("@tel", SqlDbType.NVarChar).Value = owner.tel;
                        cmd.Parameters.Add("@createDate", SqlDbType.NVarChar).Value = owner.createDate;


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

        //Updates a taxi owner
        public static void UpdateTaxiOwner(TaxiOwner owner)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("spUpdateTaxiOwner", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@userId", SqlDbType.Int).Value = owner.userId;
                        cmd.Parameters.Add("@fName", SqlDbType.NVarChar).Value = owner.fName;
                        cmd.Parameters.Add("@lName", SqlDbType.NVarChar).Value = owner.lName;
                        cmd.Parameters.Add("@street", SqlDbType.NVarChar).Value = owner.street;
                        cmd.Parameters.Add("@zipCode", SqlDbType.Int).Value = owner.zipCode;
                        cmd.Parameters.Add("@companyName", SqlDbType.NVarChar).Value = owner.companyName;
                        cmd.Parameters.Add("@tel", SqlDbType.NVarChar).Value = owner.tel;

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

        //Creates a taxi driver
        public static void CreateTaxiDriver(TaxiDriver driver)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("spCreateTaxiDriver", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@fName", SqlDbType.NVarChar).Value = driver.fName;
                        cmd.Parameters.Add("@lName", SqlDbType.NVarChar).Value = driver.lName;
                        cmd.Parameters.Add("@street", SqlDbType.NVarChar).Value = driver.street;
                        cmd.Parameters.Add("@zipCode", SqlDbType.Int).Value = driver.zipCode;
                        cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = driver.email;
                        cmd.Parameters.Add("@tel", SqlDbType.NVarChar).Value = driver.tel;
                        cmd.Parameters.Add("@type", SqlDbType.Int).Value = driver.type;
                        cmd.Parameters.Add("@cprNo", SqlDbType.NVarChar).Value = driver.cprNo;
                        cmd.Parameters.Add("@drivingLicenseNo", SqlDbType.NVarChar).Value = driver.drivingLicenseNo;
                        cmd.Parameters.Add("@taxiDriverNo", SqlDbType.NVarChar).Value = driver.taxiDriverNo;
                        cmd.Parameters.Add("@taxiDriverExp", SqlDbType.NVarChar).Value = driver.taxiDriverExp;
                        cmd.Parameters.Add("@createDate", SqlDbType.NVarChar).Value = driver.createDate;
                        cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = driver.password;
                        cmd.Parameters.Add("@salt", SqlDbType.NVarChar).Value = driver.salt;

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

        //Updates a taxi driver
        public static void UpdateTaxiDriver(TaxiDriver driver)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("spUpdateTaxiDriver", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@fName", SqlDbType.NVarChar).Value = driver.fName;
                        cmd.Parameters.Add("@lName", SqlDbType.NVarChar).Value = driver.lName;
                        cmd.Parameters.Add("@street", SqlDbType.NVarChar).Value = driver.street;
                        cmd.Parameters.Add("@zipCode", SqlDbType.Int).Value = driver.zipCode;
                        cmd.Parameters.Add("@tel", SqlDbType.NVarChar).Value = driver.tel;
                        cmd.Parameters.Add("@drivingLicenseNo", SqlDbType.NVarChar).Value = driver.drivingLicenseNo;
                        cmd.Parameters.Add("@taxiDriverExp", SqlDbType.NVarChar).Value = driver.taxiDriverExp;
                        cmd.Parameters.Add("@userId", SqlDbType.Int).Value = driver.userId;


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

        //Creates a taxi
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

        //Updates taximeter details
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

        //creates a shift
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
                        cmd.Parameters.Add("@drivingBookPage", SqlDbType.Int).Value = shift.drivingBookPage;
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

        //Selects a taxi owner by email
        public static TaxiOwner SelectTaxiOwner(string email)
        {

            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    TaxiOwner taxiOwner = new TaxiOwner();

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

        //Selects a taxi owner by id
        public static TaxiOwner SelectTaxiOwnerById(int userId)
        {

            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    TaxiOwner taxiOwner = new TaxiOwner();

                    using (SqlCommand cmd = new SqlCommand("spGetTaxiOwnerById", con))
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

        //Selects a taxi driver by email
        public static TaxiDriver SelectTaxiDriver(string email)
        {

            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    TaxiDriver taxiDriver = new TaxiDriver();

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

        //Selects a taxi driver by id
        public static TaxiDriver SelectTaxiDriverById(int userId)
        {

            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    TaxiDriver taxiDriver = new TaxiDriver();

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

        //Selects a taxi
        public static Taxi SelectTaxi(int taxiId)
        {

            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    Taxi taxi = new Taxi();

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

        //Selects the type of the user
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

        //Checks if email is available
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

        //Checks if permission no is available
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

        //Updates user password and salt
        public static void ChangePassword(string email, string password, string salt)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("spUpdatePassword", con))
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

        //Selects city and country by zip code
        public static DataTable SelectZipCodeInfo(string zipCode)
        {
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

                            return table;
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