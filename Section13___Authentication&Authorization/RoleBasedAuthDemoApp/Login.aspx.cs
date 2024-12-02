using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {

        string un = txtLogin.Text;
        string pwd = txtPassword.Text;
        bool isAuthenticated=System.Web.Security.FormsAuthentication.Authenticate(un,pwd);// it check the web.config credentials for is that such combination exists or not 

        // in casse of Encryption the Authenticate() method also encrypt the password and then compare with web.config credentials 
        if (isAuthenticated)
        {

            FormsAuthentication.RedirectFromLoginPage(un, chkRememberMe.Checked);
                // do it like below (above line does all thoes things that we are written manually bellow )

            //FormsAuthentication.SetAuthCookie(un, chkRememberMe.Checked); //SetAuthCookie() method wil set tjhe cookie with name of un then user will not need to authenticate their identity again and again 
            //// first parameter is Value for the Cookie["__AuthCookie"] and second is isthat persistent or non persistent 
            //Response.Write("Login Succeed ");
            //string returnUrl = Request.QueryString["ReturnUrl"];
            //if (!string.IsNullOrEmpty(returnUrl))
            //{
            //    Response.Redirect(returnUrl);
            //}
            //else
            //{
            //    Response.Redirect("~/");
            //    Response.Redirect(FormsAuthentication.DefaultUrl");  //it retrieves the default url from web.config  
            //}
               
        }
        else
        {
            lblError.Text = "Invalid Username and password ";
        }
    }
    protected void chkRememberMe_CheckedChanged(object sender, EventArgs e)
    {

    }
}