using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace arabaSat
{
    public partial class IlanOnayDetay : System.Web.UI.Page
    {
        string ArabaID = "";
        SqlClass bgl = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["Admin"]) == true)
            {
                if (Page.IsPostBack == false)
                {
                    ArabaID = Request.QueryString["ArabaID"];

                    SqlCommand komut = new SqlCommand("Select * from TableCar where ArabaID=@p1", bgl.baglanti());
                    komut.Parameters.AddWithValue("@p1", Convert.ToInt32(ArabaID));
                    SqlDataReader oku = komut.ExecuteReader();
                    DataList1.DataSource = oku;
                    DataList1.DataBind();

                }
            }
            else
            {
                Response.Redirect("GirişYap.aspx");
            }
        }
        protected void BtnSend_Click(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32(Request.QueryString["Arabaid"]);
            SqlCommand komutAdd = new SqlCommand("Update TableCar set Onaylama=@p1 where ArabaID=@pid", bgl.baglanti());

            komutAdd.Parameters.AddWithValue("@p1", true);
            komutAdd.Parameters.AddWithValue("@pid", ID);

            komutAdd.ExecuteNonQuery();
            Response.Redirect("IlanOnay.aspx");
        }
    }
}