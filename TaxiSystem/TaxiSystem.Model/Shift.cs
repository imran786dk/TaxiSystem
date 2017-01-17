namespace TaxiSystem
{
    public class Shift
    {
        public int shiftId { get; set; }
        public string drivingBookNo { get; set; }
        public int drivingBookPage { get; set; }
        public string shiftDate { get; set; }
        public int units { get; set; }
        public int trips { get; set; }
        public int mileage { get; set; }
        public int occupiedMileage { get; set; }
        public int controlMileage { get; set; }
        public int withoutMeter { get; set; }
        public int errorTrips { get; set; }
        public int onAccount { get; set; }
        public int vehicleMileage { get; set; }
        public string createDate { get; set; }
        public int taxiId { get; set; }
        public int userId { get; set; }
        public int statusId { get; set; }
    }
}