<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page1.aspx.cs" Inherits="Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Please Enter your name
        <asp:TextBox ID="txtName" runat="server" Height="29px"></asp:TextBox>
        <br />
        <br />
        Please enter your Age:
        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnNext" runat="server" Text="Next" OnClick="btnNext_Click" />
        </div>
    </form>
</body>
</html>
