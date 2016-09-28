using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TaxiOwner"] != null)
            {
                Response.Redirect("AccountTaxiOwner.aspx");
            }

            else if (Session["TaxiDriver"] != null)
            {
                Response.Redirect("AccountTaxiDriver.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {           

            if (Page.IsValid)
            {
                string email = TextBox20.Text;
                string password = TextBox9.Text;

                int type = LoginHandler.GetType(email);

                if(type == 2)
                {
                    TaxiOwner taxiOwner = LoginHandler.TaxiOwnerLogin(email, password);

                    Session["TaxiOwner"] = taxiOwner.userId;

                    if (taxiOwner != null)
                    {
                        Response.Redirect("AccountTaxiOwner.aspx");
                    }
                    else
                    {
                        Label1.ForeColor = Color.Red;
                        Label1.Text = "Forkert email eller adgangskode";
                    }
                }
                else if (type == 3)
                {
                    TaxiDriver taxiDriver = LoginHandler.TaxiDriverLogin(email, password);

                    Session["TaxiDriver"] = taxiDriver.userId;

                    if (taxiDriver != null)
                    { 
                        Response.Redirect("AccountTaxiDriver.aspx");
                    }
                    else
                    {
                        Label1.ForeColor = Color.Red;
                        Label1.Text = "Forkert email eller adgangskode";
                    }
                }
                else
                {
                    Label1.ForeColor = Color.Red;
                    Label1.Text = "Forkert email eller adgangskode";
                }
            }
            else
            {
                Label1.ForeColor = Color.Red;
                Label1.Text = "Et eller flere felter skal udfyldes";
            }

        }
    }
}