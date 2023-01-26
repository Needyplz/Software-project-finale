using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Software_project
{

    public partial class order : System.Web.UI.Page
    {
        
        
        double total;
        String x;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddP_Click(object sender, EventArgs e)
        {
            double num;
            double p = 3.9;

            if(txtTotal.Text.Length > 0)
            {
                x = ""+txtTotal.Text;
                num = Double.Parse(x);
            }
            else
            {
                num = 0;
            }
            
            total = p + num;
            

            txtTotal.Text = ""+total;


            Database1Entities db = new Database1Entities();
            var dbOrder = db.Orders;

            var newOrder = new Order();

            newOrder.Name = lblNamePrice2.Text;
            newOrder.Price = txtTotal.Text;

            dbOrder.Add(newOrder);
            db.SaveChanges();
            
        }

        protected void btnAddM_Click(object sender, EventArgs e)
        {
            double num;
            double m = 3.6;

            if(txtTotal.Text.Length > 0)
            {
                x = "" + txtTotal.Text;
                num = Double.Parse(x);
            }
            else
            {
                num = 0;
            }

            total = m + num;


            txtTotal.Text = "" + total;
            
            Database1Entities db = new Database1Entities();
            var dbOrder = db.Orders;

            var newOrder = new Order();

            newOrder.Name = lblNamePrice.Text;
            newOrder.Price = txtTotal.Text;

            dbOrder.Add(newOrder);
            db.SaveChanges();
        }

        protected void txtTotal_TextChanged(object sender, EventArgs e)
        {

        }
    }

 }

        