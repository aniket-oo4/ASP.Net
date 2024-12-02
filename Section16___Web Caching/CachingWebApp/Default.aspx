<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"   %>
<%@ Register src="DemoUserControl.ascx" tagname="DemoUserControl" tagprefix="uc1" %>
<%@ OutputCache 
    Duration="20"  
    VaryByParam="none"  
    VaryByCustom="Browser"  
    VaryByHeader="referer" 
    Location="Any"
   
    %> <%--  VaryByParam="p1;TextBox1"  --%>

<%--<%@ OutputCache  CacheProfile="DemoProfile"  Location="Any" VaryByParam="none"%>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Server Time :: <%=DateTime.Now.ToLongTimeString() %>
        <br />
       P1 ::  <%=Request.QueryString["p1"] %>

        <br />
        

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Button" />
       <%-- Referer :<%=Request.UrlReferrer.ToString() %>--%>


         <uc1:DemoUserControl ID="DemoUserControl1" runat="server" /> <br />


        <asp:Substitution ID="Substitution1"  MethodName="GetServerTime" runat="server" />

    </div>
       
    </form>
</body>
</html>
