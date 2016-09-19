using System;

namespace TaxiSystem
{
    public class TaxiDriver: User
    {
        public int cprNo { get; set; }
        public int drivingLicenseNo { get; set; }
        public int taxiDriverNo { get; set; }
        public DateTime taxiDriverExp { get; set; }
        public int bankAccount { get; set; }
        public string payCheckEmail { get; set; }
        public double pensionPercent { get; set; }
        public double taxPercent { get; set; }
        public double taxDeductions { get; set; }
    }
}