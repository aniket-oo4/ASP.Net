<%@ Page Language="C#" Trace="true" AutoEventWireup="true" CodeFile="Page2.aspx.cs" Inherits="Page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       Welcome
        <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
        <br />
        Welcom using Scriplets <%=GlobalSettings.Data.ToString() %>
    </div>
        <asp:TextBox ID="txtNameinP2" runat="server"></asp:TextBox>
        <asp:Button ID="btnSendP2" runat="server" BackColor="#CCFFFF" OnClick="btnSendP2_Click" Text="Send" />
    </form>
</body>
</html>
