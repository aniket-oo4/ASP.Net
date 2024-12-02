using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{


    protected void Page_PreInit(object sender, EventArgs e)
    {
      //  Page.Theme = "Theme1";
      //  Session["theme"] = "Theme1";
        if(Session["theme"]!=null)
             Page.Theme = Session["theme"].ToString();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["theme"] = ddlTheme.SelectedValue;
        Response.Redirect(Request.RawUrl);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["theme"] != null)
            {
                ddlTheme.SelectedValue = Session["theme"].ToString();
            }

        }
    }

}