using DevExpress.Web.ASPxRichEdit.Internal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciProje
{
    public partial class NotGuncelle : System.Web.UI.Page
    {
        int Notid;
        DataSetTableAdapters.OgrNotlarTableAdapter dt = new DataSetTableAdapters.OgrNotlarTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                Notid = Convert.ToInt32(Request.QueryString["NotID"].ToString());
                TxtOgrNotid.Text = dt.NotIDGetir(Notid)[0].NotID.ToString();
                TxtOgrid.Text = dt.NotIDGetir(Notid)[0].OGRENCIID.ToString();
                TxtOgrAdSoyad.Text = dt.NotIDGetir(Notid)[0].OGRENCIADSOYAD;
                TxtDersAd.Text = dt.NotIDGetir(Notid)[0].DERSAD;
                TxtSınavBir.Text = dt.NotIDGetir(Notid)[0].SINAV1.ToString();
                TxtSınavIki.Text = dt.NotIDGetir(Notid)[0].SINAV2.ToString();
                TxtSınavUc.Text = dt.NotIDGetir(Notid)[0].SINAV3.ToString();
                TxtOrtalama.Text = dt.NotIDGetir(Notid)[0].ORTALAMA.ToString();
                TxtDurum.Text = dt.NotIDGetir(Notid)[0].DURUM.ToString();
            }



        }

        protected void BtnHesap_Click1(object sender, EventArgs e)
        {
            double sinav1, sinav2, sinav3;
            double Ortalama;
            sinav1 = Convert.ToInt32(TxtSınavBir.Text);
            sinav2 = Convert.ToInt32(TxtSınavIki.Text);
            sinav3 = Convert.ToInt32(TxtSınavUc.Text);
            Ortalama = (sinav1 + sinav2 + sinav3) / 3;
            TxtOrtalama.Text = Ortalama.ToString("0.00");
            if (Ortalama >= 50)
            {
                TxtDurum.Text = "True";
            }
            else
            {
                TxtDurum.Text = "False";
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            /*
             * dt.NotGuncelle(byte.Parse(TxtSınavBir.Text), byte.Parse(TxtSınavIki.Text), byte.Parse(TxtSınavUc.Text), decimal.Parse(TxtOrtalama.Text), bool.Parse(TxtDurum.Text), Notid);
               Response.Redirect("NotListesi.Aspx");

              bu üsteki kodun çalışmaması  sebebi ögrenciNotID görmemesi boş geliyor 
              bunu ya text içersine gelen veri Convert.toınt32(TxtOgrNotid.Text) yapıp kullanacaz 
              yada üst kısımda tanımladımız ;
              Notid = Convert.ToInt32(Request.QueryString["NotID"].ToString()); 
              eklememiz lazım üstte if içersinde olunca sayfayüklendinde gelen değer oldundan buton tetiklenince
              gidiyor altta try catch içersinde yaptım oldu zaten 
            */

            try
            {
                dt.NotGuncelle(byte.Parse(TxtSınavBir.Text), byte.Parse(TxtSınavIki.Text), byte.Parse(TxtSınavUc.Text), decimal.Parse(TxtOrtalama.Text), bool.Parse(TxtDurum.Text), Convert.ToInt32(TxtOgrNotid.Text)) ;
                Response.Redirect("NotListesi.Aspx");
            }
            catch (FormatException ex)
            {
                // Hata mesajını işleyebilir veya hata detaylarını göstermek için hata sayfasına yönlendirebilirsiniz
                // Örnek:
                Response.Redirect("Hata.aspx?mesaj=" + ex.Message);
            }


        }
    }
}