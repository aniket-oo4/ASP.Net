<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewMyProfile.aspx.cs" Inherits="Secured_ViewMyProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Button ID="btnGetProfile" runat="server" Text="Profile" OnClick="btnGetProfile_Click" /> <br />
            Real Name:
            <asp:Label ID="lblRealName" runat="server" /> <br />
            Color:
            <asp:Label ID="lblColor" runat="server" /> <br />
            Line1:
            <asp:Label ID="lblLine1" runat="server" /> <br />
            Street:
            <asp:Label ID="lblStreet" runat="server" /> <br />
            City:
            <asp:Label ID="lblCity" runat="server" /> <br />
        
    </div>
    </form>
</body>
</html>
