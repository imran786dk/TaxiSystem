using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace TaxiSystem
{
    public partial class UpdateDriver : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TaxiOwner"] == null)
            {
                Response.Redirect("Inactivity.aspx");
            }

            string driverEmail = Request.Cookies["driverEmail"].Value;

            TaxiDriver dbDriver = TaxiDriverHandler.GetTaxiDriver(driverEmail);

            Response.Cookies["driverId"].Value = dbDriver.userId.ToString();

            if (!IsPostBack)
            {
                Calendar1.Visible = false;
                DropDownList2.ClearSelection();
                DropDownList2.SelectedValue = (dbDriver.zipCode.ToString());

                TextBox20.Text = dbDriver.cprNo;
                TextBox21.Text = dbDriver.fName;
                TextBox22.Text = dbDriver.lName;
                TextBox23.Text = dbDriver.street;
                TextBox1.Text = dbDriver.city;
                TextBox30.Text = dbDriver.country;
                TextBox27.Text = dbDriver.tel;
                TextBox29.Text = dbDriver.email;
                TextBox9.Text = dbDriver.drivingLicenseNo;
                TextBox10.Text = dbDriver.taxiDriverNo;
                TextBox11.Text = dbDriver.taxiDriverExp;
            }
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowAllDriver.aspx");
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
                    TaxiDriver driver = new TaxiDriver();

                    driver.fName = TextBox21.Text;
                    driver.lName = TextBox22.Text;
                    driver.street = TextBox23.Text;
                    driver.zipCode = int.Parse(DropDownList2.SelectedValue);
                    driver.tel = TextBox27.Text;
                    driver.drivingLicenseNo = TextBox9.Text;
                    driver.taxiDriverExp = TextBox11.Text;
                    driver.userId = int.Parse(Request.Cookies["driverId"].Value);


                    if (TaxiDriverHandler.ChangeDriver(driver) == true)
                    {
                        Label1.ForeColor = Color.Black;
                        Label1.Text = "Chaufføren er opdateret";

                    }
                    else
                    {
                        Label1.ForeColor = Color.Red;
                        Label1.Text = "Chaufføren blev ikke opdateret";
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