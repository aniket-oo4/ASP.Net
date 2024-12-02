<%--<%@ Page UICulture="hi-IN" Culture="hi-IN" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>--%>

<%@ Page UICulture="auto" Culture="auto" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />
            <asp:DropDownList AutoPostBack="true" ID="ddlCulture" runat="server"
                OnSelectedIndexChanged="ddlCulture_SelectedIndexChanged">
                <asp:ListItem Value="en-US" Text="English"></asp:ListItem>
                <asp:ListItem Value="de-AT" Text="German"></asp:ListItem>
                <asp:ListItem Value="fr-Be" Text="French"></asp:ListItem>
                <asp:ListItem Value="hi-IN" Text="Hindi"></asp:ListItem>
            </asp:DropDownList><br />
            <br />
            <br />

            <asp:Label ID="lblCompanyName" runat="server"
                Text="<%$ Resources:Settings, lblCompanyName %>">
            </asp:Label>

            <br />

        </div>
        <asp:Label ID="lblRealName" runat="server"
            ForeColor="<%$ Resources:lblRealNameForeColorKey %>"
            Text="<%$ Resources:lblRealNameTextKey %>"></asp:Label>
        <br />
        <br />
        <asp:Label meta:ResourceKey="lblAddressKey" ID="lblAddress" runat="server" />
        <br />
        <br />
        <asp:Label ID="lblRealName1" runat="server" Font-Bold="false" />

        <br />
        <br />
        <br />
        <asp:Label ID="lblAmount" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <br />

    </form>
</body>
</html>
