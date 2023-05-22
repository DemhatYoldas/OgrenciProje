using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciProje
{
    public partial class DuyuruEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                DataSetTableAdapters.TBL_OGRETMENTableAdapter dt = new DataSetTableAdapters.TBL_OGRETMENTableAdapter();
                TxtDuyuruOgretmen.DataSource = dt.OgretmenListesi();
                TxtDuyuruOgretmen.DataTextField = "OGRTADSOYAD";
                TxtDuyuruOgretmen.DataValueField = "OGRTID";
                TxtDuyuruOgretmen.DataBind();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           DataSetTableAdapters.TBL_DUYURULARTableAdapter dt=new DataSetTableAdapters.TBL_DUYURULARTableAdapter();
            dt.DuyuruEkle(TxtDuyuruBaslik.Text,TxtDuyuruİcerik.Value.ToString(),Convert.ToInt32(TxtDuyuruOgretmen.SelectedValue));

            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}