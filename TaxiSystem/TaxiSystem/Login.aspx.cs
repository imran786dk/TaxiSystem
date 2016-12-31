using System;
using System.Drawing;
using System.Web.UI;

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
                string email = TextBox20.Value;
                string password = TextBox9.Value;

                int type = LoginHandler.GetType(email);

                if (type == 2)
                {
                    TaxiOwner taxiOwner = LoginHandler.TaxiOwnerLogin(email, password);

                    if (taxiOwner != null)
                    {
                        Session["TaxiOwner"] = taxiOwner.userId;
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

                    if (taxiDriver != null)
                    {

                        Session["TaxiDriver"] = taxiDriver.userId;
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