﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="ElibraryManagement.adminbookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("
                < thead ></thead > ").append($(this).find("tr: first"))).dataTable();
       });
 </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    </br>
    </br>

    <div class="container-fluid">
          <div class="row">
             <div class="col-md-5">
                <div class="card">
                   <div class="card-body">

                      <div class="row">
                         <div class="col">
                            <center>
                               <h4>Peminjaman Buku</h4>
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
                        <label>ID Member</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="ID Member"></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-6">
                        <label>ID Buku</label>
                        <div class="form-group">
                            <div class="input-group">
                              <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
                               <asp:Button for="TextBox1" class="btn btn-dark" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                            </div>
                        </div>
                     </div>
                  </div>
                  
                  <div class="row">                   
                     <div class="col-md-6">
                        <label>Nama Member</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="NamaMember" runat="server" placeholder="Nama Member" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  <div class="col-md-6">
                        <label>Nama Buku</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Nama Buku" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                  <div class="row">                   
                     <div class="col-md-6">
                        <label>Tanggal Pinjam</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Tanggal Pinjam" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  <div class="col-md-6">
                        <label>Tanggal Pengembalian</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Tanggal Pengembalian" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                      <div class="row">
                         <div class="col-6">
                            <div class="form-group">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary" runat="server" Text="Pinjam" OnClick="Button2_Click" />
                            </div>
                         </div>
                         <div class="col-6">
                            <div class="form-group">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-success" runat="server" Text="Kembalikan" OnClick="Button4_Click" />
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
                               <h4>List Buku Pinjaman</h4>
                            </center>
                         </div>
                      </div>

                      <div class="row">
                         <div class="col">
                            <hr>
                         </div>
                      </div>

                      <div class="row">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                         <div class="col">
                             <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                 <Columns>
                                     <asp:BoundField DataField="member_id" HeaderText="member_id" ReadOnly="True" SortExpression="member_id" />
                                     <asp:BoundField DataField="member_name" HeaderText="member_name" SortExpression="member_name" />
                                     <asp:BoundField DataField="book_id" HeaderText="book_id" SortExpression="book_id" />
                                     <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                     <asp:BoundField DataField="issue_date" HeaderText="issue_date" SortExpression="issue_date" />
                                     <asp:BoundField DataField="due_date" HeaderText="due_date" SortExpression="due_date" />
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