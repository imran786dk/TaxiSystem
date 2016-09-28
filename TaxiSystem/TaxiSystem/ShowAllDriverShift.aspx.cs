﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiSystem
{
    public partial class ShowAllDriverShift : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TaxiDriver"] == null)
            {
                Response.Redirect("Inactivity.aspx");
            }
        }
    }
}