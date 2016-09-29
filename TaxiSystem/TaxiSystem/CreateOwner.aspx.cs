using System;
using System.Drawing;
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
                    string cvrNo = TextBox20.Text;
                    string companyName = TextBox9.Text;
                    string fName = TextBox21.Text;
                    string lName = TextBox22.Text;
                    string street = TextBox23.Text;
                    string zipCode = DropDownList2.SelectedValue;
                    string city = TextBox1.Text;
                    string country = TextBox30.Text;
                    string tel = TextBox27.Text;
                    string email = TextBox29.Text;

                    if (LoginHandler.checkEmailAvailability(email) == true)
                    {
                        if (TaxiOwnerHandler.AddOwner(cvrNo, companyName, fName, lName, street, zipCode, city, country, tel, email) == true)
                        {
                            Label1.ForeColor = Color.Black;
                            Label1.Text = "Brugeren er gemt";

                            ClearInputs(Page.Controls);
                            DropDownList2.SelectedIndex = 0;
                        }
                        else
                        {
                            Label1.ForeColor = Color.Red;
                            Label1.Text = "Brugeren blev ikke gemt";
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

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

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