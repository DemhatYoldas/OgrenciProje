using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciProje
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        int id;
        DataSetTableAdapters.TBL_OGRENCİTableAdapter dt = new DataSetTableAdapters.TBL_OGRENCİTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {


                try
                {
                    id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
                    TxtOgrid.Text = id.ToString();
                    TxtOgrAd.Text = dt.OgrenciSec(id)[0].OGRAD;
                    TxtOgrSoyad.Text = dt.OgrenciSec(id)[0].OGRSOYAD;
                    TxtOgrTelefon.Text = dt.OgrenciSec(id)[0].OGRTELEFON;
                    TxtOgrMail.Text = dt.OgrenciSec(id)[0].OGRMAIL;
                    TxtOgrSifre.Text = dt.OgrenciSec(id)[0].OGRSIFRE;
                    TxtOgrFotograf.Text = dt.OgrenciSec(id)[0].OGRFOTOGRAF.ToString();
                }
                catch (Exception)
                {

                    TxtOgrFotograf.Text = "Link Girin (Geçici Çözüm !!!)";
                }
            }
        }

        protected void BtnGncle(object sender, EventArgs e)
        {
            
            dt.OgrenciGuncelle(TxtOgrAd.Text, TxtOgrSoyad.Text, TxtOgrTelefon.Text, TxtOgrMail.Text, TxtOgrSifre.Text,TxtOgrFotograf.Text,Convert.ToInt32(TxtOgrid.Text));

            Response.Redirect("Default.aspx");
        }
    }
}