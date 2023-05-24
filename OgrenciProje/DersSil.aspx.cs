using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciProje
{
    public partial class DerslerBul : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
            DataSetTableAdapters.TBL_DERSLERTableAdapter dt=new DataSetTableAdapters.TBL_DERSLERTableAdapter();
            dt.DersSil(id);
            Response.Redirect("DerslerListesi.Aspx");
        }
    }
}