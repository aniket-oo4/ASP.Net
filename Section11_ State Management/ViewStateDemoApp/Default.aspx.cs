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

    }
 //   static string action;

    protected void btnNew_Click(object sender, EventArgs e)
    {
        btnSave.Visible = true;
        btnEdit.Visible = btnNew.Visible = false;
       // action = "New";
        ViewState["action"] = "New";

    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        btnSave.Visible = true;
        btnEdit.Visible = btnNew.Visible = false;
       //  action = "Edit";
        ViewState["action"] = "Edit";
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (ViewState["action"].ToString() == "New")
        {
            Response.Write("New Was Clicked");
        }
        else
        {
            Response.Write("Editwas clicked ");
        }

    }
}