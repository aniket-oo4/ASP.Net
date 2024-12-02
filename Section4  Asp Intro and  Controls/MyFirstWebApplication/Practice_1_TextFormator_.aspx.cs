using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Practice_1_TextFormator_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            for (int i = 1; i < 20; i++)
            {
                ListItem li = new ListItem();
                li.Text = i.ToString();
                ddlSize.Items.Add(li);
            }

        }
    }
    protected void btnChangeFormat_Click(object sender, EventArgs e)
    {
        lblDemo.Text = txtDemo.Text;
        lblDemo.Font.Bold = chkBold.Checked;
        lblDemo.Font.Italic = chkItalic.Checked;
        lblDemo.Font.Size = new FontUnit(int.Parse(ddlSize.SelectedValue));
        string col;
        if (rbnRed.Checked)
        {
            col = "Red";
        }
        else if (rbnGreen.Checked)
        {
            col = "Green";
        }
        else if(rbnBlue.Checked)
        {
            col = "Blue";
        }
        else
        {
            col = "black";
        }
        lblDemo.ForeColor = System.Drawing.Color.FromName(col);
    }
}