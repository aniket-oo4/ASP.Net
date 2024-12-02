<%@ Page   UnobtrusiveValidationMode="None" Language ="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:Label runat="server" ID="lblError" ForeColor="Red" /></div>
            Login:
            <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqfvLogin" runat="server" ControlToValidate="txtLogin" ErrorMessage="Field must be filled " ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Password:
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password must be filled" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <asp:CheckBox ID="chkRememberMe" runat="server" Text="Remember Me" OnCheckedChanged="chkRememberMe_CheckedChanged" /><br />
        </div>
    </form>
</body>
</html>
