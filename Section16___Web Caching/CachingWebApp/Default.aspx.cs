using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Cache.SetCacheability(HttpCacheability.Server);
        //Response.Cache.SetExpires(DateTime.Now.AddSeconds(100));
        //Response.Cache.SetNoStore();
        //Response.Cache.VaryByParams["p1"]=true;
        //Response.Cache.VaryByParams["TextBox1"] = true;
    }

    static string GetServerTime(HttpContext context)  // substitution caching 
    {
        return DateTime.Now.ToLongTimeString();
    }
}