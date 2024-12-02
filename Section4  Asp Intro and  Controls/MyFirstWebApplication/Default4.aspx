<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
  
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table>
            <tr>
                <td>
                    <asp:ListBox ID="lstLeft" runat="server">
                        <asp:ListItem Value ="One">One</asp:ListItem>
                        <asp:ListItem Value="Two">Two</asp:ListItem>
                        <asp:ListItem Value="Three">Three</asp:ListItem>
                        <asp:ListItem Value="Four">Four</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td >
                    <table >
                        <tr>
                            <td>
                                <asp:Button ID="btnMoveToRight" runat="server" Text="&gt;&gt;&gt;" OnClick="btnMoveToRight_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnMoveToLeft" runat="server" Text="&lt;&lt;&lt;" OnClick="btnMoveToLeft_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <asp:ListBox ID="lstRight" runat="server" ></asp:ListBox>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
