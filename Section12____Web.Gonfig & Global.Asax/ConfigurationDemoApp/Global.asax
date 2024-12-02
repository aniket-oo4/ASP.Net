<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
    void Application_BeginRequest(object sender, EventArgs e)  // Copied and Created
    {
     string path=   Request.Path;
     if (path.StartsWith("/product"))  // try with /product/demo.aspx
     {                                      // 0    1         2
         string[] split = path.Split('/'); //{ /,"product","demo.aspx"}
         Response.Write(split[1]);   //"product"       // 0      1
         string file = split[2].Split('.')[0];//    // {"demo","aspx"}  it give demo
         Context.RewritePath("~/Computer.aspx", "", "Id=" + file);
     }

    }
        
    void Application_Error(object sender, EventArgs e)    // Copied and created
    { 
        // Code that runs when an unhandled error occurs
        Exception ex = Context.Error.InnerException;// handling exception at Global level 
        if (ex is ApplicationException)
        {

            Response.Write("<h1> Global.asax</h1>  Page_Error :: " + ex.Message);
            Context.ClearError();// cleared error processing window 
            // Response.Redirect("~/");
        }
        

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
