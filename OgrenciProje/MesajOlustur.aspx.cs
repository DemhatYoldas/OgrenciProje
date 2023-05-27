using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciProje
{
    public partial class Mesajyaz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Burayı idareyetten Yaptım Giriş Oldunda Giriş Ypan Kişi adı olucak ve baskasının yerıne msj atamayacak 
            TxtMesajGonderen.Text = "0001";
            
        }

        protected void BtnMsjGonder_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_MESAJLARTableAdapter dt = new DataSetTableAdapters.TBL_MESAJLARTableAdapter();
            dt.MesajGonder(TxtMesajGonderen.Text,TxtMesajAlıcı.Text,TxtMesajBaslik.Text,TxtMesajİcerik.Value);
            Response.Redirect("GidenMesajlar.Aspx");
        }
    }
}