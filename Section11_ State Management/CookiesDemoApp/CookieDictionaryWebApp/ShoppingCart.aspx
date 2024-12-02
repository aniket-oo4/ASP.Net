<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <img src="ProductImages/Radio.jpg" width="100" height="100" />
        <asp:Button ID="btnRadioAddToCart" runat="server" Text="Add To Cart" OnClick="btnRadioAddToCart_Click" />
        <asp:Button ID="btnRadioRemoveFromCart" runat="server" Text="Remove From Cart" OnClick="btnRadioRemoveFromCart_Click"  />
        <br />
        <img src="ProductImages/Telephone.jpg" width="100" height="100" />
        <asp:Button ID="btnTelephoneAddToCart" runat="server" Text="Add To Cart" OnClick="btnTelephoneAddToCart_Click" />
        <asp:Button ID="btnTelephoneRemoveFromCart" runat="server" Text="Remove From Cart" OnClick="btnTelephoneRemoveFromCart_Click"  />
        <br />
        <img src="ProductImages/TV.jpg" width="100" height="100" />
        <asp:Button ID="btnTvAddToCart" runat="server" Text="Add To Cart" OnClick="btnTvAddToCart_Click" />
        <asp:Button ID="btnTvRemoveFromCart" runat="server" Text="Remove From Cart" OnClick="btnTvRemoveFromCart_Click" />

    </div>
        <br />
        <br />
        <asp:Button ID="btnCheckOut" runat="server" Text="CheckOut" OnClick="btnCheckOut_Click" />
    </form>
</body>
</html>
