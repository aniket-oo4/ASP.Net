<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WelcomeAuthenticatedUsers.aspx.cs" Inherits="WelcomeAuthenticatedUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     WElcome ALL <%=Request.QueryString["username"] %>
    </div>
    </form>
</body>
</html>
