using System;

namespace TaxiSystem
{
    public class TaxiOwner: User
    {
        public int cvrNo { get; set; }
        public string companyName { get; set; }
        public string password { get; set; }
        public string salt { get; set; }
    }
}