using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiSystem
{
    public partial class CreateTaxi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string licensePlate = TextBox20.Text;
                string permissionNo = TextBox9.Text;
                string units = TextBox21.Text;
                string trips = TextBox22.Text;
                string mileage = TextBox23.Text;
                string occupiedMileage = TextBox24.Text;
                string controlMileage = TextBox1.Text;
                string vehicleMileage = TextBox25.Text;

                if (TaxiHandler.AddTaxi(licensePlate, permissionNo, units, trips, mileage, occupiedMileage, controlMileage, vehicleMileage) == true)
                {
                    Label1.ForeColor = Color.Black;
                    Label1.Text = "Taxien er gemt";
                }
                else
                {
                    Label1.ForeColor = Color.Red;
                    Label1.Text = "Taxien blev ikke gemt";
                }
            }
            else
            {
                Label1.ForeColor = Color.Red;
                Label1.Text = "Et eller flere felter skal udfyldes";
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

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

    }
}