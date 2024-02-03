using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace library_management_system
{
    public partial class user_login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        //login button
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_table WHERE member_id='" + TextBox1.Text.Trim() +"' AND password='"+ TextBox2.Text.Trim() +"'", con);
                //this is connected architecture
                /*
                 SqlDataAdapter is a disconnected architecture where w e take record from db in data tables and do all the process. in this the db is closed by default. 
                 SqlDataReder is a connected architecture where we connect to db and do all the process while the connection is on.
                 */
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {

                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successful');</script>");
                        Session["username"] = dr.GetValue(8).ToString();  // member id is taken by username name.
                        Session["fullname"] = dr.GetValue(0).ToString();
                        Session["status"] = dr.GetValue(10).ToString();
                        Session["role"] = "user";

                    }
                    Response.Redirect("homepage.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }


            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}