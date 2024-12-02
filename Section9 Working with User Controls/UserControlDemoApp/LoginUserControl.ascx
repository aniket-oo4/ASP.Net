<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LoginUserControl.ascx.cs" Inherits="LoginUserControl" %>


<table style="background-color:<%=BackgroundColor%>">
    <tr>
        <td colspan="2">
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Literal ID="ltrUserName" runat="server">User Name</asp:Literal></td>
        <td>
            <asp:TextBox ID="txtUserName" runat="server" Width="188px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td >
            <asp:Literal ID="ltrPassword" runat="server">Password</asp:Literal></td>
        <td >
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        </td>
    </tr>
</table>

