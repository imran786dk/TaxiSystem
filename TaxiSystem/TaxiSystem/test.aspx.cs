using System;

namespace TaxiSystem
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)


        {

            DateTime date = DateTime.Now;

            TextBox1.Text = date.ToString("yyyy-MM-dd");
        }
    }
}