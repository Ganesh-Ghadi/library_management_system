<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="library_management_system.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section>
        <img style="width: 100%; height: 70vh;" src="imgs/clg_nav.png" class="img-fluid" />
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 mt-4">
                    <center>
                        <h3>What Users Can Do</h3>
                        <p><b>Users can do the Following in This Website.</b></p>
                    </center>
                </div>
            </div>


            <div class="row">
                <div class="col-lg-4  mt-5">
                    <center>
                        <img class="img-fluid rounded-4" style="width: 280px;" src="imgs/login.png" />
                        <h4>Login</h4>
                        <p class="text-start">User can login to his college library website. and if user dont have an account then he can sign in and create new account.</p>
                    </center>
                </div>

                <div class="col-lg-4 mt-5">
                    <center>
                        <img class="img-fluid rounded-4" style="width: 200px;" src="imgs/search.png" />
                        <h4>Search Books</h4>
                        <p class="text-start">User can Search Books on the website. and check whether his college library has that book or not</p>
                    </center>
                </div>

                <div class="col-lg-4 mt-5">
                    <center>
                        <img class="img-fluid rounded-4" style="width: 200px;" src="imgs/books.png" />
                        <h4>View Books</h4>
                        <p class="text-start">User can View all the books that are available in the college library. and check whether his college library has that book or not</p>
                    </center>
                </div>


                <div class="row">
                    <div class="col-lg-4 mt-5">
                        <center>
                            <img class="img-fluid rounded-4" style="width: 200px;" src="imgs/profile.png" />
                            <h4>Manage Profile</h4>
                            <p class="text-start">Once the user login to the website, then if he want to make any change in his profile like changing password, username etc, he can do it by clicking on his profile. </p>
                        </center>
                    </div>
                </div>
            </div>
        </div>
    </section>






</asp:Content>
