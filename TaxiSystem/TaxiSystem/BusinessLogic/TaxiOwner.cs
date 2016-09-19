using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiSystem
{
    public class TaxiOwner
    {
        public int cvrNo { get; set; }
        public string companyName { get; set; }
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
    }
}