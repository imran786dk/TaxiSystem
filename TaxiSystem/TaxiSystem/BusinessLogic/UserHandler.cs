using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TaxiSystem.DataAccess;

namespace TaxiSystem.BusinessLogic
{
    public class UserHandler
    {
        public static void AddUser(string email)
        {
            User user = new User();

            user.Email = email;
            DbHelper.CreateUser(user);

        }
    }
}