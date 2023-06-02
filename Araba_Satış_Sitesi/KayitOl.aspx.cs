using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace arabaSat
{
    public partial class KayitOl : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string yeniSifre = SHA256Class.ComputeSha256Hash(tboxSifre.Text);

            SqlCommand komutAdd = new SqlCommand("Insert into TableKayıt (KullaniciIletisim,KullaniciSifre) values (@pmail,@psifre)", bgl.baglanti());
            komutAdd.Parameters.AddWithValue("@pmail", tboxMail.Text);
            komutAdd.Parameters.AddWithValue("@psifre", yeniSifre);

            komutAdd.ExecuteNonQuery();

            tboxMail.Text = "";
            tboxSifre.Text = "";

            Response.Redirect("GirişYap.aspx");
        }
    }
}