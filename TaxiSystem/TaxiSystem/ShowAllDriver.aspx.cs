using System;
using System.Web.UI.WebControls;

namespace TaxiSystem
{
    public partial class ShowAllTaxi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TaxiOwner"] == null)
            {
                Response.Redirect("Inactivity.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;

            string email = row.Cells[14].Text;
            Response.Cookies["driverEmail"].Value = email;
            Response.Redirect("UpdateDriver.aspx");
        }
    }
}