using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblName.Text = GlobalSettings.Data;
      
    }
    protected void btnSendP2_Click(object sender, EventArgs e)
    {
        GlobalSettings.Data += txtNameinP2.Text;
        Response.Redirect("~/Page1.aspx");
    }
}