using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
        SqlCommand cmd = new SqlCommand("Select * from Emp", con);
        con.Open();

        SqlDataReader sqlDR = cmd.ExecuteReader();

        ltrDataReader.Text = "<Table border=1>";
        ltrDataReader.Text += "<tr> <th>EmpId</th> <th>EmpName</th><th>EmpSalary</th> </tr>";
        while (sqlDR.Read())
        {
            ltrDataReader.Text += "<tr>" +
                "<td>" + sqlDR["EmpId"] + "</td>"
                + "<td>" + sqlDR["EmpName"] + "</td>"
                + "<td>" + sqlDR["EmpSalary"] + "</td>"
                + "</tr>";
        }
        ltrDataReader.Text += "</Table>";
        sqlDR.Close();
        con.Close();
    }
}