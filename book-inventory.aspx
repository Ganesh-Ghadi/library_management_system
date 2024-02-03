<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="book-inventory.aspx.cs" Inherits="library_management_system.book_inventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr.first"))).dataTable();
        });


        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('imgview').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

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
                                    <h4>Books Details</h4>
                                   
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <%-- it can be center if you ive text-center class --%>
                                    <img id="imgview" class="img-fluid" style="width: 100px;" src="imgs/books.png" />
                                    
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
                                <asp:FileUpload onChange="readURL(this);" Class="form-control" ID="FileUpload1" runat="server" />  
                                     </div>
                            </div>
                        </div>




                        <div class="row">
                           

                             <div class="col-lg-3">
                                <label>Book ID:</label>
                                <div class="form-group mb-3">    
                                   <div class="input-group">
                                    <asp:TextBox ID="TextBox3" Class="form-control" placeholder="ID" runat="server" TextMode="SingleLine"></asp:TextBox>

                                     <asp:Button ID="Button1" Class="btn btn-primary w-10" runat="server" Text="Go" OnClick="Button1_Click" />
                                        </div>
                                </div>
                            </div>


                            <div class="col-lg-9">
                                <label>Book Name:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="Book Name" ID="TextBox4" runat="server" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>








                     

                         <div class="row">
                           

                             <div class="col-lg-4">
                                <label>Language:</label>
                                <div class="form-group mb-3">
                                    <asp:DropDownList Class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="English" Value="English" ></asp:ListItem>
                                        <asp:ListItem Text="Marathi" Value="Marathi" ></asp:ListItem>
                                        <asp:ListItem Text="Hindi" Value="Hindi" ></asp:ListItem>
                                        <asp:ListItem Text="Konkani" Value="Konkani" ></asp:ListItem>
                                    </asp:DropDownList>
                                </div>


                                 <label>Publisher Name:</label>
                                <div class="form-group mb-3">
                                    <asp:DropDownList Class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="P1" Value="P1" />
                                        <asp:ListItem Text="p2" Value="p2" />
                                        <asp:ListItem Text="p3" Value="p3" />
                                        <asp:ListItem Text="p4" Value="p4" />
                                    </asp:DropDownList>
                                </div>
                            </div>


                            <div class="col-lg-4">
                                <label>Author Name:</label>
                                <div class="form-group mb-3">
                                    <asp:DropDownList Class="form-control" ID="DropDownList3" runat="server">
                                       
                                    </asp:DropDownList> 
                                </div>


                                 <label>Publish Date:</label>
                                <div class="form-group mb-3">
                                <asp:TextBox ID="TextBox1" Class="form-control" placeholder="date" runat="server" TextMode="Date" ReadOnly="False"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-lg-4">
                                <label>Genre:</label>
                                <asp:ListBox class="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple">
                                    <asp:ListItem Text="Romance" Value="Romance"></asp:ListItem>
                                      <asp:ListItem Text="Self" Value="Self"></asp:ListItem>
                                      <asp:ListItem Text="Adventure" Value="Adventure"></asp:ListItem>
                                      <asp:ListItem Text="Crime" Value="Crime"></asp:ListItem>
                                      <asp:ListItem Text="Motivation" Value="Motivation"></asp:ListItem>
                                      <asp:ListItem Text="Healthy Living" Value="Healthy Living"></asp:ListItem>
                                      <asp:ListItem Text="Science" Value="Science"></asp:ListItem>
                                      <asp:ListItem Text="Art" Value="Art"></asp:ListItem>
                                      <asp:ListItem Text="Fantasy" Value="Fantasy"></asp:ListItem>
                                </asp:ListBox>
                            </div>

                           
                        </div>

                         



                          <div class="row">
                           

                             <div class="col-lg-4">
                                <label>Edition:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox6" Class="form-control" placeholder="Edition" runat="server" TextMode="SingleLine" ReadOnly="False"></asp:TextBox>
                                </div>
                            </div>


                            <div class="col-lg-4">
                                <label>Book Cost (Per Unit):</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="Book Cost" ID="TextBox7" runat="server" TextMode="Number" ReadOnly="False"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <label>Pages:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox9" Class="form-control" placeholder="Pages" runat="server" TextMode="Number" ReadOnly="False"></asp:TextBox>
                                </div>
                            </div>

                           
                        </div>



                         <div class="row">
                           

                             <div class="col-lg-4">
                                <label>Actual Stock:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox2" Class="form-control" placeholder="Actual Stock" runat="server" TextMode="Number" ReadOnly="False"></asp:TextBox>
                                </div>
                            </div>


                            <div class="col-lg-4">
                                <label>Current Stock:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox Class="form-control" placeholder="Current Stock" ID="TextBox5" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <label>Issued Books:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox8" Class="form-control" placeholder="Issued Books" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                           
                        </div>


                             <div class="row">
                           

                             <div class="col-lg-12">
                                <label>Book Description:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox10" Class="form-control" placeholder="Description" runat="server" TextMode="MultiLine" ReadOnly="False"></asp:TextBox>
                                </div>
                            </div>

                           
                        </div>








                      <div class="row">
                          <div class="col-lg-4">
                              <asp:Button Class="btn btn-primary btn-lg w-100" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
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
                                    <h4>Book Inventory List</h4>
                                    
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr />
                               
                            </div>
                        </div>


                         <div class="row">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibrary2ConnectionString %>" SelectCommand="SELECT * FROM [book_table]"></asp:SqlDataSource>
                            <div class="col-lg-12">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" >
                                       


                                        <ItemStyle Font-Bold="True" />
                                        </asp:BoundField>
                                       


                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-10">

                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="Large"></asp:Label>
                                                                </div>
                                                            </div>


                                                             <div class="row">
                                                                <div class="col-lg-12">

                                                                    Author -
                                                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                    &nbsp;| Genre -
                                                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                    &nbsp;| Language -
                                                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>

                                                                </div>
                                                            </div>


                                                             <div class="row">
                                                                <div class="col-lg-12">

                                                                    Publisher -
                                                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                    &nbsp;| Publish Date -
                                                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                                    &nbsp;| Pages -
                                                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                    &nbsp;| Edition -
                                                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>

                                                                </div>
                                                            </div>


                                                             <div class="row">
                                                                <div class="col-lg-12">

                                                                    Cost -
                                                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                    &nbsp;| Actual Stock -
                                                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                    &nbsp;| Available Stock -&nbsp;
                                                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>
                                                                    &nbsp;</div>
                                                            </div>


                                                             <div class="row">
                                                                <div class="col-lg-12">

                                                                    Description -
                                                                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>

                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="col-lg-2">
                                                            <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />    
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                       


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
