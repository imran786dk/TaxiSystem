using System;
using System.Data;

namespace TaxiSystem
{
    public class TaxiHandler
    {
        //Adds a Taxi
        public static bool AddTaxi(Taxi taxi)
        {

            taxi.createDate = DateTime.Now.ToString("yyyy-MM-dd");
            taxi.statusId = 1;

            try
            {
                DbHelper.CreateTaxi(taxi);

                return true;
            }
            catch
            {
                return false;
            }
        }

        //Updates taxi's taximeter details
        public static bool UpdateTaxi(Taxi taxi)
        {

            try
            {
                DbHelper.UpdateTaxi(taxi);
                return true;
            }
            catch
            {
                throw;
            }
        }

        //Returns if the permission no. is available
        public static bool CheckTaxi(string permissionNo)
        {

            return DbHelper.CheckTaxi(permissionNo);
        }

        //Returns a taxi
        public static Taxi GetTaxi(int taxiId)
        {
            return DbHelper.SelectTaxi(taxiId);
        }
    }
}