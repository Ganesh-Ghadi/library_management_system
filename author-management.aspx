<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="author-management.aspx.cs" Inherits="library_management_system.author_management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr.first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="container">
        <div class="row">
            <div class="col-lg-5"> 
                <%-- remove the mx-auto so it will not be centered --%>

                <div class="card mt-4 mb-4">
                    <div class="card-body">
                       

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author Details</h4>
                                   
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <%-- it can be center if you ive text-center class --%>
                                    <img class="img-fluid rounded-circle" style="width: 100px;" src="imgs/user.png" />
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
                            <div class="col-lg-4">
                                <label>Author ID:</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                    <asp:TextBox ID="TextBox3" Class="form-control" placeholder="ID" runat="server" TextMode="SingleLine" style="width: 168px"></asp:TextBox>

                                     <asp:Button ID="Button1" Class="btn btn-primary w-10" runat="server" Text="Go" OnClick="Button1_Click" />
                                        </div>
                                </div>
                            </div>

                            


                            <div class="col-lg-8">
                                <label>Author Name:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="Author Name" ID="TextBox4" runat="server" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>


                        </div>




                      <div class="row">
                          <div class="col-lg-4">
                              <asp:Button Class="btn btn-success btn-lg w-100" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                          </div>

                          <div class="col-lg-4">
                              <asp:Button Class="btn btn-warning btn-lg w-100" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                          </div>

                          <div class="col-lg-4">
                              <asp:Button Class="btn btn-danger btn-lg w-100" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
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
                                    <h4>Author List</h4>
                                    
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr />
                               
                            </div>
                        </div>


                         <div class="row">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibrary2ConnectionString %>" SelectCommand="SELECT * FROM [author_table]"></asp:SqlDataSource>
                            <div class="col-lg-12">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
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
