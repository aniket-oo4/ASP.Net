<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page2.aspx.cs" Inherits="Secured_Page2" %>

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
        <a href="Page1.aspx">Page1.aspx</a><br />
        <a href="../Default.aspx">../Default.aspx</a>
        <br />
    </div>
        <asp:Button ID="Button1" runat="server" Text="Button" />
&nbsp; when user is r1 then first time it is Get method call on Default.aspx but if&nbsp;&nbsp; he clicks on button then it becomes the postback and by default it is self submitted as a post request&nbsp; then as per our configurations&nbsp;&nbsp;&nbsp; &lt;deny&nbsp; verbs=&quot;Post&quot;&gt; it will become anothorised user then system rdirect to login page
    </form>
</body>
</html>
