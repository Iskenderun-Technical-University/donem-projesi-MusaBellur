using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace arabaSat
{
    public partial class GirişYap : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Timeout = 1;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string yeniSifre = SHA256Class.ComputeSha256Hash(tboxSifre.Text);

            SqlCommand komutAdd = new SqlCommand("Select * from TableKayıt where KullaniciIletisim=@pmail and KullaniciSifre=@psifre", bgl.baglanti());
            komutAdd.Parameters.AddWithValue("@pmail", tboxMail.Text);
            komutAdd.Parameters.AddWithValue("@psifre", yeniSifre);

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(komutAdd);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                if(tboxMail.Text == "bellurmusa@gmail.com")
                {
                    Session["Admin"] = true;
                    Session["KullaniciIletisim"] = "bellurmusa@gmail.com";
                    Response.Redirect("IlanOnay.aspx");
                }
                else
                {
                    Session["User"] = true;
                    Session["KullaniciIletisim"] = dt.Rows[0].ToString();
                    Response.Redirect("Ana Sayfa.aspx");
                }
                
            }
            else
            {
                Response.Write("İletişim Bilginiz veya Şifreniz Hatalı!!!");
            }
        }
    }
}