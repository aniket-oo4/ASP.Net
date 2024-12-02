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
        if (!Page.IsPostBack)
        {
            lblName.Text += GlobalSettings.Data;
        }
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        GlobalSettings.Data = txtName.Text;
      
        Response.Redirect("~/Page2.aspx");
    }
}