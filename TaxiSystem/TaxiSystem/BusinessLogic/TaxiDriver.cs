using System;

namespace TaxiSystem
{
    public class TaxiDriver: User
    {
        public string cprNo { get; set; }
        public string drivingLicenseNo { get; set; }
        public string taxiDriverNo { get; set; }
        public string taxiDriverExp { get; set; }
        public string bankAccount { get; set; }
        public double pensionPercent { get; set; }
        public double taxPercent { get; set; }
        public double taxDeductions { get; set; }
    }
}