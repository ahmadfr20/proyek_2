<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="ElibraryManagement.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="imgs/home-bg.jpg" class="img-fluid"/>
    </section>
    <section>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                    <h2>Fitur Kami</h2>
                    <p><b>3 Fitur Utama</b></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/digital-inventory.png"/>
                        <h4>Digital Book Inventory</h4>
                        <p class="text-justify">Digital Book Inventory merupakan list dari buku-buku yang
                            telah tersimpan di perpustakaan.
                        </p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/search-online.png"/>
                        <h4>Search Books</h4>
                        <p class="text-justify">Anda dapat mencari buku kesukaan anda yang terdapat dalam koleksi kami.
                        </p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/defaulters-list.png"/>
                        <h4>Digital Book Inventory</h4>
                        <p class="text-justify">Digital Book Inventory merupakan list dari buku-buku yang
                            telah tersimpan di perpustakaan.
                        </p>
                    </center>
                </div>
            </div>


        </div>

    </section>

    <section>
        <img src="imgs/in-homepage-banner.jpg" class="img-fluid"/>
    </section>

    <section>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                    <h2>Cara Peminjaman Buku</h2>
                    <p><b>Kami Memiliki 3 Proses Mudah</b></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/sign-up.png"/>
                        <h4>Sign Up</h4>
                        <p class="text-justify">Anda terlebih dahulu diharuskan mendaftar sebagai member perpustakaan,
                            sebagai member anda dapat mencari buku sepuasnya dari koleksi kami.
                        </p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/search-online.png"/>
                        <h4>Search Books</h4>
                        <p class="text-justify">Pengunjung yang telah terdaftar sebagai member perpustakaan dapat mencari dan meminjam buku
                            yang telah kami sediakan.
                        </p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/library.png"/>
                        <h4>Ambil Buku</h4>
                        <p class="text-justify">Member yang telah menemukan buku yang disukai dapat datang langsung ke perpustakaan
                            dan langsung mengambil buku yang telah dipinjam.
                        </p>
                    </center>
                </div>
            </div>


        </div>

    </section>

</asp:Content>
