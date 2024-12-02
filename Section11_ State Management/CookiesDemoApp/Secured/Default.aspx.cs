using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Secured_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["AuthCookie"];
        lnkLogout.Visible = (cookie != null);
        if (cookie != null)
        {
            Response.Write("Hello " + cookie.Value);// Client is authenticated 
        }
        else
        {
            Response.Redirect("Login.aspx");
        }

    }
    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["AuthCookie"];
        cookie.Expires = DateTime.Now.AddDays(-1);
        Response.Cookies.Add(cookie);
        Response.Redirect("Login.aspx");
    }
}