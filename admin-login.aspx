﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin-login.aspx.cs" Inherits="library_management_system.admin_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <div class="container">
        <div class="row">
            <div class="col-lg-6 mx-auto">

                <div class="card mt-4 mb-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                 <center>
                               <img class="img-fluid rounded-circle" style="width:150px;" src="imgs/admin.png" />
                           </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                 <center>
                               <h3>Admin Login</h3>
                           </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                         <div class="row">
                            <div class="col">
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox1" Class="form-control" placeholder="Enter Member ID" runat="server"></asp:TextBox>
                                </div>

                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="Enter Password" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group mb-3">
                                    <asp:Button ID="Button1" Class="btn btn-success btn-lg w-100" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>
                               

                            </div>
                        </div>

                 
                        
                        
                    </div>
                </div>

            </div>
        </div>
    </div>



</asp:Content>
