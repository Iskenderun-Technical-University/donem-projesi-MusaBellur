using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace arabaSat
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        string MarkaID = "";
        SqlClass bgl = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            MarkaID = Request.QueryString["MarkaID"];

            SqlCommand komut = new SqlCommand("Select ArabaID,ArabaModel,ArabaMarkaID,YakitTipi,Aciklama,Iletisim,Satici,ArabaFoto1,Tarih,Konum,Fiyat,Onaylama,MarkaID,MarkaIsmi from TableCar inner join TableMarka on TableCar.ArabaMarkaID = TableMarka.MarkaID where MarkaID = @p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt32(MarkaID));
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();
        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}