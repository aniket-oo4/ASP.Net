using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void rbncolor_CheckedChanged(object sender, EventArgs e)
    {
        // sender is a control in which the event is raised 
        RadioButton rbn = (RadioButton)sender;
        lblDemo.ForeColor = System.Drawing.Color.FromName(rbn.Text);   
        /*
    if(rbnRed.Checked)
        lblDemo.ForeColor = System.Drawing.Color.Red;
    else if (rbnGreen.Checked)
        lblDemo.ForeColor = System.Drawing.Color.Green;
    else
        lblDemo.ForeColor = System.Drawing.Color.Blue;
         */
    }
  
}