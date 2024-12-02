<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Name: <asp:TextBox ID="txtKey" runat="server"></asp:TextBox> <br /> 
Value: <asp:TextBox ID="txtValue" runat="server"></asp:TextBox><br />
<asp:CheckBox ID="chkPersistant" runat="server" Text="Is PersistantCookie" /><br />
<asp:CheckBox ID="chkSecured" runat="server" Text="Is Secured" /><br />
<asp:Button ID="btnSetCookie" runat="server" OnClick="btnSetCookie_Click" Text="Set Cookie" />
<asp:Button ID="btnGetCookie" runat="server" OnClick="btnGetCookie_Click" Text="Get Cookie" />
<asp:Button ID="btnDestroyCookie" runat="server" OnClick="btnDestroyCookie_Click" Text="Destroy Cookie" />
<asp:Button ID="btnGetAllCookies" runat="server" OnClick="btnGetAllCookies_Click" Text="Get All Cookies" /><br />
<asp:Label ID="lblValue" runat="server" /></asp:Label>
    
    </div>
        <asp:Button ID="FormsMethod" runat="server" Text="DemoForForms" OnClick="FormsMethod_Click" PostBackUrl="~/Default2.aspx" />
        <asp:TextBox ID="FormsData" runat="server"></asp:TextBox>
    </form>
</body>
</html>
