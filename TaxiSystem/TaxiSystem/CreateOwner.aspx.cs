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
                    TaxiOwner owner = new TaxiOwner();

                    owner.cvrNo = TextBox20.Text;
                    owner.companyName = TextBox9.Text;
                    owner.fName = TextBox21.Text;
                    owner.lName = TextBox22.Text;
                    owner.street = TextBox23.Text;
                    owner.zipCode = int.Parse(DropDownList2.SelectedValue);
                    owner.city = TextBox1.Text;
                    owner.country = TextBox30.Text;
                    owner.tel = TextBox27.Text;
                    owner.email = TextBox29.Text;

                    if (LoginHandler.checkEmailAvailability(owner.email) == true)
                    {
                        if (TaxiOwnerHandler.AddOwner(owner) == true)
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