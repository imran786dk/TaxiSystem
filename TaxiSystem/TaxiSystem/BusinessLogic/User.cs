using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiSystem
{
    public class User
    {
        public string fName { get; set; }
        public string lName { get; set; }
        public string street { get; set; }
        public string zipCode { get; set; }
        public string city { get; set; }
        public string country { get; set; }
        public string tel { get; set; }
        public string email { get; set; }
        public int type { get; set; }
        public string createDate { get; set; }
    }
}