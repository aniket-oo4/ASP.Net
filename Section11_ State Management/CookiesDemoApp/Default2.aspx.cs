using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       //string demo=Request.Form["txtKey"];
      //  string demo = Request.QueryString["txtKey"];
        string demo = Request.Form["txtKey"];
       // string demo = ((TextBox)PreviousPage.FindControl("txtKey")).Text;
       if (string.IsNullOrEmpty(demo))
       {
           TextBox1.Text = "NOt value transferred ";

       }
       else
       {
           TextBox1.Text = demo;
       }
        
    }
}