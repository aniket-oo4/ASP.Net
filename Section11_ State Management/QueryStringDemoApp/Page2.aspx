﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page2.aspx.cs" Inherits="Page2" CodeBehind="~/App_Code/Helper.cs" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Following is the serach value ::<%=Request.QueryString["Search"] %>
        <br />
        by using Helper method Context=<%=Helper.GetKeyValue("Search") %>

    </div>
    </form>
</body>
</html>
