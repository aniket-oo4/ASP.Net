<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page1.aspx.cs" Inherits="Secured_Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        This is Page1
        <br />
        <a href="Page2.aspx">Page2.aspx</a>
        <br />
        <a href="../Default.aspx">../Default.aspx</a>
        <br />
    </div>
        <hr />
        <br />
        <asp:Button ID="btnOnlyForR2" runat="server" Text="Only for R2" /> <!--  we specified it programmitically for  users in which role it is visible  -->
    </form>
</body>
</html>
