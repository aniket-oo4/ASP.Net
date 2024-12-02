using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class EmployeeWithDeparmentDetails : System.Web.UI.Page
{

    public string GetDepartmentName(object Deptid)// this method is called inside the templatField of DeptId  for  LAle  
    { // for every row this method is called hence it is not suggested to use  it kills performance because there are multiple webbrowser- to- server trips happens in thihs case 7 times  
        //SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
        //SqlCommand cmd = new SqlCommand("Select DeptName from Department Where DeptId=" + Convert.ToInt32(Deptid), con);
        //con.Open();
        //string deptName = cmd.ExecuteScalar().ToString();
        //con.Close();
        //return deptName;
        //*********** Solution for  multiple  trips As Follows 

        dvDept.RowFilter = "DeptId=" + Deptid;
        DataRowView drv = dvDept[0];
        return drv["DeptName"].ToString();

    }

    DataView dvDept;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);

        // to avoid multiple trips to server  do following it  only gets all the data at once for all rows 
        //DataSet ds = new DataSet();
        //SqlDataAdapter da = new SqlDataAdapter("Select DeptId,DeptName from Department ",con);
        //da.Fill(ds, "Department");
        //dvDept = ds.Tables["Department"].DefaultView;

        // we can also do this using the sqlDataSource   for  department   to avoid writing the code  
        DataSourceSelectArguments args=new DataSourceSelectArguments();
        dvDept=(DataView) sqlDSDepartment.Select(args);  // this  select metho returns the  data type of IEnumerable (Cast it into DataView Cause DataView is Child of IEnumerable )


    }





}