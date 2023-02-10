using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Software_project
{
    public partial class CreateAlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Creating_Click(object sender, EventArgs e)
        {


            if (NewPassword.Text == Renter.Text)
            {
                Database1Entities db = new Database1Entities();
               // var dbUserLogin = db.UserLogins;

                var newUserLogin = new UserLogin();

               // newUserLogin.FirstName = FirstName.Text;
                //newUserLogin.SecondName = SecondName.Text;
                //newOrder.Password = NewPassword.Text;

               // dbOrders.Add(newOrder);
                db.SaveChanges();

                Response.Redirect("UserLogin.aspx");
            }
        }
    }
}