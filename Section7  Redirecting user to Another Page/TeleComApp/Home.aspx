<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" Theme="Theme1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <center> <asp:Label ID="lblCompanyName" runat="server" BorderColor="Fuchsia" BorderStyle="Inset" ForeColor="Maroon" Text="DEMO TELECOM SERVICES" ToolTip="established in 1990"></asp:Label><hr />



    </center>
        </div>
        Choose Action<asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick">
            <StaticItemTemplate>
<%# Eval("Text") %>
            </StaticItemTemplate>
        </asp:Menu>
    </form>
</body>
</html>
