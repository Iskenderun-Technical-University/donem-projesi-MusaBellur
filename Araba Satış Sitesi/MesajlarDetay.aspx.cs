using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace arabaSat
{
    public partial class MesajlarDetay : System.Web.UI.Page
    {
        string IletisimID = "";
        SqlClass bgl = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["Admin"]) == true)
            {
                IletisimID = Request.QueryString["IletisimID"];

                SqlCommand komut = new SqlCommand("Select * from TableIletisim where IletisimID = @id", bgl.baglanti());
                komut.Parameters.AddWithValue("@id", Convert.ToInt32(IletisimID));
                SqlDataReader oku = komut.ExecuteReader();
                DataList1.DataSource = oku;
                DataList1.DataBind();
            }
            else
            {
                Response.Redirect("GirişYap.aspx");
            }

        }
    }
}