using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciProje
{
    public partial class OgrenciEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnKaydet(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_OGRENCİTableAdapter dt = new DataSetTableAdapters.TBL_OGRENCİTableAdapter();
            dt.OgrenciEkle(TxtOgrAd.Text, TxtOgrSoyad.Text, TxtOgrTelefon.Text, TxtOgrMail.Text, TxtOgrSifre.Text, TxtOgrFotograf.Text);

            Response.Redirect("Default.aspx");
        }
    }
}