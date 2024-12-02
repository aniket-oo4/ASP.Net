<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/LoginUserControl.ascx" TagPrefix="uc1" TagName="LoginUserControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Welcome to My Website <br />
    </div>
        <uc1:LoginUserControl runat="server" ID="LoginUserControl"  
            UsernameLabel="Username is WebForm" 
            PasswordLabel="Password in WrbForm"            
            BackgroundColor="#ffff66" 
            InvalidUserMessage="Invalid in this WebForm" 
            ReturnUrl="~/WelcomeAuthenticatedUsers.aspx" 
            OnAuthenticated="LoginUserControl_Authenticated"
            />
    </form>
</body>
</html>
