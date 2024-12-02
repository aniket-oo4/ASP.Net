using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        HttpCookie c = new HttpCookie("qualification");
        c.Value = txtQualification.Text;
        c.Path = Request.ApplicationPath;
        Response.Cookies.Add(c);
        //or we can also do this by 
        Response.Cookies["country"].Value = txtCountry.Text;
        Response.Cookies["country"].Path = Request.ApplicationPath;

        Response.Redirect("~/Page3.aspx");
    }
}