<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="user-signup.aspx.cs" Inherits="library_management_system.user_signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container">
        <div class="row">
            <div class="col-lg-7 mx-auto">

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
                                    <h4>Member Signup</h4>
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
                                    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator></span>
                                    
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <label>Date of Birth</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="dd-mm-yy" ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>


                        </div>




                        <div class="row">
                            <div class="col-lg-6">
                                <label>Contact No:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox1" Class="form-control" placeholder="Contact No" runat="server" TextMode="Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <label>Email ID:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="Email ID" ID="TextBox2" runat="server" TextMode="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>




                        <div class="row">
                            <div class="col-lg-4">
                                <label>State:</label>
                                <div class="form-group mb-3">
                                    <asp:DropDownList Class="form-control" ID="DropDownList1" runat="server" >
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
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <label>City:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="City" ID="TextBox6" runat="server" TextMode="SingleLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <label>Pincode:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="Pincode" ID="TextBox7" runat="server" TextMode="Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col">
                                <label>Full Address:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox5" Class="form-control" placeholder="Full Address" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
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
                            <div class="col-lg-6">
                                <label>Member ID:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox8" Class="form-control" placeholder="Username" runat="server" TextMode="SingleLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox8" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <label>Password:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="Password" ID="TextBox9" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox9" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            
                        </div>





                        <div class="row">
                            <div class="col">

                                <div class="form-group mb-3">
                                    <asp:Button ID="Button1" Class="btn btn-success btn-lg w-100" runat="server" Text="Signup" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>




                    </div>
                </div>

            </div>
        </div>
    </div>


</asp:Content>
