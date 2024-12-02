using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string searchValue = Server.UrlEncode("C# Tutorials");
        //hlnkSearch.NavigateUrl = "https://www.google.com/search?q="+searchValue;
        //string str = "A+B?D&E";  // without encoding 
        string str = Server.UrlEncode("A+B?D&E");  // with encoding 
        hlnkSearch.NavigateUrl = "~/Page2.aspx?search=" + str;
      

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

        // encode the the text first to share as it is 
        string search = Server.UrlEncode(txtSearch.Text);
       // Response.Redirect("~/Page2.aspx?search="+txtSearch.Text);
        Response.Redirect("~/Page2.aspx?search=" + search);


    }
    protected void btnServerTransfer_Click(object sender, EventArgs e)
    {
        Context.Items["myKey"] = txtSearch.Text;
        Server.Transfer("~/Page2.aspx");
    }
}