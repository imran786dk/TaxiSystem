using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiSystem
{
    public class ShiftHandler
    {
        public static bool AddShift(string drivingBookNo, string drivingBookPage, string date, string units, string trips, string mileage, string occupiedMileage,
            string controlMileage, string vehicleMileage, string withoutMeter, string errorTrips, string onAccount)
        {
            Shift shift = new Shift();

            shift.drivingBookNo = drivingBookNo;
            shift.drivingBookPage = int.Parse(drivingBookPage);
            shift.date = date;
            shift.units = int.Parse(units);
            shift.trips = int.Parse(trips);
            shift.mileage = int.Parse(mileage);
            shift.occupiedMileage = int.Parse(occupiedMileage);
            shift.controlMileage = int.Parse(controlMileage);
            shift.vehicleMileage = int.Parse(vehicleMileage);
            shift.withoutMeter = int.Parse(withoutMeter);
            shift.errorTrips = int.Parse(withoutMeter);
            shift.onAccount = double.Parse(withoutMeter);

            shift.createDate = DateTime.Now.ToShortDateString();

            try
            {
                DbHelper.CreateShift(shift);
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}