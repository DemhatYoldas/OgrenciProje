using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciProje
{
    public partial class DersGrafik : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-8KSC47J\SQLEXPRESS;Initial Catalog=UdeymSiteDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                DataSetTableAdapters.TBL_DERSLERTableAdapter dt = new DataSetTableAdapters.TBL_DERSLERTableAdapter();
                DropDownList1.DataSource = dt.DerslerListesi();
                DropDownList1.DataTextField = "DERSAD";
                DropDownList1.DataValueField = "DERSID";
                DropDownList1.DataBind();
                 

           }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            connection.Open();
            SqlCommand komuts = new SqlCommand(@"select DERSAD,SINAV1 FROM TBL_NOTLAR inner join TBL_DERSLER ON  TBL_NOTLAR.DERSNID=TBL_DERSLER.DERSID WHERE DERSID=DERSID GROUP BY DERSAD=@DERSNID", connection);
            komuts.Parameters.AddWithValue("@DERSNID", DropDownList1.SelectedItem.Value);
            SqlDataReader dr5= komuts.ExecuteReader();
            while (dr5.Read())
            {
                WebChartControl1.Series["Notlar"].Points.AddPoint(Convert.ToString(dr5[0]), int.Parse(dr5[1].ToString()));

            }
            connection.Close();
        }        
    }
}
