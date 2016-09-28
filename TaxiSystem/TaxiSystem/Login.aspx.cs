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

                    if (taxiOwner != null)
                    {
                        Response.Redirect("TaxiOwnerAccount.aspx");
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
                        Response.Redirect("Inactivity.aspx");
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