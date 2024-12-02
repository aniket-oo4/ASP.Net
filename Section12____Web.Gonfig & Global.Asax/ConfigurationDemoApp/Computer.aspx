<%@ Page Trace="true" Language="C#" AutoEventWireup="true" CodeFile="Computer.aspx.cs" Inherits="Computer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <% Request.QueryString["ID"] = "10"; %>
    ID:=<%=Request.QueryString["ID"] %>
    </div>
    </form>
</body>
</html>
