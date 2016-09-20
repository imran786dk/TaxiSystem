using System;

namespace TaxiSystem
{
    public class TaxiOwner: User
    {
        public string cvrNo { get; set; }
        public string companyName { get; set; }
        public string password { get; set; }
        public string salt { get; set; }
    }
}