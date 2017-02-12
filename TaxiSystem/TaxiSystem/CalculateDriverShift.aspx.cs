using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiSystem
{
    public partial class CalculateDriverShift : System.Web.UI.Page
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
                Calendar2.Visible = false;
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            TaxiDriver taxiDriver = TaxiDriverHandler.GetTaxiDriverById(int.Parse(DropDownList2.SelectedValue));

            TextBox1.Text = taxiDriver.fName + " " + taxiDriver.lName;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox11.Text = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
            Calendar1.Visible = false;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            TextBox42.Text = Calendar2.SelectedDate.ToString("yyyy-MM-dd");
            Calendar2.Visible = false;
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

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar2.Visible)
            {
                Calendar2.Visible = false;
            }
            else
            {
                Calendar2.Visible = true;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    TextBox2.Text = "0";
                    TextBox3.Text = "0";
                    TextBox4.Text = "0";
                    TextBox7.Text = "0";
                    TextBox9.Text = "0";
                    TextBox5.Text = "0";
                    TextBox6.Text = "0";
                    TextBox8.Text = "0";

                    string startDate = TextBox11.Text;
                    string endDate = TextBox42.Text;
                    int userId = int.Parse(DropDownList2.SelectedValue);

                    Shift totalShift = ShiftHandler.GetTotalShift(startDate, endDate, userId);

                    TextBox2.Text = totalShift.units.ToString();
                    TextBox3.Text = totalShift.trips.ToString();
                    TextBox4.Text = totalShift.mileage.ToString();
                    TextBox7.Text = totalShift.occupiedMileage.ToString();
                    TextBox9.Text = totalShift.controlMileage.ToString();
                    TextBox5.Text = totalShift.withoutMeter.ToString();
                    TextBox6.Text = totalShift.errorTrips.ToString();
                    TextBox8.Text = totalShift.onAccount.ToString();

                    TextBox10.Text = ShiftHandler.CalculatePay(totalShift.units).ToString("0.00");
                    TextBox12.Text = ShiftHandler.CalculateUnitPerMile(totalShift.units, totalShift.mileage).ToString("0.00");

                    Label1.ForeColor = Color.Black;
                    Label1.Text = "Total indkørt beregnet";

                }
                catch
                {
                    Label1.ForeColor = Color.Red;
                    Label1.Text = "Ingen indkørsel";
                }

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
    }
}