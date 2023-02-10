using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Software_project
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String FirstName = Session["First Name"].ToString();
            String LastName = Session["Last Name"].ToString();
            String Password = Session["Password"].ToString();



            Database1Entities db = new Database1Entities();
            var dbOrders = db.Orders;

            var order = new Order();

            foreach (var customer in dbOrders)
            {
                if (FirstName == order.FirstName && LastName == order.SecondName && Password == order.Password)
                {
                    Response.Redirect("order.aspx");
                }
                else
                {
                    Response.Redirect("UserLogin.aspx");
                }
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("order.aspx");
        }
    }
}