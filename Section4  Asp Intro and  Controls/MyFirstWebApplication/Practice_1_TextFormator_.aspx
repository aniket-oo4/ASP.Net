<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Practice_1_TextFormator_.aspx.cs" Inherits="Practice_1_TextFormator_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblDemo" runat="server" Text="Label"></asp:Label>
    
    </div>
    &nbsp;&nbsp; Enter Text :
        <asp:TextBox ID="txtDemo" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="chkBold" runat="server" Text="Bold" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="chkItalic" runat="server" Text="Italics" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Size"></asp:Label>
        <asp:DropDownList ID="ddlSize" runat="server">
        </asp:DropDownList>
&nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rbnRed" runat="server" ForeColor="Red" GroupName="color" Text="Red" />
&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rbnGreen" runat="server" ForeColor="Green" GroupName="color" Text="Green" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rbnBlue" runat="server" ForeColor="Blue" GroupName="color" Text="Blue" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnChangeFormat" runat="server" OnClick="btnChangeFormat_Click" Text="Format" />
    </form>
</body>
</html>
