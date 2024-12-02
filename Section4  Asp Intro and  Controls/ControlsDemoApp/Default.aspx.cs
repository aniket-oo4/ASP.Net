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
      //  Label2.Text = "a<b";
      //  Label2.Text = Server.HtmlEncode("a<b");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void btn_Delete_Click(object sender, EventArgs e)
    {
        Response.Write("Its Button 1 ");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("Its Button 2 ");
    }
    protected void btnAdd_Command(object sender, CommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case  "Add":
              Response.Write("Add");
                break;
            case  "Edit":
                Response.Write("Edit ");
                break;
            case  "Delete":
                Response.Write("Delete ");
                break;

        }
    }

}