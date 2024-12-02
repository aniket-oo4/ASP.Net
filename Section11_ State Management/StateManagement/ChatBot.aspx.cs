using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Person1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMessage.Text += "<br/>" + GlobalSettings.Message;
    }
    protected void btnSendAMessage_Click(object sender, EventArgs e)
    {
        GlobalSettings.Message = txtMessage.Text;
    }
}