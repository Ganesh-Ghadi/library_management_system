﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



namespace library_management_system
{
    public partial class user_profile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                if (Session["username"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again..')</script>");
                    Response.Redirect("user-login.aspx");
                    

                }
                else
                {
                    getUserBookDetails();
                    if (!Page.IsPostBack)
                    {
                        getUserDetailsById();
                    }
                    
                }
            }
            catch (Exception)
            {
                throw;
            }

        

        }


        //update button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again..')</script>");
                Response.Redirect("user-login.aspx");


            }
            else
            {
                updateUserDetails();
            }

        }







        void getUserBookDetails()
        {


             try
              {

                  SqlConnection con = new SqlConnection(strcon);
                  if(con.State == ConnectionState.Closed)
                  {
                      con.Open();
                  }

                  SqlCommand cmd = new SqlCommand("SELECT * FROM book_issue_table WHERE member_id='" + Session["username"].ToString() + "'", con) ;
                 SqlDataAdapter da = new SqlDataAdapter(cmd);
                 DataTable dt = new DataTable();
                 da.Fill(dt);

                 GridView1.DataSource = dt;   // we display gridview by this method because we dont want to show all rows of db but only those who belong to particular user.
                 GridView1.DataBind();            //this is disconnectd architecture

               /* SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();*/                     // this is connected architecture.


              }
              catch (Exception)
              {
                  throw;
              }

           


        }




        void getUserDetailsById()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_table WHERE member_id='" + Session["username"].ToString() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox3.Text = dt.Rows[0]["full_name"].ToString();
                TextBox4.Text = dt.Rows[0]["dob"].ToString();
                TextBox1.Text = dt.Rows[0]["contact_no"].ToString();
                TextBox2.Text = dt.Rows[0]["email"].ToString();
                DropDownList1.SelectedValue = dt.Rows[0]["state"].ToString().Trim();
                TextBox6.Text = dt.Rows[0]["city"].ToString();
                TextBox7.Text = dt.Rows[0]["pincode"].ToString();
                TextBox5.Text = dt.Rows[0]["full_address"].ToString();
                TextBox8.Text = dt.Rows[0]["member_id"].ToString();
                TextBox9.Text = dt.Rows[0]["password"].ToString();


                Label1.Text = dt.Rows[0]["account_status"].ToString().Trim();

                if (dt.Rows[0]["account_status"].ToString().Trim() == "Active")
                {
                    Label1.Attributes.Add("class", "badge text-bg-success");
                }
                else if(dt.Rows[0]["account_status"].ToString().Trim() == "Pending")
                {
                    Label1.Attributes.Add("class", "badge text-bg-warning");

                }
                else if (dt.Rows[0]["account_status"].ToString().Trim() == "Deactive")
                {
                    Label1.Attributes.Add("class", "badge text-bg-danger");

                }
                else
                {
                    Label1.Attributes.Add("class", "badge text-bg-primary");

                }



            }
            catch (Exception)
            {
                throw;
            }
        }


        void updateUserDetails()
        {
            string password = "";
            if(TextBox10.Text.Trim() == ""){

                password = TextBox9.Text.Trim();
            }
            else
            {
                password = TextBox10.Text.Trim();
            }


            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Update member_table set full_name=@full_name, dob=@dob, contact_no=@contact_no, email=@email, state=@state, city=@city, pincode=@pincode, full_address=@full_address, password=@password, account_status=@account_status WHERE member_id='" + Session["username"].ToString().Trim() + "'", con);


                cmd.Parameters.AddWithValue("@full_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Parameters.AddWithValue("@account_status", "Pending");


                int result = cmd.ExecuteNonQuery();
                con.Close();
                if(result > 0)
                {
                    Response.Write("<script>alert('Details Updated Successfully.')</script>");
                    getUserBookDetails();
                    getUserDetailsById();

                }
                else
                {
                    Response.Write("<script>alert('Invalid Entry.')</script>");

                }




            }
            catch (Exception)
            {
                throw;
            }




        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    //Check your condition here
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                    DateTime today = DateTime.Today; 
                    if (today > dt)
                    {
                        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                    }
                }
            }
            catch (Exception)
            {
                // Response.Write("<script>alert('" + ex.Message + "');</script>");
                throw;
            }
        }
    }
}