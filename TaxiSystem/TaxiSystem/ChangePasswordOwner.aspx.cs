﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiSystem
{
    public partial class ChangePasswordOwner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TaxiOwner"] == null)
            {
                Response.Redirect("Inactivity.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            TaxiOwner taxiOwner = TaxiOwnerHandler.GetTaxiOwnerById((int)Session["TaxiOwner"]);

            string email = taxiOwner.email;
            string passwordOld = TextBox1.Value;
            string passwordNew = TextBox2.Value;
            string passwordRepeat = TextBox3.Value;

            if (LoginHandler.TaxiOwnerLogin(email, passwordOld) != null)
            {

                if (PasswordHandler.CompareNewPassword(passwordNew, passwordRepeat) == true)
                {
                    if (PasswordHandler.ValidateNewPassword(passwordNew) == true)
                    {
                        try
                        {
                            PasswordHandler.UpdatePassword(passwordNew, email);
                            Label1.ForeColor = System.Drawing.Color.Black;
                            Label1.Text = "Koden er skiftet";
                        }
                        catch
                        {
                            Label1.ForeColor = System.Drawing.Color.Red;
                            Label1.Text = "Koden blev ikke skiftet";
                        }
                    }
                    else
                    {
                        Label1.ForeColor = System.Drawing.Color.Red;
                        Label1.Text = "Koden skal have min 8 karakterer";
                    }
                }
                else
                {
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "Den nye kode matcher ikke";
                }
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Forkert kode";
            }
        }
    }
}