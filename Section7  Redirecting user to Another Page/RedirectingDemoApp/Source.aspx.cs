using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Source : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnRedirect_Click(object sender, EventArgs e)
    {
        string value = txtDemo.Text;
        Response.Redirect("Target.aspx?demo="+value);// passing data through Queristring 
    }
    protected void btnTransfer_Click(object sender, EventArgs e)
    {
        Context.Items["demo"] = txtDemo.Text; // Context is dictionary for both source and target 
        Server.Transfer("Target.aspx");
    }
    // CReating Public Properties
    public string DemoText
    {
        get
        {
            return txtDemo.Text;
        }


    }

    protected void btnCrossPagePostBack_Click(object sender, EventArgs e)
    {
        btnCrossPagePostBack.PostBackUrl = "Target.aspx";
    }
}