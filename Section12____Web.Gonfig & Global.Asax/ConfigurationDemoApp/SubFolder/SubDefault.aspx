<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SubDefault.aspx.cs" Inherits="SubFolder_SubDefault" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Sub Directoy file ::<br />
            K1:<%= System.Configuration.ConfigurationManager.AppSettings["k1"] %><br />  <!-- inherited  -->
            K2:<%= System.Configuration.ConfigurationManager.AppSettings["k2"] %><br /> <!-- overwritten -->
            K3:<%= System.Configuration.ConfigurationManager.AppSettings["k3"] %><br />  <!--   Added -->
        </div>
    </form>
</body>
</html>
