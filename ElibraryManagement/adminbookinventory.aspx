<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="ElibraryManagement.adminbookinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
       <script type="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
       });
 
       function readURL(input) {
           if (input.files && input.files[0]) {
               var reader = new FileReader();
 
               reader.onload = function (e) {
                   $('#imgview').attr('src', e.target.result);
               };
 
               reader.readAsDataURL(input.files[0]);
           }
       }
 
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
                           <h4>Detail Buku</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img id="imgview" Height="150px" Width="100px" src="imgs/books1.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>ID Buku</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID Buku"></asp:TextBox>
                              <asp:Button class="form-control btn btn-primary" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>Judul Buku</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Judul Buku"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Bahasa</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Inggris" Value="Inggris" />
                              <asp:ListItem Text="Indonesia" Value="Indonesia" />
                              <asp:ListItem Text="Jepang" Value="Jepang" />
                              <asp:ListItem Text="Perancis" Value="Perancis" />
                              <asp:ListItem Text="Jerman" Value="Jerman" />
                              <asp:ListItem Text="India" Value="India" />
                           </asp:DropDownList>
                        </div>
                        <label>Nama Penerbit</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                              <asp:ListItem Text="Penerbit 1" Value="Penerbit 1" />
                              <asp:ListItem Text="Penerbit 2" Value="Penerbit 2" />
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Nama Penulis</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                              <asp:ListItem Text="A1" Value="a1" />
                              <asp:ListItem Text="a2" Value="a2" />
                           </asp:DropDownList>
                        </div>
                        <label>Tanggal Rilis</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Genre</label>
                        <div class="form-group">
                           <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                              <asp:ListItem Text="Aksi" Value="Aksi" />
                              <asp:ListItem Text="Petualangan" Value="Petualangan" />
                              <asp:ListItem Text="Komik" Value="Komik" />
                              <asp:ListItem Text="Self Help" Value="Self Help" />
                              <asp:ListItem Text="Motivasional" Value="Motivasional" />
                              <asp:ListItem Text="Hidup Sehat" Value="Hidup Sehat" />
                              <asp:ListItem Text="Keterampilan" Value="Keterampilan" />
                              <asp:ListItem Text="Kriminal" Value="Kriminal" />
                              <asp:ListItem Text="Drama" Value="Drama" />
                              <asp:ListItem Text="Fantasi" Value="Fantasi" />
                              <asp:ListItem Text="Horror" Value="Horror" />
                              <asp:ListItem Text="Puisi" Value="Puisi" />
                              <asp:ListItem Text="Pengembangan Diri" Value="Pengembangan Diri" />
                              <asp:ListItem Text="Romansa" Value="Romansa" />
                              <asp:ListItem Text="SciFi" Value="SciFi" />
                              <asp:ListItem Text="Misteri" Value="Misteri" />
                              <asp:ListItem Text="Menegangkan" Value="Menegangkan" />
                              <asp:ListItem Text="Seni" Value="Seni" />
                              <asp:ListItem Text="Autobiografi" Value="Autobiografi" />
                              <asp:ListItem Text="Ensiklopedia" Value="Ensiklopedia" />
                              <asp:ListItem Text="Kesehatan" Value="Kesehatan" />
                              <asp:ListItem Text="Sejarah" Value="Sejarah" />
                              <asp:ListItem Text="Matematika" Value="Matematika" />
                              <asp:ListItem Text="Textbook" Value="Textbook" />
                              <asp:ListItem Text="Sains" Value="Sains" />
                              <asp:ListItem Text="Travel" Value="Travel" />
                           </asp:ListBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Edisi</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Edisi"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Harga Buku(per unit)</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Harga Buku(per unit)" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Total Halaman</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Stok Sebenarnya</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Stok Sebenarnya" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Stok Tersedia</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Stok Tersedia" TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Jumlah Dipinjam</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Jumlah Dipinjam" TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12">
                        <label>Deskripsi</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Deskripsi" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-4">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Tambah" OnClick="Button1_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Perbarui" OnClick="Button3_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Hapus" OnClick="Button2_Click" />
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
                           <h4>List Buku</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                           <Columns>
                              <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" >
                                 <ControlStyle Font-Bold="True" />
                                 <ItemStyle Font-Bold="True" />
                              </asp:BoundField>
                              <asp:TemplateField>
                                 <ItemTemplate>
                                    <div class="container-fluid">
                                       <div class="row">
                                          <div class="col-lg-10">
                                             <div class="row">
                                                <div class="col-12">
                                                   <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                </div>
                                             </div>
                                             <div class="row">
                                                <div class="col-12">
                                                   <span>Penulis - </span>
                                                   <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                   &nbsp;| <span><span>&nbsp;</span>Genre - </span>
                                                   <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                   &nbsp;| 
                                                   <span>
                                                      Bahasa -<span>&nbsp;</span>
                                                      <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>
                                                   </span>
                                                </div>
                                             </div>
                                             <div class="row">
                                                <div class="col-12">
                                                   Penerbit -
                                                   <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                   &nbsp;| Tanggal Rilis -
                                                   <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                   &nbsp;| Halaman -
                                                   <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                   &nbsp;| Edisi -
                                                   <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>
                                                </div>
                                             </div>
                                             <div class="row">
                                                <div class="col-12">
                                                   Cost -
                                                   <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                   &nbsp;| Stok Sebenarnya -
                                                   <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                   &nbsp;| Stok Tersedia -
                                                   <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>
                                                </div>
                                             </div>
                                             <div class="row">
                                                <div class="col-12">
                                                   Deskripsi -
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
