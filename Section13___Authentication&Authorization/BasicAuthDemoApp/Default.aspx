<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">    
    <div>
        <a href="Secured/Page1.aspx">Secured/Page1.aspx</a>
    </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        ISAuthenticated :: <%=User.Identity.IsAuthenticated %> <br />

        Username::<%=User.Identity.Name %>
        <br />
        Authentication Type: <%=User.Identity.AuthenticationType.ToString() %>
        <br />
       
    </p>
</body>
</html>
