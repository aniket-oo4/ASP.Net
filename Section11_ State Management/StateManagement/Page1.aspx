<%@ Page Language="C#" Trace="true" AutoEventWireup="true" CodeFile="Page1.aspx.cs" Inherits="Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Text="Send" />
                </td>
            </tr>
        </table>
    
    </div>
        <asp:Label ID="lblName" runat="server" Text="Label:"></asp:Label>
    </form>
</body>
</html>
