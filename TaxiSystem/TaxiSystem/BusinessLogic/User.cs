using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiSystem.BusinessLogic
{
    public class User
    {
        public int UserId { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string CreateDate { get; set; }
        public string LastLogin { get; set; }
        public string Salt { get; set; }
        public string Status { get; set; }
        public string Type { get; set; }


    }
}