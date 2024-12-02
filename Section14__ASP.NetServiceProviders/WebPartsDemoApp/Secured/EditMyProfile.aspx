<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditMyProfile.aspx.cs" Inherits="Secured_EditMyProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            RealName :
            <asp:TextBox ID="txtRealName" runat="server" /><br />
            Color :
            <asp:TextBox ID="txtColor" runat="server" /><br />
            Line1 :
            <asp:TextBox ID="txtLine1" runat="server" /><br />
            Street :
            <asp:TextBox ID="txtStreet" runat="server" /><br />
            City:
            <asp:TextBox ID="txtCity" runat="server" /><br />
            <asp:Button ID="btnSetProfile" runat="server" Text="Set Profile" OnClick="btnSetProfile_Click" /><br />
        </div>
    </form>
</body>
</html>
