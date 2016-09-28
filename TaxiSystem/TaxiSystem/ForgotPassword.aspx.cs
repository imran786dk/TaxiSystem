using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiSystem
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                string email = TextBox20.Text;

                if (PasswordHandler.SendNewPassword(email) == true)
                {
                    Label1.ForeColor = Color.Black;
                    Label1.Text = "Ny kode er sendt";
                }
                else
                {
                    Label1.ForeColor = Color.Red;
                    Label1.Text = "Email er ikke gyldig";
                }
            }
            else
            {
                Label1.ForeColor = Color.Red;
                Label1.Text = "Email skal udfyldes";
            }

        }
    }
}