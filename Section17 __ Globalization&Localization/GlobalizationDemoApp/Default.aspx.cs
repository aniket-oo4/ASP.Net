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
        lblRealName1.Text = GetLocalResourceObject("lblRealNameTextKey").ToString();
        lblRealName1.ForeColor = System.Drawing.Color.FromName(GetLocalResourceObject("lblRealNameForeColorKey").ToString());
        //***************
        decimal amount = 1231.93m;
        lblAmount.Text = amount.ToString("C");
        lblDate.Text = DateTime.Now.ToString();


    }

    protected override void InitializeCulture()
    {
        //base.InitializeCulture();

        //Page.Culture = "hi";
        //Page.UICulture = "hi";

        if (Request.Cookies["culture"]!=null)
        {
            Page.Culture = Request.Cookies["culture"].Value;
            Page.UICulture = Request.Cookies["culture"].Value;
        }
       
    }
    protected void ddlCulture_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Cookies["culture"].Value= ddlCulture.SelectedValue;
      
    }
}