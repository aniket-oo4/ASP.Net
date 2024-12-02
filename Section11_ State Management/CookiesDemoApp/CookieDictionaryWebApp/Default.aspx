<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="CookieDictionaryWebApp_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Cookie Dictionary Name:
            <asp:TextBox ID="txtDictionaryName" runat="server" /><br />
            Sub Key:
            <asp:TextBox ID="txtSubKey" runat="server" /><br />
            Value:
            <asp:TextBox ID="txtValue" runat="server" /><br />
            <asp:Button ID="btnAddToDictionary" runat="server" OnClick="btnAddToDictionary_Click" Text="Add To 
Dictionary" />
            <asp:Button ID="btnShowDictionary" runat="server" OnClick="btnShowDictionary_Click" Text="Show Dictionary" />
            <asp:Button ID="btnDestroy" runat="server" OnClick="btnDestroy_Click" Text="DestroyAll" />
            <br />
            <br />
            <asp:Label ID="lblValue" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
