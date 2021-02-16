<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpiket.aspx.cs" Inherits="ElibraryManagement.adminpiket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                               <h4>Manajemen Piket</h4>
                            </center>
                         </div>
                      </div>

                      <div class="row">
                         <div class="col">
                            <center>
                               <img width="100px" src="imgs/books.png"/>
                            </center>
                         </div>
                      </div>

                      <div class="row">
                         <div class="col">
                            <hr>
                         </div>
                      </div>

                  <div class="row">
                     <div class="col-md-6">
                        <label>ID Petugas</label>
                        <div class="form-group">
                            <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="IDPetugas" runat="server" placeholder="ID Petugas"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Go" runat="server" Text="Go" OnClick="Go_Click" />
                            </div>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>ID Piket</label>
                        <div class="form-group">
                            <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="IDPiket" runat="server" placeholder="ID Piket"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Go1" runat="server" Text="Go" OnClick="Go1_Click" />
                            </div>
                        </div>
                     </div>
                  </div>
                  
                  <div class="row">                   
                     <div class="col-md-6">
                        <label>Nama Petugas</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="NamaPetugas" runat="server" placeholder="Nama Petugas" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  <div class="col-md-6">
                        <label>No. Telepon</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="NoTelp" runat="server" placeholder="No. Telepon" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                  <div class="row">                   
                     <div class="col-md-6">
                        <label>Hari Piket</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="HariPiket" runat="server">
                              <asp:ListItem Text="Senin" Value="Senin" />
                              <asp:ListItem Text="Selasa" Value="Selasa" />
                              <asp:ListItem Text="Rabu" Value="Rabu" />
                              <asp:ListItem Text="Kamis" Value="Kamis" />
                              <asp:ListItem Text="Jumat" Value="Jumat" />
                              <asp:ListItem Text="Sabtu" Value="Sabtu" />
                           </asp:DropDownList>
                        </div>
                     </div>
                      <div class="col-md-6">
                        <label>Pekerjaan</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="Pekerjaan" runat="server" placeholder="Pekerjaan"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                      <div class="row">
                         <div class="col-6">
                            <div class="form-group">
                                <asp:Button ID="Piket" class="btn btn-lg btn-block btn-primary" runat="server" Text="Piket" OnClick="Piket_Click"/>
                            </div>
                         </div>
                         <div class="col-6">
                            <div class="form-group">
                                <asp:Button ID="Selesai" class="btn btn-lg btn-block btn-success" runat="server" Text="Selesai" OnClick="Selesai_Click" />
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
                               <h4>Piket Minggu Ini</h4>
                            </center>
                         </div>
                      </div>

                      <div class="row">
                         <div class="col">
                            <hr>
                         </div>
                      </div>

                      <div class="row">
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [piket_master_tbl]"></asp:SqlDataSource>
                         <div class="col">
                             <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_piket" DataSourceID="SqlDataSource1">
                                 <Columns>
                                     <asp:BoundField DataField="id_piket" HeaderText="id_piket" ReadOnly="True" SortExpression="id_piket" />
                                     <asp:BoundField DataField="id_petugas" HeaderText="id_petugas" SortExpression="id_petugas" />
                                     <asp:BoundField DataField="nama_petugas" HeaderText="nama_petugas" SortExpression="nama_petugas" />
                                     <asp:BoundField DataField="no_telepon" HeaderText="no_telepon" SortExpression="no_telepon" />
                                     <asp:BoundField DataField="hari_piket" HeaderText="hari_piket" SortExpression="hari_piket" />
                                     <asp:BoundField DataField="pekerjaan" HeaderText="pekerjaan" SortExpression="pekerjaan" />
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
