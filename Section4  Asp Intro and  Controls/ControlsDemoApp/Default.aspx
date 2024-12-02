<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <!--  <asp:Literal ID="Literal1" runat="server" Mode="Encode" Text="a &lt;b"></asp:Literal>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
      
        <p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
          -->
       

        <asp:Panel  ID="Panel1" runat="server" DefaultButton="btnDelete">
            <asp:TextBox ID="txtDemo" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDelete" runat="server" Text="button1" OnClientClick="return confirm('Are You Sure  Button 1')" OnClick="btn_Delete_Click" />
        </asp:Panel>

        <asp:Panel  ID="Panel2" runat="server" DefaultButton="button2">  
     

        <asp:TextBox ID="txtDemo2" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="button2" OnClick="Button2_Click" OnClientClick="return confirm('Button 2')" />
            </asp:Panel>
        <asp:Button ID="btnAdd" runat="server" Text="Add"   OnCommand="btnAdd_Command" CommandName="Add" />
        <asp:Button ID="btnEdit" runat="server" Text="Edit" OnCommand="btnAdd_Command" CommandName="Edit" />
        <asp:Button ID="btnDelete3" runat="server" Text="Delete" OnCommand="btnAdd_Command" CommandName="Delete" />
        
        <br />
        <br />
        
        <asp:ImageButton ID="ImageButton1" runat="server" Height="193px" ImageUrl="~/Images/Screenshot 2024-07-08 122915.png" Width="226px" />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="154px" ImageUrl="~/Images/Screenshot 2024-07-08 122915.png" Width="219px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" ImageHeight="100px" ImageUrl="~/Images/Screenshot 2024-07-08 122915.png" ImageWidth="100px" NavigateUrl="~/Default2.aspx"></asp:HyperLink>
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default2.aspx">HyperLink</asp:HyperLink>
        <br /><asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="return confirm('are you sure LinkButton ')">Submit</asp:LinkButton>
    </form>
</body>
</html>
