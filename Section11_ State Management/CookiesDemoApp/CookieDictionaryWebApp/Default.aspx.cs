using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CookieDictionaryWebApp_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAddToDictionary_Click(object sender, EventArgs e)
    {
        HttpCookie c = Request.Cookies["cd"];
        if (c == null)
        {
            c = new HttpCookie("cd");// Cookie Dictioary name 
            c.Expires = DateTime.MaxValue;
            c.Values[txtSubKey.Text] = txtValue.Text;
            Response.Cookies.Add(c);
        }
        else
        {
            c.Values[txtSubKey.Text] = txtValue.Text;
            Response.Cookies.Add(c);
        }
    }
    protected void btnShowDictionary_Click(object sender, EventArgs e)
    {
        lblValue.Text = "";
        HttpCookie c = Request.Cookies["cd"];
        if (c == null || !c.HasKeys)// HasKeys indicate T/F if  Dictionary which name is cd has keys and values pairs or not  
        {
            return;
        }
        lblValue.Text += "Cookie Dictionary are as follow ::<br/>";
        foreach (string subkey in c.Values)
        {
            lblValue.Text += subkey + " : " + c.Values[subkey] + "<br/>";

        }
    }
    protected void btnDestroy_Click(object sender, EventArgs e)
    {
        HttpCookie c = Request.Cookies["cd"];
            if(c!=null)
            {
              
                c.Expires=DateTime.Now.AddDays(-1);
                Response.Cookies.Add(c);
            }
            return;
    }
}