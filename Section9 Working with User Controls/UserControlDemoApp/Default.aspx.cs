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

    }
    protected void usLogin_Authenticated(object sender, AuthenticatedHandler e)
    {
        Response.Redirect("WelcomeAuthenticatedUsers.aspx");
    }
    protected void LoginUserControl_Authenticated(object sender, AuthenticatedEventArgs e)
    {

        string un = e.AuthenticatedUserName;
        Response.Redirect("WelcomeAuthenticatedUsers.aspx?username="+un);
    }
}