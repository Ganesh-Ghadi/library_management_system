using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

namespace library_management_system
{
    public partial class author_management : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }


        //go button
        protected void Button1_Click(object sender, EventArgs e)
        {
            getAuthorById();

        }


        // add button
        protected void Button2_Click(object sender, EventArgs e)
        {

            if (checkIfAuthorExist())
            {
                Response.Write("<script>alert('Author with this ID already Exsist. Try another ID.')</script>");
            }
            else{
                addNewAuthor();
            }

        }


        //update button
        protected void Button3_Click(object sender, EventArgs e)
        {

            if (checkIfAuthorExist())
            {
                updateAuthor();
            }
            else
            {
                Response.Write("<script>alert('Author deos not Exist.')</script>");
            }



        }


        //delete button
        protected void Button4_Click(object sender, EventArgs e)
        {

            if (checkIfAuthorExist())
            {
                deleteAuthor();
            }
            else
            {
                Response.Write("<script>alert('Author does not exist..');</script>");
            }

        }


        






        void deleteAuthor()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE FROM author_table WHERE author_id='"+ TextBox3.Text.Trim() +"';", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Deleted Successfully.');</script>");
                clearForm();
                GridView1.DataBind();


            }
            catch (Exception)
            {
                throw; 
            }
        }






        void getAuthorById()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                 
                SqlCommand cmd = new SqlCommand("SELECT * FROM author_table WHERE author_id='" + TextBox3.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                //we r doing it by disconnected arcitectrure by DataAdapter
                //to see by process DataReader go to member-management.aspx.cs and see getmemberbyid() funtion 
                //dr.HasRows works in sqldata reader
                if(dt.Rows.Count >=1)
                {
                    TextBox4.Text = dt.Rows[0][1].ToString(); 
                }
                else
                {
                    Response.Write("<script>alert('Invalid Author ID')</script>");
                }

       




            }
            catch (Exception)
            {
                throw;
            }
            


        }





        bool checkIfAuthorExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM author_table WHERE author_id='" + TextBox3.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if(dt.Rows.Count >= 1)
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








        void updateAuthor()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE author_table SET author_name=@author_name WHERE author_id='"+ TextBox3.Text.Trim() + "';",con);

                cmd.Parameters.AddWithValue("@author_name", TextBox4.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Updated Successfully.')</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception)
            {
                throw;
            }



        }











        void addNewAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO author_table (author_id, author_name) values (@author_id, @author_name)", con);

                cmd.Parameters.AddWithValue("@author_id", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("author_name", TextBox4.Text.Trim());

               
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Added Successfully');</script>");
                clearForm();
                GridView1.DataBind(); 


            }
            catch (Exception)
            {
                throw;
            }


        }







        void clearForm()
        {
            TextBox3.Text = "";
            TextBox4.Text = "";
        }


    }
}