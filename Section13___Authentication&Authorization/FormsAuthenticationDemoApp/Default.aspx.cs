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
        
        if (User.Identity.IsAuthenticated)
        {
            lbtnLogin.Text = "Logout";
            ltrUsername.Text = User.Identity.Name;
        }
        else
        {
            ltrUsername.Text = "Anonymous";
            lbtnLogin.Text = "Login";
        }
    }
    protected void lbtnLogin_Click(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)// it checks  does request contains authenticated cookie or not 
        {
            System.Web.Security.FormsAuthentication.SignOut(); // it will remove te Persistent/ non persistent cookies from the browser    means it adds the cookie with expired date 
            Response.Write("Logged Out Successfully ");
            lbtnLogin.Text = "Login";
            ltrUsername.Text = "Anonymous";
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void btnEncrypt_Click(object sender, EventArgs e)
    {
      txtPassword.Text= System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "MD5"); //"SHA1"
    }
}