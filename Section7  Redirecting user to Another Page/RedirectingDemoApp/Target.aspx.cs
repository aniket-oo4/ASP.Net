using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Target : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (PreviousPage==null)
        {
            string value = Request.QueryString["demo"];//
            Response.Write("HyperLink/Redirect --"+value);

        }
        else if (PreviousPage != null)
        {
            if (PreviousPage.IsCrossPagePostBack)
            {
                //string value = Request.Form["txtDemo"];
                //TextBox txtDemo =(TextBox)PreviousPage.FindControl("txtDemo");
                //string value = txtDemo.Text;
                string value = ((Source)PreviousPage).DemoText;
                Response.Write("Cross Page  PostBack--"+value);
            }
            else
            {
              //  string value=Context.Items["demo"].ToString();
              //  TextBox txtDemo = (TextBox)PreviousPage.FindControl("txtDemo");
              //  string value = txtDemo.Text;
               // string value = ((Source)PreviousPage).DemoText;
                // after Adding virtual PAth 
                string value = PreviousPage.DemoText;

                Response.Write("Transfder is Used --"+value);
            }
            
        }
        else if(PreviousPage==null){
            Response.Write("PostBack Is not done ");
        }
    }
}