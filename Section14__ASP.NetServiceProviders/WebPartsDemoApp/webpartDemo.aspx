<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webpartDemo.aspx.cs" Inherits="webpartDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-bottom: 556px;
        }

        .auto-style2 {
            width: 202px;
            height: 612px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:WebPartManager ID="wpManager" runat="server">
            </asp:WebPartManager>
            Select Mode:<asp:DropDownList ID="ddlModes" runat="server" AutoPostBack="True" 
                OnSelectedIndexChanged="ddlModes_SelectedIndexChanged" />
            Current Scope:
            <asp:Label ID="lblCurrentScope" runat="server"></asp:Label>
            <asp:Button ID="btnToggleScope" runat="server" Text="Toggle Scope" OnClick="btnToggleScope_Click" />
            <asp:Button ID="btnResetLayout" runat="server" Text="Reset Layout" OnClick="btnResetLayout_Click" />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="background-color: #CCCCFF; vertical-align: top;">
                    <asp:WebPartZone ID="WebPartZone1" runat="server" BorderColor="#CCCCCC"
                        Font-Names="Verdana" Padding="6" Width="100%">
                        <ZoneTemplate>
                            <asp:Login Title="Login" ID="Login1" runat="server">
                            </asp:Login>
                        </ZoneTemplate>
                        <MenuLabelHoverStyle ForeColor="#FFCC66"></MenuLabelHoverStyle>
                        <MenuLabelStyle ForeColor="White"></MenuLabelStyle>
                        <MenuPopupStyle BackColor="#990000" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.6em"></MenuPopupStyle>
                        <MenuVerbHoverStyle BackColor="#FFFBD6" BorderColor="#CCCCCC" BorderWidth="1px" BorderStyle="Solid" ForeColor="#333333"></MenuVerbHoverStyle>
                        <MenuVerbStyle BorderColor="#990000" BorderWidth="1px" BorderStyle="Solid" ForeColor="White"></MenuVerbStyle>
                        <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White"></TitleBarVerbStyle>
                        <EmptyZoneTextStyle Font-Size="0.8em"></EmptyZoneTextStyle>
                        <HeaderStyle HorizontalAlign="Center" Font-Size="0.7em" ForeColor="#CCCCCC"></HeaderStyle>
                        <PartChromeStyle BackColor="#FFFBD6" BorderColor="#FFCC66" Font-Names="Verdana" ForeColor="#333333"></PartChromeStyle>
                        <PartStyle Font-Size="0.8em" ForeColor="#333333"></PartStyle>
                        <PartTitleStyle BackColor="#990000" Font-Bold="True" Font-Size="0.8em" ForeColor="White"></PartTitleStyle>
                    </asp:WebPartZone>
                </td>
                <td style="vertical-align: top"></td>
                <td class="auto-style2" style="background-color: #CCCCFF; vertical-align: top;">
                    <asp:WebPartZone ID="WebPartZone2" runat="server" BorderColor="#CCCCCC"
                        Font-Names="Verdana" Padding="6" Width="100%">
                        <ZoneTemplate>
                            <asp:Button Title="Mybutton" ID="Button1" runat="server" Text="Button" />
                            <asp:Panel Title="Select Option" ID="Panel1" runat="server">
                                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="g1"
                                    Text="Option1" />
                                <br />
                                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g1"
                                    Text="Option2" />
                                <br />
                                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="g1"
                                    Text="Option3" />
                            </asp:Panel>
                            <asp:ListBox Title="MyListbox" ID="ListBox1" runat="server"></asp:ListBox>
                        </ZoneTemplate>
                        <MenuLabelHoverStyle ForeColor="#FFCC66"></MenuLabelHoverStyle>
                        <MenuLabelStyle ForeColor="White"></MenuLabelStyle>
                        <MenuPopupStyle BackColor="#990000" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.6em"></MenuPopupStyle>
                        <MenuVerbHoverStyle BackColor="#FFFBD6" BorderColor="#CCCCCC" BorderWidth="1px" BorderStyle="Solid" ForeColor="#333333"></MenuVerbHoverStyle>
                        <MenuVerbStyle BorderColor="#990000" BorderWidth="1px" BorderStyle="Solid" ForeColor="White"></MenuVerbStyle>
                        <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White"></TitleBarVerbStyle>
                        <EmptyZoneTextStyle Font-Size="0.8em"></EmptyZoneTextStyle>
                        <HeaderStyle HorizontalAlign="Center" Font-Size="0.7em" ForeColor="#CCCCCC"></HeaderStyle>
                        <PartChromeStyle BackColor="#FFFBD6" BorderColor="#FFCC66" Font-Names="Verdana" ForeColor="#333333"></PartChromeStyle>
                        <PartStyle Font-Size="0.8em" ForeColor="#333333"></PartStyle>
                        <PartTitleStyle BackColor="#990000" Font-Bold="True" Font-Size="0.8em" ForeColor="White"></PartTitleStyle>
                    </asp:WebPartZone>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
