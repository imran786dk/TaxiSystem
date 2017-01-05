namespace TaxiSystem
{
    public class Taxi
    {
        public int taxiId { get; set; }
        public string licensePlate { get; set; }
        public string permissionNo { get; set; }
        public int units { get; set; }
        public int trips { get; set; }
        public int mileage { get; set; }
        public int occupiedMileage { get; set; }
        public int controlMileage { get; set; }
        public int vehicleMileage { get; set; }
        public string createDate { get; set; }
        public int userId { get; set; }

    }
}