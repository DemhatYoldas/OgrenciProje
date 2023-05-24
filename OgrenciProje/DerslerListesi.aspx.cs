﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciProje
{
    public partial class DerslerListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_DERSLERTableAdapter dt=new DataSetTableAdapters.TBL_DERSLERTableAdapter();
            Repeater1.DataSource = dt.DerslerListesi() ;
            Repeater1.DataBind();
        }
    }
}