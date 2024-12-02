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
       
      
        grdvEmp.DataBind();
    }
}