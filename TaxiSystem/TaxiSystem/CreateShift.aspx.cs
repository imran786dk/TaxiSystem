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

            DropDownList1.SelectedIndex = 0;
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

                string date = TextBox11.Text;
                string taxiId = DropDownList1.SelectedValue;
                string userId = DropDownList2.SelectedValue;
                string drivingBookNo = TextBox2.Text;
                string drivingBookPage = TextBox3.Text;
                string units = TextBox4.Text;
                string trips = TextBox7.Text;
                string mileage = TextBox12.Text;
                string occupiedMileage = TextBox13.Text;
                string controlMileage = TextBox14.Text;
                string vehicleMileage = TextBox1.Text;
                string withoutMeter = TextBox5.Text;
                string errorTrips = TextBox6.Text;
                string onAccount = TextBox8.Text;

                string newUnits = TextBox20.Text;
                string newTrips = TextBox21.Text;
                string newMileage = TextBox22.Text;
                string newOccupiedMileage = TextBox23.Text;
                string newControlMileage = TextBox24.Text;

                if (ShiftHandler.AddShift(drivingBookNo, drivingBookPage, date, units, trips, mileage,
                    occupiedMileage, controlMileage, vehicleMileage, withoutMeter, errorTrips, onAccount, taxiId, userId) == true)
                {
                    if (TaxiHandler.updateTaxi(taxiId, newUnits, newTrips, newMileage, newOccupiedMileage, newControlMileage, vehicleMileage) == true)
                    {

                        Label1.ForeColor = Color.Black;
                        Label1.Text = "Vagten er gemt";
                    }

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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int taxiId = int.Parse(DropDownList1.SelectedValue);

            Taxi taxi = TaxiHandler.getTaxi(taxiId);

            TextBox29.Text = taxi.permissionNo;
            TextBox9.Text = taxi.units.ToString();
            TextBox10.Text = taxi.trips.ToString();
            TextBox16.Text = taxi.mileage.ToString();
            TextBox17.Text = taxi.occupiedMileage.ToString();
            TextBox18.Text = taxi.controlMileage.ToString();
            TextBox19.Text = taxi.vehicleMileage.ToString();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int userId = int.Parse(DropDownList2.SelectedValue);

            TaxiDriver taxiDriver = TaxiDriverHandler.getTaxiDriver(userId);

            TextBox28.Text = taxiDriver.fName + "" + taxiDriver.lName;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                string oldUnits = TextBox9.Text;
                string oldTrips = TextBox10.Text;
                string oldMileage = TextBox16.Text;
                string oldOccupiedMileage = TextBox17.Text;
                string oldControlMileage = TextBox18.Text;

                string newUnits = TextBox20.Text;
                string newTrips = TextBox21.Text;
                string newMileage = TextBox22.Text;
                string newOccupiedMileage = TextBox23.Text;
                string newControlMileage = TextBox24.Text;

                Shift shift = ShiftHandler.CalculateShift(oldUnits, oldTrips, oldMileage, oldOccupiedMileage, 
                    oldControlMileage, newUnits, newTrips, newMileage, newOccupiedMileage, newControlMileage);

                TextBox4.Text = shift.units.ToString();
                TextBox7.Text = shift.trips.ToString();
                TextBox12.Text = shift.mileage.ToString();
                TextBox13.Text = shift.occupiedMileage.ToString();
                TextBox14.Text = shift.controlMileage.ToString();

            }
        }
    }
}