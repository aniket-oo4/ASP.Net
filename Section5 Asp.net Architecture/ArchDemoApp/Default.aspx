<%@ Page Language="C#" AutoEventWireup="True" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </div>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />

        <a href="Default2.aspx">Default2.aspx</a>

    </form>
</body>
</html>
