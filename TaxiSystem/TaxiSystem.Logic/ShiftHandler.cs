using System;

namespace TaxiSystem
{
    public class ShiftHandler
    {
        //Creates a shift
        public static bool AddShift(Shift shift)
        {
            shift.statusId = 1;
            shift.createDate = DateTime.Now.ToString("yyyy-MM-dd");
            

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

        //Calculate and validates a shift
        public static Shift CalculateShift(Taxi taxiOld, Taxi taxiNew)
        {

            Shift shift = new Shift();

            int vehicleMileage = taxiNew.vehicleMileage - taxiOld.vehicleMileage;
            shift.units = taxiNew.units - taxiOld.units;
            shift.trips = taxiNew.trips - taxiOld.trips;
            shift.mileage = taxiNew.mileage - taxiOld.mileage;
            shift.occupiedMileage = taxiNew.occupiedMileage - taxiOld.occupiedMileage;
            shift.controlMileage = taxiNew.controlMileage - taxiOld.controlMileage;

            if (shift.units>=0 && shift.trips>=0 && shift.mileage>=0 && shift.occupiedMileage>=0 && shift.controlMileage>=0 && vehicleMileage>=0 )
            {
                return shift;
            }
            else
            {
                return null;
            }

        }

        //Returns total shift
        public static Shift GetTotalShift(string startDate, string endDate, int userId)
        {
            return DbHelper.CalcTaxiDriverTotShift(startDate, endDate, userId);
        }

        //Returns pay
        public static double CalculatePay(int units, int withoutMeter, int errorTrips, int onAccount)
        {
            double payShare = 0.50;

            double pay = ((units + withoutMeter - errorTrips) * payShare) - onAccount;

            return pay;
        }

        //Returns pay
        public static double CalculateUnitPerMile(int units, int withoutMeter, int errorTrips, int mileage)
        {
            double UnitPerMile = (double) (units + withoutMeter - errorTrips) / mileage;

            return UnitPerMile;
        }
    }
}