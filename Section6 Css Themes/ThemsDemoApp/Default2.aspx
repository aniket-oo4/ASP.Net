<%@ Page Language="C#" AutoEventWireup="true"  
    CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <!-- <a href="App_Themes/Theme1/Button.skin">App_Themes/Theme1/Button.skin</a> -->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="ddlTheme" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Theme1</asp:ListItem>
            <asp:ListItem>Theme2</asp:ListItem>
            <asp:ListItem>Theme3</asp:ListItem>
        </asp:DropDownList>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="This is Lable"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Text="This is Lable" EnableTheming="False" CssClass="demo"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="This is Lable"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="This is Lable" SkinID="RedLabel"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="This is Lable" EnableTheming="False"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" Text="This is Lable"></asp:Label>
        </p>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
</body>
</html>
