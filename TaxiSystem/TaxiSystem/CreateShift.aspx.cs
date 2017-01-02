using System;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiSystem
{
    public partial class CreateShift : System.Web.UI.Page
    {
        int oldVehicleMileage;
        string permissionNo;

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
                try
                {
                    string oldUnits = TextBox15.Text;
                    string oldTrips = TextBox25.Text;
                    string oldMileage = TextBox26.Text;
                    string oldOccupiedMileage = TextBox27.Text;
                    string oldControlMileage = TextBox30.Text;

                    string newUnits = TextBox31.Text;
                    string newTrips = TextBox32.Text;
                    string newMileage = TextBox33.Text;
                    string newOccupiedMileage = TextBox34.Text;
                    string newControlMileage = TextBox35.Text;
                    string newVehicleMileage = TextBox41.Text;

                    Shift shift = ShiftHandler.CalculateShift(oldUnits, oldTrips, oldMileage, oldOccupiedMileage,
                                  oldControlMileage, oldVehicleMileage, newUnits, newTrips, newMileage, newOccupiedMileage, newControlMileage, newVehicleMileage);

                    TextBox36.Text = shift.units.ToString();
                    TextBox37.Text = shift.trips.ToString();
                    TextBox38.Text = shift.mileage.ToString();
                    TextBox39.Text = shift.occupiedMileage.ToString();
                    TextBox40.Text = shift.controlMileage.ToString();

                    string date = TextBox11.Text;
                    string taxiId = DropDownList1.SelectedValue;
                    string userId = DropDownList2.SelectedValue;
                    string drivingBookNo = TextBox2.Text;
                    string drivingBookPage = TextBox3.Text;

                    string withoutMeter = TextBox5.Text;
                    string errorTrips = TextBox6.Text;
                    string onAccount = TextBox8.Text;

                    if (TaxiHandler.updateTaxi(taxiId, newUnits, newTrips, newMileage, newOccupiedMileage, newControlMileage, newVehicleMileage) == true)
                    {
                        string units = TextBox36.Text;
                        string trips = TextBox37.Text;
                        string mileage = TextBox38.Text;
                        string occupiedMileage = TextBox39.Text;
                        string controlMileage = TextBox40.Text;

                        if (ShiftHandler.AddShift(drivingBookNo, drivingBookPage, date, units, trips, mileage,
                        occupiedMileage, controlMileage, newVehicleMileage, withoutMeter, errorTrips, onAccount, taxiId, userId) == true)
                        {
                            Label1.ForeColor = Color.Black;
                            Label1.Text = "Vagten er gemt";

                            ClearInputs(Page.Controls);

                            DropDownList1.SelectedIndex = 0;
                            DropDownList2.SelectedIndex = 0;
                        }

                    }
                    else
                    {
                        Label1.ForeColor = Color.Red;
                        Label1.Text = "Vagten blev ikke gemt";
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

            TextBox15.Text = taxi.units.ToString();
            TextBox25.Text = taxi.trips.ToString();
            TextBox26.Text = taxi.mileage.ToString();
            TextBox27.Text = taxi.occupiedMileage.ToString();
            TextBox30.Text = taxi.controlMileage.ToString();
            permissionNo = taxi.permissionNo;
            oldVehicleMileage = taxi.mileage;
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int userId = int.Parse(DropDownList2.SelectedValue);

            TaxiDriver taxiDriver = TaxiDriverHandler.getTaxiDriver(userId);

            string taxiDriverName = taxiDriver.fName + " " + taxiDriver.lName;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    string oldUnits = TextBox15.Text;
                    string oldTrips = TextBox25.Text;
                    string oldMileage = TextBox26.Text;
                    string oldOccupiedMileage = TextBox27.Text;
                    string oldControlMileage = TextBox30.Text;

                    string newUnits = TextBox31.Text;
                    string newTrips = TextBox32.Text;
                    string newMileage = TextBox33.Text;
                    string newOccupiedMileage = TextBox34.Text;
                    string newControlMileage = TextBox35.Text;
                    string newVehicleMileage = TextBox41.Text;

                    Shift shift = ShiftHandler.CalculateShift(oldUnits, oldTrips, oldMileage, oldOccupiedMileage,
                                  oldControlMileage, oldVehicleMileage, newUnits, newTrips, newMileage, newOccupiedMileage, newControlMileage, newVehicleMileage);

                    TextBox36.Text = shift.units.ToString();
                    TextBox37.Text = shift.trips.ToString();
                    TextBox38.Text = shift.mileage.ToString();
                    TextBox39.Text = shift.occupiedMileage.ToString();
                    TextBox40.Text = shift.controlMileage.ToString();

                    Label1.ForeColor = Color.Black;
                    Label1.Text = "Klar til at gemme vagten";
                }
                catch
                {
                    Label1.ForeColor = Color.Red;
                    Label1.Text = "Fejl i indtastning";
                }

            }
        }
    }
}