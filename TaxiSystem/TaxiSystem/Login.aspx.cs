using System;
using System.Collections.Generic;
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
            string email = TextBox20.Text;
            string password = TextBox9.Text;

            if (LoginHandler.LoginAccess(email, password) == true)
            {
                Session["New"] = email;

                Response.Redirect("CreateDriver.aspx");
            }
            else
            {
                Label1.Text = "Invalid credentials!";
            }
        }
    }
}