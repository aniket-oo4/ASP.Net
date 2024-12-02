<%@ Application Language="C#" %>

<script runat="server">


    void Application_AuthenticateRequest(object sender, EventArgs e)  // it executes everytime for ever request then nomatter there is  un and pwd is provided or not 
    {
        
        
        if (Request.IsAuthenticated)
        {
            string[] roles = new string[0];
            switch (User.Identity.Name)
            {
                case "u1":
                    roles = new string[] { "r1", "r3" };  //   settled roles for users 
                    break;
                case "u2":
                    roles = new string[] { "r2", "r3" };
                    break;
                case "u3":
                    roles = new string[] {"r3" };
                    break;   

            }
            Context.User = new System.Security.Principal.GenericPrincipal(User.Identity, roles);  // created new user with role
           
        }

    }



    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
