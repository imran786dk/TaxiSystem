using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiSystem
{
    public partial class UpdateOwner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int userId = int.Parse(Request.Cookies["ownerId"].Value);

            TaxiOwner dbOwner = TaxiOwnerHandler.GetTaxiOwnerById(userId);

            if(!IsPostBack)
            {
                DropDownList2.ClearSelection();
                DropDownList2.SelectedValue = (dbOwner.zipCode.ToString());

                TextBox20.Text = dbOwner.cvrNo;
                TextBox9.Text = dbOwner.companyName;
                TextBox21.Text = dbOwner.fName;
                TextBox22.Text = dbOwner.lName;
                TextBox23.Text = dbOwner.street;
                TextBox1.Text = dbOwner.city;
                TextBox30.Text = dbOwner.country;
                TextBox27.Text = dbOwner.tel;
                TextBox29.Text = dbOwner.email;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowAllOwner.aspx");
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

                    owner.companyName = TextBox9.Text;
                    owner.fName = TextBox21.Text;
                    owner.lName = TextBox22.Text;
                    owner.street = TextBox23.Text;
                    owner.zipCode = int.Parse(DropDownList2.SelectedValue);
                    owner.tel = TextBox27.Text;
                    owner.userId = int.Parse(Request.Cookies["ownerId"].Value);

                    if (TaxiOwnerHandler.ChangeOwner(owner) == true)
                    {
                        Label1.ForeColor = Color.Black;
                        Label1.Text = "Brugeren er opdateret";

                    }
                    else
                    {
                        Label1.ForeColor = Color.Red;
                        Label1.Text = "Brugeren blev ikke opdateret";
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