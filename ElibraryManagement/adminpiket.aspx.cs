using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagement
{
    public partial class adminpiket : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        protected void Go_Click(object sender, EventArgs e)
        {
            getStaffByID();
        }
        protected void Piket_Click(object sender, EventArgs e)
        {
            addNewPiket();
        }

        protected void Selesai_Click(object sender, EventArgs e)
        {
            deletePiket();
        }

        protected void Go1_Click(object sender, EventArgs e)
        {
            getPiketByID();
        }

        void getStaffByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from staff_master_tbl where id_petugas='" + IDPetugas.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    NamaPetugas.Text = dt.Rows[0][1].ToString();
                    NoTelp.Text = dt.Rows[0][4].ToString();

                }
                else
                {
                    Response.Write("<script>alert('ID Petugas Salah');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void getPiketByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from piket_master_tbl where id_piket='" + IDPiket.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    IDPetugas.Text = dt.Rows[0][1].ToString();
                    NamaPetugas.Text = dt.Rows[0][2].ToString();
                    NoTelp.Text = dt.Rows[0][3].ToString();
                    HariPiket.Text = dt.Rows[0][4].ToString();
                    Pekerjaan.Text = dt.Rows[0][5].ToString();
                }
                else
                {
                    Response.Write("<script>alert('ID Piket Salah');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void addNewPiket()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO piket_master_tbl(id_petugas, id_piket, nama_petugas, no_telepon, hari_piket, pekerjaan) values(@id_petugas, @id_piket, @nama_petugas, @no_telepon, @hari_piket, @pekerjaan)", con);

                cmd.Parameters.AddWithValue("@id_petugas", IDPetugas.Text.Trim());
                cmd.Parameters.AddWithValue("@id_piket", IDPiket.Text.Trim());
                cmd.Parameters.AddWithValue("@nama_petugas", NamaPetugas.Text.Trim());
                cmd.Parameters.AddWithValue("@no_telepon", NoTelp.Text.Trim());
                cmd.Parameters.AddWithValue("@hari_piket", HariPiket.Text.Trim());
                cmd.Parameters.AddWithValue("@pekerjaan", Pekerjaan.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Data Berhasil Ditambahkan!');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void deletePiket()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from piket_master_tbl WHERE id_piket='" + IDPiket.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Data Piket Berhasil Dihapus!');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void clearForm()
        {
            IDPetugas.Text = "";
            IDPiket.Text = "";
            NamaPetugas.Text = "";
            NoTelp.Text = "";
            HariPiket.Text = "";
            Pekerjaan.Text = "";
        }
    }
}