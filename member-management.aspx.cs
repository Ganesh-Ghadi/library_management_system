using System;
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
    public partial class member_management : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }




        //go button
        protected void Button1_Click(object sender, EventArgs e)
        {
            getMemberById();
        }


        // active button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateMemberStatusById("Active");
        }


        //pending button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateMemberStatusById("Pending");
        }


        // deactive button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateMemberStatusById("Deactive");
        }


        //delete user permanently button
        protected void Button2_Click(object sender, EventArgs e)
        {

            if (checkIfMemberExist())
            {
                deleteMemberById();
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID.')</script>");

            }


        }









        void getMemberById()
        {

            try
            {
                 

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_table WHERE member_id='" + TextBox3.Text.Trim() + "';", con);

                SqlDataReader dr = cmd.ExecuteReader();
                //wee can do rhis same process by sql Data Adapter. To see it go to authorr-management.aspx and see getAuthorById() function.
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox4.Text = dr.GetValue(0).ToString();
                        TextBox8.Text = dr.GetValue(10).ToString();
                        TextBox1.Text = dr.GetValue(1).ToString();
                        TextBox2.Text = dr.GetValue(2).ToString();
                        TextBox5.Text = dr.GetValue(3).ToString();
                        TextBox6.Text = dr.GetValue(4).ToString();
                        TextBox7.Text = dr.GetValue(5).ToString();
                        TextBox9.Text = dr.GetValue(6).ToString();
                        TextBox10.Text = dr.GetValue(7).ToString();

                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid Member ID.')</script>");
                }



            }
            catch (Exception)
            {
                throw; 
            }
           

        }



        void updateMemberStatusById(string status)
        {
            if (checkIfMemberExist())
            {
                try
                {


                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("UPDATE member_table SET account_status='" + status + "' WHERE member_id='" + TextBox3.Text.Trim() + "';", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Account Status Updated Successfully')</script>");
                    clearForm();

                }
                catch (Exception)
                {
                    throw;
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID.')</script>");


            }



        }



        void deleteMemberById()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE FROM member_table WHERE member_id='" + TextBox3.Text.Trim() + "';", con);

                cmd.ExecuteNonQuery();
                con.Close();
                clearForm();
                GridView1.DataBind();
                Response.Write("<script>alert('Member Deleted Successfully.')</script>");


            }
            catch (Exception)
            {
                throw;
            }
        }







        bool checkIfMemberExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_table WHERE member_id='" + TextBox3.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }




            }
            catch (Exception)
            {
                throw;


            }
        }
















        void clearForm()
        {
            TextBox4.Text = "";
            TextBox3.Text = "";
            TextBox8.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
        }





    }
}