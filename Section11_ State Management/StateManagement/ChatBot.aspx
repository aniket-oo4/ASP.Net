<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChatBot.aspx.cs" Inherits="Person1" %>

<!DOCTYPE html>
<meta http-equiv="refresh" content="5" />  
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 100%;
        }
        .auto-style2 {
            height: 350px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <br />
                    <br />
                    <asp:TextBox ID="txtMessage" runat="server" Width="245px"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnSendAMessage" runat="server" OnClick="btnSendAMessage_Click" Text="send" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Messages"></asp:Label>
                    <br />
                   
                    <asp:Label ID="lblMessage" runat="server" Text="Mesage:"></asp:Label>
               
                    <br />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
