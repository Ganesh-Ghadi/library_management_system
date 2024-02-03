<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="book-issueing.aspx.cs" Inherits="library_management_system.book_issueing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-5"> 
                <%-- remove the mx-auto so it will not be centered --%>

                <div class="card mt-4 mb-4">
                    <div class="card-body">
                       

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Issuing</h4>
                                   
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <%-- it can be center if you ive text-center class --%>
                                    <img class="img-fluid" style="width: 100px;" src="imgs/books.png" />
                                    <%-- temporary image --%>
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>




                        <div class="row">
                           
                            <div class="col-lg-6">
                                <label>Member ID:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="Member ID" ID="TextBox4" runat="server" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>


                             <div class="col-lg-6">
                                <label>Book ID:</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                    <asp:TextBox ID="TextBox3" Class="form-control" placeholder="Book ID" runat="server" TextMode="SingleLine"></asp:TextBox>

                                     <asp:Button ID="Button1" Class="btn btn-primary w-10" runat="server" Text="Go" OnClick="Button1_Click" />
                                        </div>
                                </div>
                            </div>

                        </div>





                         <div class="row">
                           
                            <div class="col-lg-6">
                                <label>Member Name:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="Member Name" ID="TextBox1" runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>


                             <div class="col-lg-6">
                                <label>Book Name:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="Book Name" ID="TextBox2" runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                           

                        </div>




                          <div class="row">
                           
                            <div class="col-lg-6">
                                <label>Start Date:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="Start Date" ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>


                             <div class="col-lg-6">
                                <label>End Date:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="End Date" ID="TextBox6" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                           

                        </div>












                      <div class="row">
                          <div class="col-lg-6">
                              <asp:Button Class="btn btn-primary btn-lg w-100" ID="Button2" runat="server" Text="issue" OnClick="Button2_Click" />
                          </div>

                          <div class="col-lg-6">
                              <asp:Button Class="btn btn-success btn-lg w-100" ID="Button3" runat="server" Text="return" OnClick="Button3_Click" />
                          </div>
                      </div>








                    </div>
                </div>

            </div>













         


            <div class="col-lg-7">

                 <div class="card mt-4 mb-4">
                    <div class="card-body">
                     

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Issued Book List</h4>
                                    
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr />
                               
                            </div>
                        </div>


                         <div class="row">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibrary2ConnectionString %>" SelectCommand="SELECT * FROM [book_issue_table]"></asp:SqlDataSource>
                            <div class="col-lg-12">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="member_id" SortExpression="member_id" />
                                        <asp:BoundField DataField="member_name" HeaderText="member_name" SortExpression="member_name" />
                                        <asp:BoundField DataField="book_id" HeaderText="book_id" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                        <asp:BoundField DataField="issue_date" HeaderText="issue_date" SortExpression="issue_date" />
                                        <asp:BoundField DataField="due_date" HeaderText="due_date" SortExpression="due_date" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

                       




                       



                      



                       


                       





                       




                    </div>
                </div>


            </div>



        </div>
    </div>

</asp:Content>
