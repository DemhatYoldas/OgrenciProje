using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciProje
{
    public partial class İstatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_OGRENCİ1TableAdapter dt=new DataSetTableAdapters.TBL_OGRENCİ1TableAdapter();
            TxtToplamOgrSayi.Text = "Toplam Öğrenci Sayısı : " + dt.İstatistik1().ToString();
            TxtToplamOgretmenSayi.Text="Toplam Öğretmen Sayısı : "+dt.İstatistik2().ToString();
            TxtToplamDersSayi.Text="Toplam Ders Sayısı : "+dt.İstatistikDersler().ToString();
            TextBoxEnBasarılıDers.Text= "Matematik 1.sınav da En başarılı öğrenci  : " + dt.İstatistik3().ToString();
            TextBoxEdebiyat.Text= "Edebiyat 1.sınav da En başarılı öğrenci  : " + dt.İstatistik4().ToString();
            TextBoxBiyolojiNot.Text= "Biyoloji 1.sınav da En başarılı öğrenci  : " + dt.İstatistik5().ToString();
            TextBoxAlgoritmaNot.Text= "Algoritma 1.sınav da En başarılı öğrenci  : " + dt.İstatistik6().ToString();
            TextBoxFizikNot.Text= "Fizik 1.sınav da En başarılı öğrenci  : " + dt.İstatistik7().ToString();
            TextBoxEdebiyatNot.Text="Edebiyat 1.sınav da Not ortalaması  : "+dt.İstatistik8().ToString();
            TextBoxBiyolojiOrtalama.Text= "Biyoloji 1.sınav da Not ortalaması  : " + dt.istatistik9().ToString();
            TextBoxKimyaGecen.Text= "Kimya Dersini Geçen : " + dt.İstatistik10().ToString();   


        }
    }
}