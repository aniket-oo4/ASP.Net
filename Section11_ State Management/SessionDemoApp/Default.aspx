<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"  EnableSessionState="True"%>
<%--<%@ Page Language="C#"  EnableSessionState="ReadOnly" AutoEventWireup ="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    
       Session Counter: <asp:Label ID="lblCounter" runat="server" Text=""></asp:Label>

        <br />
        <br />
        Application Counter:<asp:Label ID="lblAppCounter" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblLoginStatus" runat="server" Text=""></asp:Label>
        <br />
        <br />
       
        <asp:LinkButton ID="lnkLogin" runat="server" OnClick="lnkLogin_Click" Text="Login">  </asp:LinkButton>
        </div>
    </form>
</body>
</html>
