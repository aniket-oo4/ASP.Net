<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    
        <asp:Label ID="lbldatetime" runat="server" Text="Pleae Refresh to Test"></asp:Label>
        <br />
        <asp:Label ID="tblInstanceCnt" runat="server" Text="Instance Count"></asp:Label><%=instanceCount.ToString() %>
    
    </div>
        <asp:Label ID="lblStaticCnt" runat="server" Text="Static count"></asp:Label><%=staticCount.ToString() %>
        <br />
       accesing Nam of other form using globalvariable ::  <%=GlobalSettings.Data %>
    </form>
</body>
</html>
