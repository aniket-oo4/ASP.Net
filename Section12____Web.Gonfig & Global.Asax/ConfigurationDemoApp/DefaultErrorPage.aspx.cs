using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DefaultErrorPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       string url= Request.QueryString["aspxerrorpath"];
       Response.Write("Error occurred at page:"+url);
    }
}