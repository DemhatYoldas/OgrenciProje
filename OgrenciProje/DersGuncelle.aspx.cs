using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciProje
{
    public partial class DerslerEkle : System.Web.UI.Page
    {
        int Dersid;
        DataSetTableAdapters.TBL_DERSLERTableAdapter dt = new DataSetTableAdapters.TBL_DERSLERTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false) 
            {
                Dersid = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
                TxtDersid.Text = dt.DersGetir(Dersid)[0].DERSID.ToString();
                TxtDersAdi.Text = dt.DersGetir(Dersid)[0].DERSAD.ToString();
               
            }
           
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_DERSLERTableAdapter dt = new DataSetTableAdapters.TBL_DERSLERTableAdapter();
            dt.DersGuncelle(TxtDersAdi.Text, Convert.ToInt32(TxtDersid.Text));
            Response.Redirect("DerslerListesi.Aspx");
        }
    }
}