using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiSystem
{
    public partial class CreateDriver : System.Web.UI.Page
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
            string cprNo = TextBox20.Text;
            string fName = TextBox21.Text;
            string lName = TextBox22.Text;
            string street = TextBox23.Text;
            string zipCode = TextBox24.Text;
            string city = TextBox1.Text;
            string country = TextBox25.Text;
            string tel1 = TextBox27.Text;
            string tel2 = TextBox28.Text;
            string email = TextBox29.Text;
            string drivingLicenseNo = TextBox2.Text;
            string taxiDriverNo = TextBox3.Text;
            string taxiDriverExp = TextBox4.Text;
            string bankAccount = TextBox7.Text;
            string payCheckEmail = DropDownList1.SelectedValue;
            string pensionPercent = TextBox8.Text;
            string taxPercent = TextBox6.Text;
            string taxDeductions = TextBox5.Text;

            TaxiDriverHandler.AddDriver(cprNo, fName, lName, street, zipCode, city, country, tel1, tel2, email,
                drivingLicenseNo, taxiDriverNo, taxiDriverExp, bankAccount, payCheckEmail, pensionPercent, taxPercent, taxDeductions);

        }
    }
}