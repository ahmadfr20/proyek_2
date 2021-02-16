<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmanajemenstaff.aspx.cs" Inherits="ElibraryManagement.adminmanajemenstaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <div class="container-fluid">
          <div class="row">
             <div class="col-md-6">
                <div class="card">
                   <div class="card-body">

                      <div class="row">
                         <div class="col">
                            <center>
                               <h4>Detail Staff</h4>
                            </center>
                         </div>
                      </div>

                      <div class="row">
                         <div class="col">
                            <center>
                               <img width="100px" src="imgs/publisher.png"/>
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
                        <label>ID Petugas</label>
                        <div class="form-group">
                            <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="IDPetugas" runat="server" placeholder="ID"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Go" runat="server" Text="Go" OnClick="Go_Click" />
                            </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Nama Petugas</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="NamaPetugas" runat="server" placeholder="Nama Petugas"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Username Petugas</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="UsernameP" runat="server" placeholder="Username Petugas"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col-md-4">
                        <label>Tanggal Lahir</label>
                        <div class="form-group">
                            <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TglLahir" runat="server" placeholder="ID" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>No. Telepon</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="NoTelp" runat="server" placeholder="No. Telepon" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>NIK</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="NIK" runat="server" placeholder="NIK" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                    <label>Alamat Lengkap</label>
                    <div class="row">
                        <div class="col-12">
                            <asp:TextBox CssClass="form-control" ID="AlamatFull" runat="server" placeholder="Alamat Lengkap" TextMode="MultiLine"></asp:TextBox>
                        </div>
                  </div>
                       <br />

                      <div class="row">
                         <div class="col-4">
                            <div class="form-group">
                                <asp:Button class="btn btn-lg btn-success btn-block" ID="Tambah" runat="server" Text="Tambah" OnClick="Tambah_Click"></asp:Button>
                            </div>
                         </div>
                         <div class="col-4">
                            <div class="form-group">
                                <asp:Button class="btn btn-lg btn-warning btn-block" ID="Update" runat="server" Text="Update" OnClick="Update_Click"></asp:Button>
                            </div>
                         </div>
                         <div class="col-4">
                            <div class="form-group">
                                <asp:Button class="btn btn-lg btn-danger btn-block" ID="Hapus" runat="server" Text="Hapus" OnClick="Hapus_Click"></asp:Button>
                            </div>
                         </div>
                      </div>

                   </div>
                </div>
                <a href="homepage.aspx"><< Kembali Ke Halaman Utama</a><br><br>
             </div>

             <div class="col-md-6">

                  <div class="card">
                   <div class="card-body">

                      <div class="row">
                         <div class="col">
                            <center>
                               <h4>List Staff</h4>
                            </center>
                         </div>
                      </div>

                      <div class="row">
                         <div class="col">
                            <hr>
                         </div>
                      </div>

                      <div class="row">
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [staff_master_tbl]"></asp:SqlDataSource>
                         <div class="col">
                             <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_petugas" DataSourceID="SqlDataSource1">
                                 <Columns>
                                     <asp:BoundField DataField="id_petugas" HeaderText="ID Petugas" ReadOnly="True" SortExpression="id_petugas" />
                                     <asp:BoundField DataField="nama_petugas" HeaderText="Nama Petugas" SortExpression="nama_petugas" />
                                     <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                                     <asp:BoundField DataField="dob" HeaderText="Tanggal Lahir" SortExpression="dob" />
                                     <asp:BoundField DataField="contact_no" HeaderText="No. Telepon" SortExpression="contact_no" />
                                     <asp:BoundField DataField="nik" HeaderText="NIK" SortExpression="nik" />
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
