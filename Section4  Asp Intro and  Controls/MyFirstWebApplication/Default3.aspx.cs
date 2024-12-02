using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        //Response.Write(Calendar1.SelectedDate.ToLongDateString());
       // Response.Write(Calendar1.SelectedDate.ToShortTimeString());
        SelectedDate.Text = Calendar1.SelectedDate.ToLongDateString();
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)  //event
    {
        if (e.Day.IsWeekend)
        {
            e.Day.IsSelectable = false;
            e.Cell.ForeColor = System.Drawing.Color.Red;
        }

    }
}