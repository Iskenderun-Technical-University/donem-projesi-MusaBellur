using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace arabaSat
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string ArabaID = ""; 
        SqlClass bgl = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            ArabaID = Request.QueryString["ArabaID"];

            SqlCommand komut = new SqlCommand("Select ArabaID, ArabaFoto1 from TableCar where ArabaID=@pimg", bgl.baglanti());
            komut.Parameters.AddWithValue("@pimg", Convert.ToInt32(ArabaID));
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();

            SqlCommand komut2 = new SqlCommand("Select ArabaID,ArabaModel,ArabaMarkaID,YakitTipi,Vites,Aciklama,Iletisim,Satici,ArabaFoto1,Tarih,Konum,Fiyat,Onaylama,MarkaID,MarkaIsmi from TableCar inner join TableMarka on TableCar.ArabaMarkaID = TableMarka.MarkaID where ArabaID=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", Convert.ToInt32(ArabaID));
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList3.DataSource = oku2;
            DataList3.DataBind();

            SqlCommand komut3 = new SqlCommand("Select ArabaID,ArabaModel,ArabaMarkaID,YakitTipi,Vites,Aciklama,Iletisim,Satici,ArabaFoto1,Tarih,Konum,Fiyat,Onaylama from TableCar where ArabaID=@p2", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p2", Convert.ToInt32(ArabaID));
            SqlDataReader oku3 = komut3.ExecuteReader();
            DataList4.DataSource = oku3;
            DataList4.DataBind();
        }
    }
}