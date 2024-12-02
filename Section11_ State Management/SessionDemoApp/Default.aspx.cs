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
        int n = 0;
        if (!Session.IsNewSession) //not new sessio
        {
            n = int.Parse(Session["cnt"].ToString());
        }
              n++;
            Session["cnt"] = n.ToString();
    
        lblCounter.Text = (Session["cnt"]).ToString();

        //------------------------------------------
        // Application Counter  use static properties  instead of application state
        int m = 0;
        if (Application["cnt"]!=null) //not new sessio
        {
            m = int.Parse(Application["cnt"].ToString());
        }
        m++;
        Application["cnt"] = m.ToString();

        lblAppCounter.Text = (Application["cnt"]).ToString();

        //------------------------------------------

        if (Session["username"]==null ||Session["username"]=="")
        {
            lblLoginStatus.Text = "Please Login";
            lblLoginStatus.ForeColor = System.Drawing.Color.Red;
            lnkLogin.Text = "Login";
        }
        else
        {
            lblLoginStatus.Text = "Welcome :" + Session["username"].ToString();
            lblLoginStatus.ForeColor = System.Drawing.Color.Black;
            lnkLogin.Text = "Logout";
        }
        string url = "http://" + Request.Url.Host + ":" + Request.Url.Port +Response.ApplyAppPathModifier(Request.ApplicationPath) + "Login.aspx"; //used when cookieless session
        Response.Write(url);
    }
    protected void lnkLogin_Click(object sender, EventArgs e)
    {
        if (lnkLogin.Text=="Login")
        {
              Response.Redirect("~/Login.aspx");
        }
        else
        {
            Session.Remove("username");
        }
        Response.Redirect(Request.Path);
        
    }
}