<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="member-management.aspx.cs" Inherits="library_management_system.member_management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr.first"))).dataTable();
        });
     </script>
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
                                    <h4>Member Details</h4>
                                   
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <%-- it can be center if you ive text-center class --%>
                                    <img class="img-fluid rounded-circle" style="width: 100px;" src="imgs/user.png" />
                                    
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>




                        <div class="row">
                           

                             <div class="col-lg-3">
                                <label>Member ID:</label>
                                <div class="form-group mb-3">    
                                   <div class="input-group">
                                    <asp:TextBox ID="TextBox3" Class="form-control" placeholder="Member ID" runat="server" TextMode="SingleLine"></asp:TextBox>

                                     <asp:Button ID="Button1" Class="btn btn-primary w-10" runat="server" Text="Go" OnClick="Button1_Click" />
                                        </div>
                                </div>
                            </div>


                            <div class="col-lg-4">
                                <label>Full Name:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="Full Name" ID="TextBox4" runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-5">
                                <label>Account Status:</label>
                                <div class="form-group mb-3">
                                     <div class="input-group">
                                    <asp:TextBox ID="TextBox8" Class="form-control" placeholder="Account Status" runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                         <%-- WeakReference have to place icons here but rigth now i dont have net --%>
                                         <asp:LinkButton ID="LinkButton1" class="btn btn-primary w-10 mr-1" runat="server" OnClick="LinkButton1_Click">A</asp:LinkButton>
                                         <asp:LinkButton ID="LinkButton2" class="btn btn-warning w-10 mr-1" runat="server" OnClick="LinkButton2_Click">P</asp:LinkButton>
                                         <asp:LinkButton ID="LinkButton3" class="btn btn-danger w-10 mr-1" runat="server" OnClick="LinkButton3_Click">D</asp:LinkButton>

                                        </div>
                                   
                                </div>
                            </div>


                        </div>








                     

                         <div class="row">
                           

                             <div class="col-lg-3">
                                <label>DOB:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox1" Class="form-control" placeholder="DOB" runat="server" TextMode="Date" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>


                            <div class="col-lg-4">
                                <label>Contact No:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="Contact No." ID="TextBox2" runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-5">
                                <label>Email ID:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox5" Class="form-control" placeholder="Email ID" runat="server" TextMode="Email" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                           
                        </div>

                         



                          <div class="row">
                           

                             <div class="col-lg-4">
                                <label>State:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox6" Class="form-control" placeholder="State" runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>


                            <div class="col-lg-4">
                                <label>City:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="City" ID="TextBox7" runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <label>Pin Code:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox9" Class="form-control" placeholder="Pin Code" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                           
                        </div>



                             <div class="row">
                           

                             <div class="col-lg-12">
                                <label>Full Postal Address:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox10" Class="form-control" placeholder="Address" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                           
                        </div>








                      <div class="row">
                          <div class="col-lg-12">
                              <asp:Button Class="btn btn-danger btn-lg w-100" ID="Button2" runat="server" Text="Delete User Permanently" OnClick="Button2_Click" />
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
                                    <h4>Member List</h4>
                                    
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr />
                               
                            </div>
                        </div>


                         <div class="row">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibrary2ConnectionString %>" SelectCommand="SELECT * FROM [member_table]"></asp:SqlDataSource>
                            <div class="col-lg-12">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="member_id">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
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
