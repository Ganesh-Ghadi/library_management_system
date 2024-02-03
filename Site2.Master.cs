using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace library_management_system
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("author-management.aspx");
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("publisher-management.aspx");
        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("book-inventory.aspx");
        }

        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            Response.Redirect("book-issueing.aspx");
        }

        protected void LinkButton16_Click(object sender, EventArgs e)
        {
            Response.Redirect("member-management.aspx");
        }


        //logout
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            try
            {
                Session["username"] = "";
                Session["fullname"] = "";
                Session["role"] = "";
                Session["status"] = "";

                Response.Redirect("homepage.aspx");
               /* LinkButton2.Visible = true;   //user loin
                LinkButton3.Visible = true;    //sign up

                LinkButton4.Visible = false;    //logout
                LinkButton5.Visible = false;     //ellow user

                LinkButton6.Visible = true;        //admin login
                LinkButton7.Visible = false;       //  autor
                LinkButton8.Visible = false;           //publiser
                LinkButton9.Visible = false;           //inventory
                LinkButton10.Visible = false;              //issuing
                LinkButton11.Visible = false;              // member-management*/


            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}