using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiSystem
{
    public class UserHandler
    {
        public static User GetZipCodeInfo(string zipCode)
        {

            return DbHelper.SelectZipCodeInfo(zipCode);

        }
    }
}