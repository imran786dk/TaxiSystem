using System;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiSystem
{
    public partial class CreateShift : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Visible = false;

            if (Session["TaxiOwner"] == null)
            {
                Response.Redirect("Inactivity.aspx");
            }

            if (!IsPostBack)
            {
                Calendar1.Visible = false;
                Button2.Visible = false;
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
                    Taxi taxiNew = new Taxi();

                    taxiNew.units = int.Parse(TextBox15.Text);
                    taxiNew.trips = int.Parse(TextBox25.Text);
                    taxiNew.mileage = int.Parse(TextBox26.Text);
                    taxiNew.occupiedMileage = int.Parse(TextBox27.Text);
                    taxiNew.controlMileage = int.Parse(TextBox30.Text);
                    taxiNew.vehicleMileage = int.Parse(TextBox41.Text);
                    taxiNew.taxiId = int.Parse(DropDownList1.SelectedValue);

                    Shift shift = new Shift(); ;

                    shift.units = int.Parse(TextBox36.Text);
                    shift.trips = int.Parse(TextBox37.Text);
                    shift.mileage = int.Parse(TextBox38.Text);
                    shift.occupiedMileage = int.Parse(TextBox39.Text);
                    shift.controlMileage = int.Parse(TextBox40.Text);

                    shift.date = TextBox11.Text;
                    shift.taxiId = int.Parse(DropDownList1.SelectedValue);
                    shift.userId = int.Parse(DropDownList2.SelectedValue);
                    shift.drivingBookNo = TextBox2.Text;
                    shift.drivingBookPage = int.Parse(TextBox3.Text);
                    shift.withoutMeter = int.Parse(TextBox5.Text);
                    shift.errorTrips = int.Parse(TextBox6.Text);
                    shift.onAccount = int.Parse(TextBox8.Text);
                    shift.vehicleMileage = int.Parse(TextBox41.Text);

                    if (TaxiHandler.UpdateTaxi(taxiNew) == true)
                    {

                        if (ShiftHandler.AddShift(shift) == true)
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
            TextBox11.Text = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
            Calendar1.Visible = false;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            Taxi taxi = TaxiHandler.GetTaxi(int.Parse(DropDownList1.SelectedValue));

            TextBox31.Text = taxi.units.ToString();
            TextBox32.Text = taxi.trips.ToString();
            TextBox33.Text = taxi.mileage.ToString();
            TextBox34.Text = taxi.occupiedMileage.ToString();
            TextBox35.Text = taxi.controlMileage.ToString();
            TextBox4.Text = taxi.vehicleMileage.ToString();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

            TaxiDriver taxiDriver = TaxiDriverHandler.GetTaxiDriverById(int.Parse(DropDownList2.SelectedValue));

            TextBox1.Text = taxiDriver.fName+" "+taxiDriver.lName;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    Taxi taxiOld = new Taxi();
                    Taxi taxiNew = new Taxi();

                    taxiOld.units = int.Parse(TextBox31.Text);
                    taxiOld.trips = int.Parse(TextBox32.Text);
                    taxiOld.mileage = int.Parse(TextBox33.Text);
                    taxiOld.occupiedMileage = int.Parse(TextBox34.Text);
                    taxiOld.controlMileage = int.Parse(TextBox35.Text);
                    taxiOld.vehicleMileage = int.Parse(TextBox4.Text);

                    taxiNew.units = int.Parse(TextBox15.Text);
                    taxiNew.trips = int.Parse(TextBox25.Text);
                    taxiNew.mileage = int.Parse(TextBox26.Text);
                    taxiNew.occupiedMileage = int.Parse(TextBox27.Text);
                    taxiNew.controlMileage = int.Parse(TextBox30.Text);
                    taxiNew.vehicleMileage = int.Parse(TextBox41.Text);

                    Shift shift = ShiftHandler.CalculateShift(taxiOld, taxiNew);

                    TextBox36.Text = shift.units.ToString();
                    TextBox37.Text = shift.trips.ToString();
                    TextBox38.Text = shift.mileage.ToString();
                    TextBox39.Text = shift.occupiedMileage.ToString();
                    TextBox40.Text = shift.controlMileage.ToString();

                    Label1.ForeColor = Color.Black;
                    Label1.Text = "Klar til at gemme vagten";
                    Button2.Visible = true;
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