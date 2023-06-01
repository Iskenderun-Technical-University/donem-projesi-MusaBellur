using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace arabaSat
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["Admin"]) == true)
            {
                SqlCommand komut = new SqlCommand("Select * from TableIletisim", bgl.baglanti());
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