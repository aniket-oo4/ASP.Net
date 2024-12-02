<%@ Page Title="C-Sharp Course Details" Language="C#" MasterPageFile="~/CoursesMasterPage.master" AutoEventWireup="true" CodeFile="CSharp.aspx.cs" Inherits="CSharp" 
 
    %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    <script>
        function foo() {
            console.log("Hellow world "+txtDemo.Text);
        }
        function SayHello() {
           // var name = document.getElementById("<%=txtDemo.ClientID%>").value;// 
            var name = document.forms[0].<%=txtDemo.UniqueID%>.value;// 
            alert("Hello :"+name);
        }

    </script>

</asp:Content>



<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolderCourseDetails">
    <p>
    C Sharp Course Details:</p>
<p>
    &nbsp;</p>
<p>
    Following are the details of CsharP</p>
    <p>
        <asp:TextBox ID="txtDemo" runat="server" ClientIDMode="AutoId"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnDemo" runat="server" OnClick="btnInContent_Click" OnClientClick="SayHello()" Text   ="Button"  />
    </p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="cphStartDate">
    1st March
</asp:Content>



