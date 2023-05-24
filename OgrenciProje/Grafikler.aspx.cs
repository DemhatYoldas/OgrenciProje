using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OgrenciProje
{
    public partial class Grafikler : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-8KSC47J\SQLEXPRESS;Initial Catalog=UdeymSiteDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            // Sorgu1
            connection.Open();
            SqlCommand command = new SqlCommand("Execute Graf1",connection);
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                WebChartControl3.Series["Dersler"].Points.AddPoint(Convert.ToString(reader[0]),int.Parse(reader[1].ToString()));
            }
            connection.Close();


            // Sorgu2
            connection.Open();
            SqlCommand command2 = new SqlCommand("Execute Graf2", connection);
            SqlDataReader reader2 = command2.ExecuteReader();
            while (reader2.Read())
            {
                WebChartControl5.Series["Cinsiyet"].Points.AddPoint(Convert.ToString(reader2[0]), int.Parse(reader2[1].ToString()));
            }
            connection.Close();


            // Sorgu3
            connection.Open();
            SqlCommand command3 = new SqlCommand("Execute Graf3", connection);
            SqlDataReader reader3 = command3.ExecuteReader();
            while (reader3.Read())
            {
                WebChartControl1.Series["DersAd"].Points.AddPoint(Convert.ToString(reader3[0]), int.Parse(reader3[1].ToString()));
            }
            connection.Close();




            // Sorgu4
            connection.Open();
            SqlCommand command4 = new SqlCommand("Execute Graf4", connection);
            SqlDataReader reader4 = command4.ExecuteReader();
            while (reader4.Read())
            {
                WebChartControl6.Series["Series 1"].Points.AddPoint(Convert.ToString(reader4[0]), int.Parse(reader4[1].ToString()));
            }
            connection.Close();




        }

    }
}