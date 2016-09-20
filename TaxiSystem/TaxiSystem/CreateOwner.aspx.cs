using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiSystem
{
    public partial class CreateOwner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClearInputs(Page.Controls);
        }
        void ClearInputs(ControlCollection ctrls)
        {
            foreach (Control ctrl in ctrls)
            {
                if (ctrl is TextBox)
                    ((TextBox)ctrl).Text = string.Empty;
                ClearInputs(ctrl.Controls);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string cvrNo = TextBox20.Text;
            string companyName = TextBox9.Text;
            string fName = TextBox21.Text;
            string lName = TextBox22.Text;
            string street = TextBox23.Text;
            string zipCode = TextBox24.Text;
            string city = TextBox1.Text;
            string country = TextBox25.Text;
            string tel = TextBox27.Text;
            string email = TextBox29.Text;

            if (TaxiOwnerHandler.AddOwner(cvrNo, companyName, fName, lName, street, zipCode, city, country, tel, email) == true)
            {
                Label1.Text = "Brugeren er gemt";
            }
            else
            {
                Label1.Text = "Brugeren blev ikke gemt";
            }

        }
    }
}