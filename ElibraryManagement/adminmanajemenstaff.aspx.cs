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
    public partial class adminmanajemenstaff : System.Web.UI.Page
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

        protected void Tambah_Click(object sender, EventArgs e)
        {
            addNewPetugas();
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            updatePetugas();
        }

        protected void Hapus_Click(object sender, EventArgs e)
        {
            deletePetugas();
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
                    UsernameP.Text = dt.Rows[0][2].ToString();
                    TglLahir.Text = dt.Rows[0][3].ToString();
                    NoTelp.Text = dt.Rows[0][4].ToString();
                    NIK.Text = dt.Rows[0][5].ToString();
                    AlamatFull.Text = dt.Rows[0][6].ToString();
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

        void addNewPetugas()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO staff_master_tbl(id_petugas, nama_petugas, username, dob, contact_no, nik, full_address) values(@id_petugas, @nama_petugas, @username, @dob, @contact_no, @nik, @full_address)", con);

                cmd.Parameters.AddWithValue("@id_petugas", IDPetugas.Text.Trim());
                cmd.Parameters.AddWithValue("@nama_petugas", NamaPetugas.Text.Trim());
                cmd.Parameters.AddWithValue("@username", UsernameP.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TglLahir.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", NoTelp.Text.Trim());
                cmd.Parameters.AddWithValue("@nik", NIK.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", AlamatFull.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Petugas Berhasil Ditambahkan!');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void updatePetugas()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE staff_master_tbl SET nama_petugas=@nama_petugas, username=@username, dob=@dob, contact_no=@contact_no, nik=@nik, full_address=@full_address WHERE id_petugas='" + IDPetugas.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@id_petugas", IDPetugas.Text.Trim());
                cmd.Parameters.AddWithValue("@nama_petugas", NamaPetugas.Text.Trim());
                cmd.Parameters.AddWithValue("@username", UsernameP.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TglLahir.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", NoTelp.Text.Trim());
                cmd.Parameters.AddWithValue("@nik", NIK.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", AlamatFull.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Data Petugas Berhasil Diperbarui!');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void deletePetugas()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from staff_master_tbl WHERE id_petugas='" + IDPetugas.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Data Petugas Berhasil Dihapus!');</script>");
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
            NamaPetugas.Text = "";
            UsernameP.Text = "";
            TglLahir.Text = "";
            NoTelp.Text = "";
            NIK.Text = "";
            AlamatFull.Text = "";
        }
    }
}