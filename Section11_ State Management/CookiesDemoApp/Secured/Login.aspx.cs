using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string un = txtUsername.Text;
        string pwd = txtPassword.Text;
        if (un == pwd & un!="")
        {
            //then it it valid user 
            HttpCookie cookie = new HttpCookie("AuthCookie");
            cookie.Value = un;
            if (chkRemeber.Checked)
            {
                cookie.Expires = DateTime.MaxValue;
            }
            Response.Cookies.Add(cookie);
            Response.Redirect("Default.aspx");
        }
        else
        {
            lblError.Text = "Invalid USername or Password";
        }
    }
}