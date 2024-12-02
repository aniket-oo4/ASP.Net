using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Init(object sender, EventArgs e)
    {
        TextBox1.Text = "Init";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)  // PostBack event is only happens after the first time of page rendering 
        {  // PostBacl means Sending Page Back to server then server will again do the process  and calls related event handlers
            TextBox1.Text = "Load ";  
        }
   
    }

    protected override void OnLoad(EventArgs e)
    {
        //base.OnLoad(e);
        Response.Write("OnLoad");
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
       // TextBox1.Text = "PreRender ";
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
       // TextBox1.Text = "button clik=cked  ";

        TextBox1.ForeColor = System.Drawing.Color.Red;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        Response.Write("Text Has Changed :");
    }
}