﻿using System;

namespace TaxiSystem
{
    public partial class ShowDriverDetail : System.Web.UI.Page
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