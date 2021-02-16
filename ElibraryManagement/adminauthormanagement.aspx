<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="ElibraryManagement.adminauthormanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script type="text/javascript">
      $(document).ready(function () {
           
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();

      });
   </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />

    <div class="container">
          <div class="row">
             <div class="col-md-5">
                <div class="card">
                   <div class="card-body">

                      <div class="row">
                         <div class="col">
                            <center>
                               <h4>Detail Penulis</h4>
                            </center>
                         </div>
                      </div>

                      <div class="row">
                         <div class="col">
                            <center>
                               <img width="100px" src="imgs/writer.png"/>
                            </center>
                         </div>
                      </div>

                      <div class="row">
                         <div class="col">
                            <hr>
                         </div>
                      </div>

                  <div class="row">
                     <div class="col-md-4">
                        <label>ID Penulis</label>
                        <div class="form-group">
                            <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                            </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>Nama Penulis</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Nama Penulis"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                      <div class="row">
                         <div class="col-4">
                            <div class="form-group">
                                <asp:Button class="btn btn-lg btn-success btn-block" ID="Button2" runat="server" Text="Tambah" OnClick="Button2_Click"></asp:Button>
                            </div>
                         </div>
                         <div class="col-4">
                            <div class="form-group">
                                <asp:Button class="btn btn-lg btn-warning btn-block" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click"></asp:Button>
                            </div>
                         </div>
                         <div class="col-4">
                            <div class="form-group">
                                <asp:Button class="btn btn-lg btn-danger btn-block" ID="Button4" runat="server" Text="Hapus" OnClick="Button4_Click"></asp:Button>
                            </div>
                         </div>
                      </div>

                   </div>
                </div>
                <a href="homepage.aspx"><< Kembali Ke Halaman Utama</a><br><br>
             </div>

             <div class="col-md-7">

                  <div class="card">
                   <div class="card-body">

                      <div class="row">
                         <div class="col">
                            <center>
                               <h4>List Penulis</h4>
                            </center>
                         </div>
                      </div>

                      <div class="row">
                         <div class="col">
                            <hr>
                         </div>
                      </div>

                      <div class="row">
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                         <div class="col">
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


    <br />
    <br />
    <br />


</asp:Content>
