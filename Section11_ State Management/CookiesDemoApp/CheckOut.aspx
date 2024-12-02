<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="CheckOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Tv:<asp:Label ID="lblTV" runat="server" Text=""></asp:Label>   &nbsp:: 
            <asp:Label ID="lblTvExpire" runat="server" ForeColor="Red"></asp:Label>  
            <br />
            Radio:<asp:Label ID="lblRadio" runat="server" Text=""></asp:Label>&nbsp:: 
            <asp:Label ID="lblRadioExpire" runat="server" ForeColor="Red"></asp:Label>
            <br />
            Telephone:<asp:Label ID="lblTelephone" runat="server" Text=""></asp:Label>&nbsp:: 
            <asp:Label ID="lblTeleExpire" runat="server" ForeColor="Red"></asp:Label>
            <br />

        </div>
    </form>
</body>
</html>
