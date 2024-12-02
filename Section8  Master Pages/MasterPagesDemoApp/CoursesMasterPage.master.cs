using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CoursesMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblInMaster.Text = "Form PAge Load /of Master ";    
    }
    public string MasterLableText
    {

        get
        {
            return lblInMaster.Text;
        }
        set
        {
            lblInMaster.Text = value;
        }
    }
    protected void tnDemo_Click(object sender, EventArgs e)
    {
        lblInMaster.Text = "ButtonClick Event  in master page  ";
    }
}
