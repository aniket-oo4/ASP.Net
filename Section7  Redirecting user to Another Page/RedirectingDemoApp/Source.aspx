<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Source.aspx.cs" Inherits="Source" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txtDemo" runat="server"></asp:TextBox>
    
    </div>
       
        <a href="Target.aspx">Target.aspx</a><br />
&nbsp;<asp:Button ID="btnRedirect" runat="server" Text="Response.Redirect" OnClick="btnRedirect_Click" />
        <br />
        <br />
        <asp:Button ID="btnTransfer" runat="server" Text="Server.Transfer" OnClick="btnTransfer_Click" />
        <br />
        <br />
        <asp:Button ID="btnCrossPagePostBack" runat="server" Text="CrossPagePostBack" OnClick="btnCrossPagePostBack_Click" />
    </form>
</body>
</html>
