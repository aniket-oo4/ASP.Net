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
        //HttpCookie c = Request.Cookies["k1"];
        //c.Expires = DateTime.Now.AddDays(-1);
        //Response.Cookies.Add(c);
        Page.MetaKeywords = "asp.net,C#";
        Page.MetaDescription = "This is an asp.net site that hosts asp.net tutorials.";
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ltrDemo.Text = txtDemo.Text;
    }
    protected void btnThrowException_Click(object sender, EventArgs e)
    {
        throw new ApplicationException("Error found");
    }


    // handling exceptions at Page Level 
    protected void Page_Error(object sender, EventArgs e)   // handled error expception occured at any location of current page 
    {
        //Exception ex = Context.Error;
        //if (ex is ApplicationException)
        //{
            
        //    Response.Write("Page_Error :: "+ex.Message);
        //    Context.ClearError();// cleared error processing window 
        //   // Response.Redirect("~/");
        //}
    }
}