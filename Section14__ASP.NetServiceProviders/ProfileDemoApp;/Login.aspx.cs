﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        e.Authenticated = true;
        if (Login1.UserName == Login1.Password)
        {
            e.Authenticated = true;
        }
        else
        {
            e.Authenticated = false;
        }
    }
}