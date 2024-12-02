<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register Src="~/LoginUserControl.ascx" TagPrefix="uc1" TagName="LoginUserControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:LoginUserControl runat="server" ID="LoginUserControl" />
    </div>
    </form>
</body>
</html>
