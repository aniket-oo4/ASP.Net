<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <a href="Secured/Page1.aspx">Secured/Page1.aspx</a>
            <br />
            <br />
            <a href="Secured/Page2.aspx">Secured/Page2.aspx</a><br />
            <br />
            <asp:LoginView ID="LoginView1" runat="server">
                <AnonymousTemplate>
                    Please <asp:LoginStatus ID="LoginStatus1" runat="server" />
                </AnonymousTemplate>
                <LoggedInTemplate>
                    Welcome
                <asp:LoginName ID="LoginName1" runat="server" />
                <asp:LoginStatus ID="LoginStatus1" runat="server" />
                </LoggedInTemplate>
            </asp:LoginView>
            <br />
            <hr />
        </div>
        <br />
        User
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        <asp:Button ID="btnCreateUser" runat="server" OnClick="btnCreateUser_Click" Text="Create User" />
        <br />
        <hr />
        <br />
        Role::<asp:TextBox ID="txtRole" runat="server"></asp:TextBox>
        <asp:Button ID="btnCreateRole" runat="server" OnClick="btnCreateRole_Click" Text="Create Role" />
        <asp:Literal ID="ltrRoleStatus" runat="server"></asp:Literal>
        <br />
        <br />
        <hr />
        <br />
        userName&nbsp; :<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        <br />
        <br />
        Role&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:TextBox ID="txtRoleName" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnBindUserAndRole" runat="server" OnClick="btnBindUserAndRole_Click" Text="Bind user and role " />
&nbsp;
        <hr />
&nbsp;Enter&nbsp; Role to search Role :<asp:TextBox ID="txtSearchRole" runat="server"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnFIndUsersInRole" runat="server" OnClick="btnFIndUsersInRole_Click" Text="Find Users in such Role" />
        <br />
&nbsp;Result ::<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblUsersinRole" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
