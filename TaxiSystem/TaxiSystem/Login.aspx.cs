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

                User user = LoginHandler.CheckLogin(email, password);

                if (user != null)
                {
                    Response.Redirect("AccountOwner.aspx");
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
                Label1.Text = "Du har ikke ufyldt et eller flere felter";
            }

        }
    }
}