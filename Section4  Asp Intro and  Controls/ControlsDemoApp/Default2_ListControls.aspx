<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2_ListControls.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <hr />
        <asp:DropDownList ID="lst" runat="server" AutoPostBack="true" OnSelectedIndexChanged="lst_SelectedIndexChanged">
            <asp:ListItem value="Item1">Item1</asp:ListItem>
            <asp:ListItem value="Item2">Item2</asp:ListItem>
            <asp:ListItem value="Item3">Item3</asp:ListItem>
            <asp:ListItem value="Item4">Item4</asp:ListItem>
            <asp:ListItem value="Item5">Item5</asp:ListItem>
        </asp:DropDownList>
        <hr />
    <asp:ListBox Rows="6" ID="lbDemo" runat="server" AutoPostBack="true" OnSelectedIndexChanged="lst_SelectedIndexChanged" SelectionMode="Multiple">
            <asp:ListItem value="Item1">Item1</asp:ListItem>
            <asp:ListItem value="Item2">Item2</asp:ListItem>
            <asp:ListItem value="Item3">Item3</asp:ListItem>
            <asp:ListItem value="Item4">Item4</asp:ListItem>
            <asp:ListItem value="Item5">Item5</asp:ListItem>
        </asp:ListBox>
        <hr />

            <asp:CheckBoxList Rows="6" ID="chkblDemo" runat="server" AutoPostBack="true" RepeatLayout="Flow"  RepeatDirection="Horizontal" RepeatColumns="3" OnSelectedIndexChanged="lst_SelectedIndexChanged" SelectionMode="Multiple">
            <asp:ListItem value="Item1">Item1</asp:ListItem>
            <asp:ListItem value="Item2">Item2</asp:ListItem>
            <asp:ListItem value="Item3">Item3</asp:ListItem>
            <asp:ListItem value="Item4">Item4</asp:ListItem>
            <asp:ListItem value="Item5">Item5</asp:ListItem>
        </asp:CheckBoxList>

        <hr />
  <asp:RadioButtonList Rows="6" ID="rbtnlDemo" runat="server" AutoPostBack="false" RepeatLayout="OrderedList"   RepeatDirection="vertical" RepeatColumns="1" OnSelectedIndexChanged="lst_SelectedIndexChanged" SelectionMode="Multiple">
            <asp:ListItem value="Item1">Item1</asp:ListItem>
            <asp:ListItem value="Item2">Item2</asp:ListItem>
            <asp:ListItem value="Item3">Item3</asp:ListItem>
            <asp:ListItem value="Item4">Item4</asp:ListItem>
            <asp:ListItem value="Item5">Item5</asp:ListItem>
        </asp:RadioButtonList>

    
    </div>
    </form>
</body>
</html>
