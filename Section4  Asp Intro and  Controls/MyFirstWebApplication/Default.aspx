<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     hello
    </div>
        <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
         <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <p>
        <asp:Button ID="btnSayHello" runat="server" Text="Say Hello" OnClick="Button1_Click" />
       
        </p>
       
    </form>
</body>
</html>
