using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace arabaSat
{
    public partial class Iletisim : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            SqlCommand komutAdd = new SqlCommand("Insert into TableIletisim (IletisimIsim,IletisimBilgisi,IletisimMesaj) values (@pAd,@pBilgi,@pMesaj)", bgl.baglanti());
            komutAdd.Parameters.AddWithValue("@pAd", tboxAd.Text);
            komutAdd.Parameters.AddWithValue("@pBilgi", tboxBilgi.Text);
            komutAdd.Parameters.AddWithValue("@pMesaj", tboxMesaj.Text);

            komutAdd.ExecuteNonQuery();
        }

        protected void tboxMesaj_TextChanged(object sender, EventArgs e)
        {

        }
    }
}