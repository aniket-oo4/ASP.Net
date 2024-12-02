<%@ Page Trace="false" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        .aspNetDisabled {
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            K1:<%= System.Configuration.ConfigurationManager.AppSettings["k1"] %><br />
            K2:<%= System.Configuration.ConfigurationManager.AppSettings["k2"] %>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Enabled="False" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnThrowException" runat="server" OnClick="btnThrowException_Click" Style="margin-bottom: 0px" Text="Button throw Exception" />
            <br />
            <br />
            <br />

            <br />
            <%--<a href="Computer.aspx?Id=1">Monitor</a>--%>
            <a href="Monitor.aspx">Monitor</a>
            <!--  Is PAsses as a  Computer.aspx?Id=1 -->
            <br />
            <%--<a href="Computer.aspx?Id=2">Mouse</a>--%>
            <a href="Mouse.aspx">Mouse</a>
            <!--  Is PAsses as a  Computer.aspx?Id=2-->
            <br />
            <%--<a href="Computer.aspx?Id=3">Keyboard</a>--%>
            <a href="Keyboard.aspx">Keyboard</a>
            <!--  Is PAsses as a  Computer.aspx?Id=3 because of Url MApping -->
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        <asp:TextBox ID="txtDemo" runat="server"></asp:TextBox>
        &nbsp;
        <asp:Button ID="btnSubmit" runat="server" Text="submit" OnClick="btnSubmit_Click" />
        <br />
        <br />
        <asp:Literal ID="ltrDemo" runat="server" Mode="Encode"></asp:Literal>
    </form>
</body>
</html>
