using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace arabaSat
{
    public partial class ArabaEkle : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["User"]) == true)
            {
                if (Page.IsPostBack == false)
                {
                    SqlCommand komut = new SqlCommand("Select * from TableMarka", bgl.baglanti());
                    SqlDataReader oku = komut.ExecuteReader();
                    DropDownList1.DataTextField = "MarkaIsmi";
                    DropDownList1.DataValueField = "MarkaID";
                    DropDownList1.DataSource = oku;
                    DropDownList1.DataBind();
                }
            }
            else
            {
                Response.Redirect("GirişYap.aspx");
            }

        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            SqlCommand komutAdd = new SqlCommand("Insert into TableCar (Satici,ArabaMarkaID,ArabaModel,Fiyat,YakitTipi,Vites,ArabaFoto1,Konum,Iletisim,Aciklama) values (@pisim,@pmarka,@pmodel,@pfiyat,@pyakit,@pvites,@pfoto,@pkonum,@ptel,@paciklama)", bgl.baglanti());
            komutAdd.Parameters.AddWithValue("@pisim", tboxisim.Text);
            komutAdd.Parameters.AddWithValue("@pmarka", Convert.ToInt32(DropDownList1.SelectedValue));
            komutAdd.Parameters.AddWithValue("@pmodel", tboxModel.Text);
            komutAdd.Parameters.AddWithValue("@pfiyat", tboxFiyat.Text);
            komutAdd.Parameters.AddWithValue("@pyakit", tboxYakıt.Text);
            komutAdd.Parameters.AddWithValue("@pvites", tboxVites.Text);
            komutAdd.Parameters.AddWithValue("@pfoto", tboxFoto.Text);
            komutAdd.Parameters.AddWithValue("@pkonum", tboxKonum.Text);
            komutAdd.Parameters.AddWithValue("@ptel", tboxTel.Text);
            komutAdd.Parameters.AddWithValue("@paciklama", tboxAciklama.Text);

            komutAdd.ExecuteNonQuery();
        }
    }
}