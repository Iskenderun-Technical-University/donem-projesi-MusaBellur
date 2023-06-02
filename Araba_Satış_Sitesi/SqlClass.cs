using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace arabaSat
{
    public class SqlClass
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-QE6J6UN\\SQLEXPRESS;Initial Catalog=Araba-İSTE;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}