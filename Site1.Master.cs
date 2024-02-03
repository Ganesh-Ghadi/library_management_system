using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace library_management_system
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    LinkButton2.Visible = true;   //user loin
                    LinkButton3.Visible = true;    //sign up

                    LinkButton4.Visible = false;    //logout
                    LinkButton5.Visible = false;     //ellow user

                    LinkButton6.Visible = true;        //admin login
                    LinkButton7.Visible = false;       //  autor
                    LinkButton8.Visible = false;           //publiser
                    LinkButton9.Visible = false;           //inventory
                    LinkButton10.Visible = false;              //issuing
                    LinkButton11.Visible = false;              // member-management

                }
                else if(Session["role"].Equals("user"))
                {
                    LinkButton2.Visible = false;   //user loin
                    LinkButton3.Visible = false;    //sign up

                    LinkButton4.Visible = true;    //logout
                    LinkButton5.Visible = true;     //ellow user
                    LinkButton5.Text = "Hello " + Session["username"].ToString() + "";

                    LinkButton6.Visible = true;        //admin login
                    LinkButton7.Visible = false;       //  autor
                    LinkButton8.Visible = false;           //publiser
                    LinkButton9.Visible = false;           //inventory
                    LinkButton10.Visible = false;              //issuing
                    LinkButton11.Visible = false;              // member-management

                }
                else if(Session["role"].Equals("admin"))
                {
                    LinkButton2.Visible = false;   //user loin
                    LinkButton3.Visible = false;    //sign up

                    LinkButton4.Visible = true;    //logout
                    LinkButton5.Visible = true;     //ellow user
                    LinkButton5.Text = "Hello Admin";

                    LinkButton6.Visible = false;        //admin login
                    LinkButton7.Visible = true;       //  autor
                    LinkButton8.Visible = true;           //publiser
                    LinkButton9.Visible = true;           //inventory
                    LinkButton10.Visible = true;              //issuing
                    LinkButton11.Visible = true;              // member-management
                }

            }
            catch (Exception)
            {
                throw;
            }

        }


        //view-books
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("view-books.aspx");
        }


        //user-loin
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("user-login.aspx");

        }


        //user-signup
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("user-signup.aspx");

        }


        //admin-login
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin-login.aspx");

        }


        //author-management
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("author-management.aspx");

        }


        //publiser-management
        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("publisher-management.aspx");

        }


        //book-invenotory
        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("book-inventory.aspx");

        }


        //book_issueing
        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("book-issueing.aspx");

        }


        //member_management
        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("member-management.aspx");

        }


        //admin loin
        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin-login.aspx");

        }

        //Hellow user
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("user-profile.aspx");


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

                LinkButton2.Visible = true;   //user loin
                LinkButton3.Visible = true;    //sign up

                LinkButton4.Visible = false;    //logout
                LinkButton5.Visible = false;     //ellow user

                LinkButton6.Visible = true;        //admin login
                LinkButton7.Visible = false;       //  autor
                LinkButton8.Visible = false;           //publiser
                LinkButton9.Visible = false;           //inventory
                LinkButton10.Visible = false;              //issuing
                LinkButton11.Visible = false;              // member-management
                Response.Redirect("homepage.aspx");


            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}