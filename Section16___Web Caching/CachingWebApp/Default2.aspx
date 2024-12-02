<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register Src="~/DemoUserControl.ascx" TagPrefix="uc1" TagName="DemoUserControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <a href="Default.aspx">Default.aspx</a>
        <uc1:DemoUserControl runat="server" ID="DemoUserControl" />
    </div>
    </form>
</body>
</html>
