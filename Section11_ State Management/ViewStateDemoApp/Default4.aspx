<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>
<!---  - Example of  HiddenField  -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>

        function InitializeClienTime() {
            var dt = new Date();
            t = dt.getHours() + ":" + dt.getMinutes() + ":" + dt.getSeconds();
            document.getElementById("hdnTime").value = t;
        }


    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HiddenField ID="hdnTime" runat="server" />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" OnClientClick="InitializeClienTime()" />
    </div>
    </form>
</body>
</html>
