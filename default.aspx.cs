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



        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string logged = Session["Logged"].ToString();

 

   
            
            if (logged == "Yes")
            {
                 Response.Redirect("order.aspx");
            }
            else
            {
                 Response.Redirect("UserLogin.aspx");
            }
            
        }
    }
}