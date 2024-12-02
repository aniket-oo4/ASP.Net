using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DataGridDemo : System.Web.UI.Page
{

    public string GetYesOrNo(object isActive)
    {
        if (isActive == DBNull.Value) // DBNull is a Type for Null values that comes from DataBase 
        {
            return "Unknown";
        }
        else if (Convert.ToBoolean(isActive) == true)
        {
            return "YES";
        }
        else
            return "NO";
    }
    public bool IsEmpActive(object isActive)
    {
        if (isActive == DBNull.Value) // DBNull is a Type for Null values that comes from DataBase 
        {
            return false;
        }
        else  
        {
            return Convert.ToBoolean(isActive);  // it will return and True | False 
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridviewEmp_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Response.Write(grdvEmp.SelectedValue+"-");
        //Response.Write(grdvEmp.SelectedDataKey.Values["EmpName"]);
        //int index = grdvEmp.SelectedIndex;
        //GridViewRow gvr = grdvEmp.Rows[index];// grdvEmp.SelectedRow;
        int index = GridView1.SelectedIndex;
        GridViewRow gvr = GridView1.Rows[index];// grdvEmp.SelectedRow;
        Response.Write(gvr.Cells[1].Text);
        //CheckBox chkbox = (CheckBox)gvr.Cells[3].Controls[0];
        Label lbl = (Label)gvr.FindControl("lblIsActive");
        Response.Write(lbl.Text);
    }
    protected void grdvEmp_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int ind = Convert.ToInt32(e.CommandArgument);
        int empid = Convert.ToInt32(grdvEmp.DataKeys[ind].Value);

        if (e.CommandName == "email")
        {
            Response.Write("Email sent to employee with id=" + empid);
        }
        else if (e.CommandName == "sms")
        {
            Response.Write("SMS sent to employee with id=" + empid);
        }
    }


    protected void dtvEmp_ModeChanged(object sender, EventArgs e)
    {
        if (dtvEmp.CurrentMode == DetailsViewMode.ReadOnly)
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
        if (e.Exception != null)  // this is to handle Theme exceptions in udpating 
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

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        // this methods solve the problem of updating the checkbox 
         CheckBox chk= (CheckBox) GridView1.Rows[e.RowIndex].FindControl("chkIsActive");
        e.NewValues["IsActive"]= chk.Checked;

        e.NewValues["UpdatedDate"] = DateTime.Now;
    }
    protected void dtvEmp_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        e.Values["CreatedDate"] = DateTime.Now;

    }
    protected void dtvEmp_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        CheckBox chk = (CheckBox)dtvEmp.FindControl("chkIsActive");
        e.NewValues["IsActive"] = chk.Checked;
        e.NewValues["UpdatedDate"] = DateTime.Now;

    }

    decimal totalSalary=0;
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)  // this is a event happens when rows are renders one by one 
    {
        if (e.Row.RowType==DataControlRowType.DataRow) // e.Row =GridviewRow 
        {
            DataRowView drv = (DataRowView)e.Row.DataItem;
            decimal currentEmpSalary = Convert.ToDecimal(drv["EmpSalary"]);
            totalSalary += currentEmpSalary;
        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            Label lblTotalSal = (Label)e.Row.FindControl("lblTotalSalary");
            lblTotalSal.Text = totalSalary.ToString();
        }
    }
}