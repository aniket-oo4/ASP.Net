<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page1.aspx.cs" Inherits="Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HyperLink ID="hlnkSearch"  NavigateUrl="~/Page2.aspx?search=demo" runat="server">Search</asp:HyperLink>
        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        <br />
        <br />
        
        <%=Server.HtmlEncode("a<b") %>
        <br />
        
        <asp:Button ID="btnServerTransfer" runat="server" Text="Server.Transfer" OnClick="btnServerTransfer_Click" />
    </div>
    </form>
</body>
</html>
