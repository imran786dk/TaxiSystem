﻿using System;

namespace TaxiSystem
{
    public partial class AccountAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("Inactivity.aspx");
            }
        }
    }
}