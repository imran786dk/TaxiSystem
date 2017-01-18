using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiSystem
{
    public partial class ShowAllDriversShift : System.Web.UI.Page
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

            string taxiDriverNo = row.Cells[4].Text;
            Response.Cookies["TaxiDriverNo"].Value = taxiDriverNo;
            Response.Redirect("ShowDriverShift.aspx");
        }
    }
}