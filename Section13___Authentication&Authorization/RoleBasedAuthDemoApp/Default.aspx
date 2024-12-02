<%@ Page   Trace="true" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        Welcome 
        <asp:Literal ID="ltrUsername" runat="server"></asp:Literal>
        to Home Page
        <br />
        <a href="Secured/Page1.aspx">Secured/Page1.aspx</a>
        <br />
        <a href="Secured/Page2.aspx">Secured/Page2.aspx</a><br />
           <asp:LinkButton ID="lbtnLogin" runat="server" OnClick="lbtnLogin_Click">Login</asp:LinkButton>
    </div>
    <p>
     
        
        <%--<a href="Login.aspx" runat="server" id="lnkLogin">Login</a></p>--%>
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <asp:Button ID="btnEncrypt" runat="server" OnClick="btnEncrypt_Click" Text="Encrypt" />
    </form>
    </body>
</html>
