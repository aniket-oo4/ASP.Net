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
}