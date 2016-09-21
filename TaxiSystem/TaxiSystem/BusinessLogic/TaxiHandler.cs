using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiSystem
{
    public class TaxiHandler
    {
        public static bool AddTaxi(string licensePlate, string permissionNo, string units, string trips, string mileage, string occupiedMileage,
            string controlMileage, string vehicleMileage)
        {
            Taxi taxi = new Taxi();

            taxi.licensePlate = licensePlate;
            taxi.permissionNo = permissionNo;
            taxi.units = int.Parse(units);
            taxi.trips = int.Parse(trips);
            taxi.mileage = int.Parse(mileage);
            taxi.occupiedMileage = int.Parse(occupiedMileage);
            taxi.controlMileage = int.Parse(controlMileage);
            taxi.vehicleMileage = int.Parse(vehicleMileage);
            taxi.createDate = DateTime.Now.ToShortDateString();

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
    }
}