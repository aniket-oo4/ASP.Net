<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" Theme="LoginThem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <title></title>
    <style type="text/css">
        #Password1 {
            width: 274px;
        }
        #txtPassword {
            width: 272px;
        }
    </style>
</head>
<body>
    <ul class="nav nav-pills">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Active</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Link</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Link</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
  </li>
</ul>

    <form id="form1" runat="server">
        <div>
            <center>
        <asp:Label ID="lblLogin" runat="server" Text="Admin Login" BackColor="Yellow" BorderColor="#CCFF33" BorderWidth="12px" ForeColor="Maroon"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />   </center>
            <asp:Label ID="lblUsername" runat="server" Text="Enter Admin User name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>


        </div>
        <p>
            <asp:Label ID="lblPassword" runat="server" Text="Enter Admin Access Password "></asp:Label>


        &nbsp;&nbsp;&nbsp;&nbsp;
            <input id="txtPassword" type="password" /></p>

        <center><asp:Button ID="btnLogin" runat="server" Text="Login" Width="117px" /></center>
    </form>
</body>
</html>
