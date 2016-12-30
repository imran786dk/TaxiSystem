using System;

namespace TaxiSystem
{
    public partial class ShowAllDriverShift : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TaxiDriver"] == null)
            {
                Response.Redirect("Inactivity.aspx");
            }
        }
    }
}