<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="ElibraryManagement.adminmembermanagement" %>
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
       <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Detail Member</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label>ID Member</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID Member"></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click1" Width="50px"><i class="fas fa-check-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Nama Lengkap</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Nama Lengkap" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5">
                        <label>Status Akun</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox7" runat="server" placeholder="Status Akun" ReadOnly="True"></asp:TextBox>
                              <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="fas fa-times-circle" ></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label>Tanggal Lahir</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Tanggal Lahir" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>No. Telepon</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="No. Telepon" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5">
                        <label>Alamat Email</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Alamat Email" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Negara</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Negara" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Kota</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Kota" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Kode Pos</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Kode Pos" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12">
                        <label>Alamat Lengkap</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Alamat Lengkap" TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Hapus User Selamanya" OnClick="Button2_Click1" />
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
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
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="member_id" HeaderText="ID_Member" SortExpression="member_id" ReadOnly="True" />
                                <asp:BoundField DataField="full_name" HeaderText="Nama_Lengkap" SortExpression="full_name" />
                                <asp:BoundField DataField="dob" HeaderText="Tanggal_Lahir" SortExpression="dob" />
                                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                <asp:BoundField DataField="account_status" HeaderText="account_status" SortExpression="account_status" />
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
