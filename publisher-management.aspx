<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="publisher-management.aspx.cs" Inherits="library_management_system.publisher_management" %>
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
                                    <h4>Publisher Details</h4>
                                   
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
                                <label>Publisher ID:</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                    <asp:TextBox ID="TextBox3" Class="form-control" placeholder="ID" runat="server" TextMode="SingleLine"></asp:TextBox>

                                    
                                         <asp:Button Class="btn btn-primary  w-10" ID="Button7" runat="server" Text="Go" OnClick="Button7_Click" />
                                        </div>
                                </div>
                            </div>

                            


                            <div class="col-lg-8">
                                <label>Publisher Name:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="Publisher Name" ID="TextBox4" runat="server" TextMode="SingleLine"></asp:TextBox>
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
                                    <h4>Publisher List</h4>
                                    
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr />
                               
                            </div>
                        </div>


                         <div class="row">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibrary2ConnectionString %>" SelectCommand="SELECT * FROM [publisher_table]"></asp:SqlDataSource>
                            <div class="col-lg-12">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" />
                                        <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
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
