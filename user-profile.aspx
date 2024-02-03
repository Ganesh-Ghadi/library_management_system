<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="user-profile.aspx.cs" Inherits="library_management_system.user_profile" %>
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
                                    <%-- it can be center if you ive text-center class --%>
                                    <img class="img-fluid rounded-circle" style="width: 100px;" src="imgs/user.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Profile</h4>
                                    <span>Account Status - </span>
                                    <asp:Label ID="Label1"  runat="server" Text="Label"></asp:Label>
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
                                <label>Full Name:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox3" Class="form-control" placeholder="Full Name" runat="server" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <label>Date of Birth</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="dd-mm-yy" ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>


                        </div>




                        <div class="row">
                            <div class="col-lg-6">
                                <label>Contact No:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox1" Class="form-control" placeholder="Contact No" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <label>Email ID:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="Email ID" ID="TextBox2" runat="server" TextMode="Email" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>




                        <div class="row">
                            <div class="col-lg-4">
                                <label>State:</label>
                                <div class="form-group mb-3">
                                    <asp:DropDownList Class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra"></asp:ListItem>
                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="Gujarat" Value="Gujarat"></asp:ListItem>
                                        <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu"></asp:ListItem>
                                        <asp:ListItem Text="Karnataka" Value="Karnataka"></asp:ListItem>
                                        <asp:ListItem Text="Haryana" Value="Haryana"></asp:ListItem>
                                        <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="Bihar" Value="Bihar"></asp:ListItem>
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan"></asp:ListItem>
                                        <asp:ListItem Text="Kerala" Value="Kerala"></asp:ListItem>
                                        <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="Odisha" Value="Odisha"></asp:ListItem>
                                        <asp:ListItem Text="Punjab" Value="Punjab"></asp:ListItem>
                                        <asp:ListItem Text="Jharkhand" Value="Jharkhand"></asp:ListItem>
                                        <asp:ListItem Text="West Bengal" Value="West Bengal"></asp:ListItem>
                                        <asp:ListItem Text="Assam" Value="Assam"></asp:ListItem>
                                        <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="Telangana" Value="Telangana"></asp:ListItem>
                                        <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="Mizoram" Value="Mizoram"></asp:ListItem>
                                        <asp:ListItem Text="Goa" Value="Goa"></asp:ListItem>
                                        <asp:ListItem Text="Sikkim" Value="Sikkim"></asp:ListItem>
                                        <asp:ListItem Text="Manipur" Value="Manipur"></asp:ListItem>
                                        <asp:ListItem Text="Meghalaya" Value="Meghalaya"></asp:ListItem>
                                        <asp:ListItem Text="Nagaland" Value="Nagaland"></asp:ListItem>
                                        <asp:ListItem Text="Tripura" Value="Tripura"></asp:ListItem>
                                        <asp:ListItem Text="Uttarakhandh" Value="Uttarakhandh"></asp:ListItem>
                                        <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <label>City:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="City" ID="TextBox6" runat="server" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <label>Pincode:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="Pincode" ID="TextBox7" runat="server" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col">
                                <label>Full Address:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox5" Class="form-control" placeholder="Full Address" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col">
                                <center>
                                    <span class="badge text-bg-primary">Login Credentials</span>
                                </center>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col-lg-4">
                                <label>Member ID:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox8" Class="form-control" placeholder="Username" runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <label>Old Password:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="Password" ID="TextBox9" runat="server"  ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-lg-4">
                                <label>New Password:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="Password" ID="TextBox10" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>





                        <div class="row">
                             <center>
                            <div class="col-lg-8">

                                <div class="form-group mb-3">
                                   
                                    <asp:Button ID="Button1" Class="btn btn-primary btn-lg w-100" runat="server" Text="Update" OnClick="Button1_Click" />
                                       
                                </div>
                            </div>
                                 </center>
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
                                    <%-- it can be center if you ive text-center class --%>
                                    <img class="img-fluid " style="width: 100px;" src="imgs/books.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Issued Books</h4>
                                    
                                    <asp:Label class="badge text-bg-primary" runat="server" Text="Info About Book due date"></asp:Label>
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                         <div class="row">
                            <div class="col-lg-12">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound"></asp:GridView>
                            </div>
                        </div>

                       




                       



                      



                       


                       





                       




                    </div>
                </div>


            </div>



        </div>
    </div>


</asp:Content>
