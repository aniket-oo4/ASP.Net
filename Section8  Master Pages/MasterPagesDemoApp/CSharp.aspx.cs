using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CSharp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnInContent_Click(object sender, EventArgs e)
    {
       Label lbl=(Label) Master.FindControl("lblInMaster"); // Cross postback where master ins Parent 
       lbl.Text = "Changed Using C Sharp";
    }
}