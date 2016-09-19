using System;

namespace TaxiSystem
{
    public class TaxiDriver
    {
        public int cprNo { get; set; }
        public string fName { get; set; }
        public string lName { get; set; }
        public string street { get; set; }
        public int zipCode { get; set; }
        public string city { get; set; }
        public string country { get; set; }
        public int tel1 { get; set; }
        public int tel2 { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public DateTime createDate { get; set; }
        public string salt { get; set; }
        public int status { get; set; }
        public int type { get; set; }
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