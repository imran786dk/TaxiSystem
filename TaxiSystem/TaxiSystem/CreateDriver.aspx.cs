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
            if (Session["TaxiOwner"] == null)
            {
                Response.Redirect("Inactivity.aspx");
            }

            if (!IsPostBack)
            {
                Calendar1.Visible = false;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            ClearInputs(Page.Controls);
            DropDownList2.SelectedIndex = 0;
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
                try
                {
                    string cprNo = TextBox20.Text;
                    string fName = TextBox21.Text;
                    string lName = TextBox22.Text;
                    string street = TextBox23.Text;
                    string zipCode = DropDownList2.SelectedValue;
                    string city = TextBox1.Text;
                    string country = TextBox30.Text;
                    string tel = TextBox27.Text;
                    string email = TextBox29.Text;
                    string drivingLicenseNo = TextBox9.Text;
                    string taxiDriverNo = TextBox10.Text;
                    string taxiDriverExp = TextBox11.Text;

                    if (LoginHandler.checkEmailAvailability(email) == true)
                    {
                        if (TaxiDriverHandler.AddDriver(cprNo, fName, lName, street, zipCode, city, country, tel, email,
                       drivingLicenseNo, taxiDriverNo, taxiDriverExp) == true)
                        {
                            Label1.ForeColor = Color.Black;
                            Label1.Text = "Chaufføren er gemt";

                            ClearInputs(Page.Controls);
                            DropDownList2.SelectedIndex = 0;
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
                        Label1.Text = "Email er i brug";
                    }
                }
                catch
                {
                    Label1.ForeColor = Color.Red;
                    Label1.Text = "Fejl i indtastning";
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

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string zipCode = DropDownList2.SelectedValue;

            User user = UserHandler.GetZipCodeInfo(zipCode);

            TextBox1.Text = user.city;
            TextBox30.Text = user.country;
        }
    }
}