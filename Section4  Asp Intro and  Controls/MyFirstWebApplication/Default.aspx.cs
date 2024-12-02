using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      //  TextBox1.Text = "Load";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ltrMessage.Text = "Hello :: " + txtName.Text;

    }
}