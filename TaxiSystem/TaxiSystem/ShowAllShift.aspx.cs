﻿using System;

namespace TaxiSystem
{
    public partial class ShowAllShift : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TaxiOwner"] == null)
            {
                Response.Redirect("Inactivity.aspx");
            }

        }
    }
}