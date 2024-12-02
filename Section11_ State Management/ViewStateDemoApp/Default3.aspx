<%@ Page Language="C#"  EnableViewState="true" ViewStateMode="Disabled" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" ViewStateMode="Enabled"></asp:TextBox>  <!-- it inherits previouse properties even after round tripto srver  -->
        <asp:TextBox ID="TextBox2" runat="server" ViewStateMode="Inherit"></asp:TextBox>   <!--  inherits default viewStatemode Mentioned in page directive  it does not keeps the properties if we are going with another option -->
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Button" />
    </div>
    </form>
</body>
</html>
