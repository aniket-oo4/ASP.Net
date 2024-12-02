using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GridViewWithoutSqlDataSource : System.Web.UI.Page
{

    DataView dvEmp;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.BindDataToGrid();
        }

    }

    void BindDataToGrid()  // below code is cpoied from above page_Load method 
    {
        SqlConnection con = new SqlConnection();

        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
        SqlCommand cmd = new SqlCommand("Select * from Emp", con);

        con.Open();
        SqlDataAdapter daEmp = new SqlDataAdapter(cmd);//("Select * from Emp", con);
        DataSet ds = new DataSet();
        daEmp.Fill(ds, "Emp");
        grdvEmp.DataSource = dvEmp = ds.Tables[0].DefaultView;

        grdvEmp.DataBind();
    }

    protected void grdvEmp_Sorting(object sender, GridViewSortEventArgs e)
    {
        if (e.SortDirection == SortDirection.Ascending)
        {
            dvEmp.Sort = e.SortExpression;
        }
        else
        {
            dvEmp.Sort = e.SortDirection + "DESC";
        }


        //grdvEmp.DataBind();
        BindDataToGrid();
    }
    protected void grdvEmp_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdvEmp.EditIndex = e.NewEditIndex;
        //  grdvEmp.DataBind();
        BindDataToGrid();
    }
    protected void grdvEmp_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdvEmp.EditIndex = -1;
        //grdvEmp.DataBind();
        BindDataToGrid();
    }
    protected void grdvEmp_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtName, txtSalary;
        CheckBox chkIsActive;
        txtName = (TextBox)grdvEmp.Rows[e.RowIndex].Cells[1].Controls[0];
        txtSalary = (TextBox)grdvEmp.Rows[e.RowIndex].Cells[2].Controls[0];
        chkIsActive = (CheckBox)grdvEmp.Rows[e.RowIndex].Cells[3].Controls[0];
        int id = Convert.ToInt32(grdvEmp.DataKeys[e.RowIndex].Value);

        //update table logic here 

        BindDataToGrid();
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
    protected void grdvEmp_CreatingModelDataSource(object sender, CreatingModelDataSourceEventArgs e)
    {

    }
}