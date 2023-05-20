using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciProje
{
    public partial class OgrenciSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // id getirdik id sql de int oldundan int çevirme gereksiniminde buluınduk
            // Request.QueryString => diğer sayfadan buraya taşı  
            // OGRID => dEFAULT.ASPX İÇERSİNDEN GELİYOR 

            int id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());

            DataSetTableAdapters.TBL_OGRENCİTableAdapter dt=new DataSetTableAdapters.TBL_OGRENCİTableAdapter();
            dt.OgrenciSil(id);
            Response.Redirect("Default.aspx");
        }
    }
}