﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="ElibraryManagement.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />

        <div class="container">
          <div class="row">
             <div class="col-md-8 mx-auto">
                <div class="card">
                   <div class="card-body">
                      <div class="row">
                         <div class="col">
                            <center>
                               <img width="100px" src="imgs/generaluser.png"/>
                            </center>
                         </div>
                      </div>
                      <div class="row">
                         <div class="col">
                            <center>
                               <h4>Member Sign Up</h4>
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
                        <label>Nama Lengkap</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Nama Lengkap"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Tanggal Lahir</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Tanggal Lahir" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col-md-6">
                        <label>No. Telepon</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="No. Telepon" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Alamat Email</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Alamat Email" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                   <div class="row">
                     <div class="col-md-4">
                        <label>Negara Asal</label>
                        <div class="form-group">
                              <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Negara Asal"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Kota Asal</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Kota Asal"></asp:TextBox>
                        </div>
                     </div>
                    <div class="col-md-4">
                        <label>Kode Pos</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Kode Pos" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                   <div class="row">
                     <div class="col">
                        <label>Alamat Lengkap</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Alamat Lengkap" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>


                     <div class="row">
                         <div class="col">
                             <center><span class="badge bg-info text-dark">Login Credentials</span></center>
                         </div>
                      </div>

                       <br />

                 <div class="row">
                     <div class="col-md-6">
                        <label>User ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>


                      <div class="row">
                         <div class="col">
                            <div class="form-group">
                               <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                            </div>
                         </div>
                      </div>

                   </div>
                </div>
                <a href="homepage.aspx"><< Kembali Ke Halaman Utama</a><br><br>
             </div>
          </div>
       </div>

</asp:Content>
