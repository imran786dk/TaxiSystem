using System;
using System.Web.UI.WebControls;

namespace TaxiSystem
{
    public partial class ShowAllOwner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;

            string userId = row.Cells[1].Text;
            Response.Cookies["ownerId"].Value = userId;
            Response.Redirect("UpdateOwner.aspx");
        }
    }
}