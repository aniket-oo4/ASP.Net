<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page2.aspx.cs" Inherits="Page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Qualification:<asp:TextBox ID="txtQualification" runat="server"></asp:TextBox><br />
    Country:<asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
        <asp:Button ID="btnSubmit" Text="submit" runat="server" OnClick="btnSubmit_Click" />
    </div>
    </form>
</body>
</html>
