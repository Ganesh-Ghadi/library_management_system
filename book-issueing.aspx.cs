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
    public partial class book_issueing : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();

        }


        //go button
        protected void Button1_Click(object sender, EventArgs e)
        {
            getNamesById();
        }


        //issue button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if(checkIfBookExist() && checkIfMemberExist())
            {
                if (checkIfEntryExist())
                {
                    Response.Write("<script>alert('This Book is already issued for this user.')</script>");

                }
                else
                {
                    issueBook();
                }

            }
            else
            {
                Response.Write("<script>alert('Wrong Book ID or MemberID.')</script>");

            }

        }


        //return button
        protected void Button3_Click(object sender, EventArgs e)
        {


            if (checkIfBookExist() && checkIfMemberExist())
            {
                if (checkIfEntryExist())
                {
                    returnBook();
                }
                else
                {
                    Response.Write("<script>alert('This Entry does not exist.')</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Wrong Book ID or MemberID.')</script>");

            }


        }













        



        bool checkIfBookExist()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                
                SqlCommand cmd = new SqlCommand("SELECT * FROM book_table WHERE book_id='" + TextBox3.Text.Trim() + "' AND current_stock >0", con);

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









        bool checkIfMemberExist()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_table WHERE member_id='" + TextBox4.Text.Trim() + "';", con);

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





        void getNamesById()
        {

            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT full_name FROM member_table WHERE member_id='" + TextBox4.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);


                if (dt.Rows.Count >= 1)
                {
                    TextBox1.Text = dt.Rows[0]["full_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong Member Id.')</script>");
                }



                cmd = new SqlCommand("SELECT book_name FROM book_table WHERE book_id='" + TextBox3.Text.Trim() + "';", con);

                 da = new SqlDataAdapter(cmd);
                 dt = new DataTable();
                da.Fill(dt);

                if(dt.Rows.Count >=1)
                {
                    TextBox2.Text = dt.Rows[0]["book_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong Book Id.')</script>");
                }
                




            }
            catch (Exception)
            {
                throw;
            }




        }






        void issueBook()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO book_issue_table (member_id, member_name, book_id, book_name, issue_date, due_date) values (@member_id, @member_name, @book_id, @book_name, @issue_date, @due_date)", con);

                cmd.Parameters.AddWithValue("@member_id", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@member_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@book_id", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@issue_date", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@due_date", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();


                cmd = new SqlCommand("UPDATE book_table SET current_stock= current_stock - 1 WHERE book_id='" + TextBox3.Text.Trim() +"'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Book Issued Successfully')</script>");



                GridView1.DataBind();

            }
            catch (Exception)
            {
                throw;
            }


        }




        // this is because we should not able to issue same book 2,3 times to the same user.
        bool checkIfEntryExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM book_issue_table WHERE book_id='" + TextBox3.Text.Trim() + "' AND member_id='" + TextBox4.Text.Trim() +"'", con);

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














        void returnBook()
        {

            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE FROM book_issue_table WHERE book_id='"+ TextBox3.Text.Trim() +"' AND member_id='" + TextBox4.Text.Trim() + "'", con);

                 int result = cmd.ExecuteNonQuery();   //if query gget  executed then 1 will be stored. 

                if(result > 0)   //  tis is to stop increasing current_stock if quory dont work.
                {
                    cmd = new SqlCommand("UPDATE book_table SET current_stock= current_stock + 1 WHERE book_id='" + TextBox3.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Book returned Successfully.')</script>");



                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('error - Invalid Details.')</script>");

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
                if(e.Row.RowType == DataControlRowType.DataRow)
                {
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                    DateTime today = DateTime.Today;
                    if(today > dt)
                    {
                        e.Row.BackColor = System.Drawing.Color.Blue;
                    }
                }

            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}