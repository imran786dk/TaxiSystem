using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;

namespace TaxiSystem
{
    public class ShiftHandler
    {
        public static bool AddShift(string drivingBookNo, string drivingBookPage, string date, string units, string trips, string mileage, string occupiedMileage,
            string controlMileage, string vehicleMileage, string withoutMeter, string errorTrips, string onAccount, string taxiId, string userId)
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
            shift.errorTrips = int.Parse(errorTrips);
            shift.onAccount = int.Parse(onAccount);
            shift.taxiId = int.Parse(taxiId);
            shift.userId = int.Parse(userId);

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

        public static Shift CalculateShift(string oldUnits,string oldTrips, string oldMileage, string oldOccupiedMileage, string oldControlMileage, string newUnits, string newTrips,
            string newMileage, string newOccupiedMileage, string newControlMileage)
        {

            Shift shift = new Shift();
            try
            {
                shift.units = int.Parse(newUnits) - int.Parse(oldUnits);
                shift.trips = int.Parse(newTrips) - int.Parse(oldTrips);
                shift.mileage = int.Parse(newMileage) - int.Parse(oldMileage);
                shift.occupiedMileage = int.Parse(newOccupiedMileage) - int.Parse(oldOccupiedMileage);
                shift.controlMileage = int.Parse(newControlMileage) - int.Parse(oldControlMileage);

                return shift;
            }
            catch
            {
                return null;
            }
        }
    }
}