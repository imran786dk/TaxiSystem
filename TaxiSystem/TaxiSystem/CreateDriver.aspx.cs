using System;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiSystem
{
    public partial class CreateDriver : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Calendar1.Visible = false;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            ClearInputs(Page.Controls);
            DropDownList1.SelectedIndex = 0;
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
            if (Page.IsValid)
            {
                string cprNo = TextBox20.Text;
                string fName = TextBox21.Text;
                string lName = TextBox22.Text;
                string street = TextBox23.Text;
                string zipCode = TextBox24.Text;
                string city = TextBox1.Text;
                string country = DropDownList1.SelectedValue;
                string tel = TextBox27.Text;
                string email = TextBox29.Text;
                string drivingLicenseNo = TextBox9.Text;
                string taxiDriverNo = TextBox10.Text;
                string taxiDriverExp = TextBox11.Text;
                string bankAccount = TextBox7.Text;
                string pensionPercent = TextBox8.Text;
                string taxPercent = TextBox6.Text;
                string taxDeductions = TextBox5.Text;


                if (TaxiDriverHandler.AddDriver(cprNo, fName, lName, street, zipCode, city, country, tel, email,
                    drivingLicenseNo, taxiDriverNo, taxiDriverExp, bankAccount, pensionPercent, taxPercent, taxDeductions) == true)
                {
                    Label1.ForeColor = Color.Black;
                    Label1.Text = "Chaufføren er gemt";
                }
                else
                {
                    Label1.ForeColor = Color.Red;
                    Label1.Text = "Chaufføren blev ikke gemt";
                }
            }
            else
            {
                Label1.ForeColor = Color.Red;
                Label1.Text = "Et eller flere felter skal udfyldes";
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
            
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox11.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

    }
}