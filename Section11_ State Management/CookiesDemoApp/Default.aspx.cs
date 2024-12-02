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
        Response.Write(e.ToString());
    }
    protected void btnSetCookie_Click(object sender, EventArgs e)
    {
        HttpCookie c = new HttpCookie(txtKey.Text);// setted a Name of cookie 
        c.Value = txtValue.Text; // setted Value  for Cookie 
        c.Path = Request.ApplicationPath;// set path of Cookie;
        if (chkPersistant.Checked)  // check the checkbox is checked or not 
        {
            c.Expires = DateTime.MaxValue; // Set the Expires Property if cookie/if not set then it will become non persitent automatically 

        }
        else
        {
            c.Expires.AddHours(1);
        }
        if (chkSecured.Checked)
        {
            c.Secure = chkSecured.Checked;// Secure only sends the cookies in encrypted manner to the secured browsers only 
            //Server wll send the cookies to only to the Secured server such as https 
        }
        Response.Cookies.Add(c);
    }
    protected void btnGetCookie_Click(object sender, EventArgs e)
    {
        HttpCookie c = Request.Cookies[txtKey.Text];  // it will return reference to that cookies who's name is that text
        if (c == null) // checking reference  is allocated or not 
        {
            txtValue.Text = "No Such Cookie Found "; //

        }
        else
        {
            txtValue.Text = c.Value;// set value of such cookie in that textbox 
        }

    }
    protected void btnDestroyCookie_Click(object sender, EventArgs e)
    {

        HttpCookie c = new HttpCookie(txtKey.Text);// setted a Name of cookie 
        c.Path = Request.ApplicationPath;// set path of Cookie;
        
            c.Expires = DateTime.Today.AddDays(-1); // Set the Expires Property if cookie/if not set then it will become non persitent automatically 
            Response.Cookies.Add(c);// it overrides the exisiting cookie with such name and set expiry to previous day then it get expired    

            //Response.Cookies.Clear();// for clearing all cookie 
     

    }
    protected void btnGetAllCookies_Click(object sender, EventArgs e)
    {
        lblValue.Text = "";
        foreach (string key in Request.Cookies)  // Request.Cookies Gives the Values 
        {
            lblValue.Text += key + ":" + Request.Cookies[key].Value + "<br/>";

        }
    }
    protected void FormsMethod_Click(object sender, EventArgs e)
    {  
      //  Response.Redirect("~/Default2.aspx");
        string rtnURL="~/Default2.aspx"+"?txtKey="+Server.UrlEncode(txtKey.Text);
        Response.Redirect(rtnURL);
        FormsData.Text = Request.Form["txtKey"];
    }
}