using System;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiSystem
{
    public partial class CreateTaxi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TaxiOwner"] == null)
            {
                Response.Redirect("Inactivity.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    Taxi taxi = new Taxi();

                    taxi.userId = (int)Session["TaxiOwner"];
                    taxi.licensePlate = TextBox20.Text;
                    taxi.permissionNo = TextBox9.Text;
                    taxi.units = int.Parse(TextBox21.Text);
                    taxi.trips = int.Parse(TextBox22.Text);
                    taxi.mileage = int.Parse(TextBox23.Text);
                    taxi.occupiedMileage = int.Parse(TextBox24.Text);
                    taxi.controlMileage = int.Parse(TextBox1.Text);
                    taxi.vehicleMileage = int.Parse(TextBox25.Text);

                    if (TaxiHandler.CheckTaxi(taxi.permissionNo) == true)
                    {

                        if (TaxiHandler.AddTaxi(taxi) == true)
                        {
                            Label1.ForeColor = Color.Black;
                            Label1.Text = "Taxien er gemt";

                            ClearInputs(Page.Controls);
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
                        Label1.Text = "Taxien findes allerede";
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

    }
}