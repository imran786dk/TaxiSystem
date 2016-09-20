using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiSystem
{
    public class Taxi
    {
        public string licensePlate { get; set; }
        public string permissionNo { get; set; }
        public int units { get; set; }
        public int trips { get; set; }
        public int mileage { get; set; }
        public int occupiedMileage { get; set; }
        public int controlMileage { get; set; }
        public int vehicleMileage { get; set; }
        public string createDate { get; set; }
        public int taxiOwnerId { get; set; }

    }
}