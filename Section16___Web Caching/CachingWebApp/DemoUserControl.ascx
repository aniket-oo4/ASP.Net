<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DemoUserControl.ascx.cs" Inherits="DemoUserControl" %>

<%@ OutputCache Duration="10" VaryByParam="none"  Shared="false" %>
<%--Shared="true"  shares cached values for all pages where this user control i used  , it is  --%>
<%=DateTime.Now.ToLongTimeString() %>