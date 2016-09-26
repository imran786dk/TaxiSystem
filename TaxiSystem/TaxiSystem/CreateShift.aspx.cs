using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiSystem
{
    public partial class CreateShift : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
            }
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
            if (Page.IsValid)
            {

                string date = TextBox11.Text;
                string permissionNo = TextBox9.Text;
                string taxiDriverNo = TextBox10.Text;
                string drivingBookNo = TextBox2.Text;
                string drivingBookPage = TextBox3.Text;
                string units = TextBox20.Text;
                string trips = TextBox21.Text;
                string mileage = TextBox22.Text;
                string occupiedMileage = TextBox23.Text;
                string controlMileage = TextBox24.Text;
                string vehicleMileage = TextBox1.Text;
                string withoutMeter = TextBox5.Text;
                string errorTrips = TextBox6.Text;
                string onAccount = TextBox8.Text;

                if (ShiftHandler.AddShift(drivingBookNo, drivingBookPage, date, units, trips, mileage,
                    occupiedMileage, controlMileage, vehicleMileage, withoutMeter, errorTrips, onAccount) == true)
                {
                    Label1.ForeColor = Color.Black;
                    Label1.Text = "Vagten er gemt";
                }
                else
                {
                    Label1.ForeColor = Color.Red;
                    Label1.Text = "Vagten blev ikke gemt";
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
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox11.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

    }
}