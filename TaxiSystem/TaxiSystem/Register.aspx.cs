using System;
using TaxiSystem.BusinessLogic;

namespace TaxiSystem
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string email = NameBox.Text;

            UserHandler.AddUser(email);
  
        }

    }
}