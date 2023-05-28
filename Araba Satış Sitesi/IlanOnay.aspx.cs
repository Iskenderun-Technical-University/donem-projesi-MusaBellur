using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace arabaSat
{
    public partial class AdminSayfa : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select ArabaID,ArabaModel,ArabaMarkaID,YakitTipi,Aciklama,Iletisim,Satici,ArabaFoto1,Tarih,Konum,Fiyat,Onaylama,MarkaID,MarkaIsmi from TableCar inner join TableMarka on TableCar.ArabaMarkaID = TableMarka.MarkaID where Onaylama=@pcon", bgl.baglanti());
            komut.Parameters.AddWithValue("@pcon", false);
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();
        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}