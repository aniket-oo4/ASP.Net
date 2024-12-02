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
        TextBox1.Text = DemoClass.SayHello();  // using Custom Classs 

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(DemoClass.SayHello());
        Response.Write(VBDemo.SayHello());
        
    }
    protected void Page_PreRender(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

      
    }
}