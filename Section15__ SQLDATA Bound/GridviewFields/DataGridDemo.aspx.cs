using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DataGridDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridviewEmp_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Response.Write(grdvEmp.SelectedValue+"-");
        //Response.Write(grdvEmp.SelectedDataKey.Values["EmpName"]);
        int index = grdvEmp.SelectedIndex;
        GridViewRow gvr = grdvEmp.Rows[index];// grdvEmp.SelectedRow;

        Response.Write(gvr.Cells[1].Text);
        CheckBox chkbox =(CheckBox) gvr.Cells[3].Controls[0];
        Response.Write(chkbox.Checked);
    }
    protected void grdvEmp_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int ind = Convert.ToInt32(e.CommandArgument);
        int empid = Convert.ToInt32(grdvEmp.DataKeys[ind].Value);

        if (e.CommandName == "email")
        {           
            Response.Write("Email sent to employee with id="+empid);
        }
        else if (e.CommandName == "sms")
        {          
            Response.Write("SMS sent to employee with id=" + empid);
        }
    }


    protected void dtvEmp_ModeChanged(object sender, EventArgs e)
    {
        if (dtvEmp.CurrentMode==DetailsViewMode.ReadOnly)
        {
            GridView1.Enabled = true;
        }
        else
        {
            GridView1.Enabled = false;
        }
    }
    protected void dtvEmp_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        if (e.Exception!=null)  // this is to handle Theme exceptions in udpating 
        {
            string msg = e.Exception.Message;
            Response.Write(msg);
            e.ExceptionHandled = true;
            e.KeepInEditMode = true;
        }
        else
        {
            grdvEmp.DataBind();
            GridView1.DataBind();
        }
      
    }
    protected void dtvEmp_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            string msg = e.Exception.Message;
            Response.Write(msg);
            e.ExceptionHandled = true;
            e.KeepInInsertMode = true;
        }
        else
        {
            grdvEmp.DataBind();
            GridView1.DataBind();
        }
    }
}