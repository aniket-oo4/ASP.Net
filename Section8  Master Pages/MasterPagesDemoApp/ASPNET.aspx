<%@ Page Title="ASP.NET Course Details " Language="C#" MasterPageFile="~/CoursesMasterPage.master" AutoEventWireup="true" CodeFile="ASPNET.aspx.cs" Inherits="ASPNET" %>
<%@ MasterType VirtualPath="~/CoursesMasterPage.master" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolderCourseDetails">
    ASP.NET CORE
    <p>
    Following Are the details of Asp .Net  Course::
        </p>
    <p>
        <asp:Button ID="btnInASP" runat="server" OnClick="btnInASP_Click" Text="Button" />
        <img alt="HAppy" class="auto-style5" src="Admin/Images/Smiley.png" /></p>

</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="cphStartDate">
    3rd  April

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style5 {
        width: 1284px;
        height: 576px;
    }
</style>
</asp:Content>
