﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataGridDemo.aspx.cs" Inherits="DataGridDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>



            <asp:SqlDataSource ID="sqlDSEmp" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyConnection %>"
                DeleteCommand="DELETE FROM [Emp] WHERE [EmpId] = @EmpId"
                InsertCommand="INSERT INTO [Emp] ([EmpName], [EmpSalary]) VALUES (@EmpName, @EmpSalary)"
                ProviderName="<%$ ConnectionStrings:MyConnection.ProviderName %>"
                SelectCommand="SELECT [EmpId], [EmpName], [EmpSalary],[IsActive] FROM [Emp]"
                UpdateCommand="UPDATE [Emp] SET [EmpName] = @EmpName, [EmpSalary] = @EmpSalary,[IsActive]=@IsActive WHERE [EmpId] = @EmpId">

                <DeleteParameters>
                    <asp:Parameter Name="EmpId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="EmpSalary" Type="Decimal" />
                </InsertParameters>
           
                <UpdateParameters>
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="EmpSalary" Type="Decimal" />
                    <asp:Parameter Name="EmpId" Type="Int32" />
                    <asp:Parameter Name="IsActive" Type="Boolean" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="sqlDSfilter" runat="server" ConnectionString="<%$ ConnectionStrings:DataBoundControlsDemoDBConnectionString %>" DeleteCommand="DELETE FROM [Emp] WHERE [EmpId] = @EmpId" InsertCommand="INSERT INTO [Emp] ([EmpName], [EmpSalary], [IsActive]) VALUES (@EmpName, @EmpSalary, @IsActive)" SelectCommand="SELECT * FROM [Emp] WHERE ([EmpId] = @EmpId)" UpdateCommand="UPDATE [Emp] SET [EmpName] = @EmpName, [EmpSalary] = @EmpSalary, [IsActive] = @IsActive WHERE [EmpId] = @EmpId">
                <DeleteParameters>
                    <asp:Parameter Name="EmpId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="EmpSalary" Type="Decimal" />
                    <asp:Parameter Name="IsActive" Type="Boolean" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="-1" Name="EmpId" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="EmpSalary" Type="Decimal" />
                    <asp:Parameter Name="IsActive" Type="Boolean" />
                    <asp:Parameter Name="EmpId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

     <asp:GridView ID="grdvEmp" runat="server" 
            DataSourceID="sqlDSEmp" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" 
            BorderWidth="1px" CellPadding="3" GridLines="Vertical"  
            AllowSorting="True" OnSelectedIndexChanged="GridviewEmp_SelectedIndexChanged"
             DataKeyNames="EmpId" OnRowCommand="grdvEmp_RowCommand">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns >

                  <%-- BoundField--%>
                <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly  SortExpression="EmpId" InsertVisible="False" />
                <asp:BoundField DataField="EmpName" HeaderText="EmpName"   SortExpression="EmpName" />
                <asp:BoundField DataField="EmpSalary" HeaderText="EmpSalary"   SortExpression="EmpSalary" />
                <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />

                    <%-- CommandField--%>
                  <%-- Step:5--%>

                  <%-- ButtonField--%>

                <%-- HyperLinkField--%>
                <%-- DataTextField  replaces the name of hyperlink with that particular rows data as per mentioned column name --%> 
                <%-- imageField --%>
                <%-- DataAlternateTextField="EmpName"  this will show the empname if the image is not found for specific row --%>
            </Columns>
         
           
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
         
           
        </asp:GridView>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="sqlDSEmp" ForeColor="Black" GridLines="Vertical" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="EmpId">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="EmpId" HeaderText="EmpId" InsertVisible="False" ReadOnly="True" SortExpression="EmpId" />
                    <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                    <asp:BoundField DataField="EmpSalary" HeaderText="EmpSalary" SortExpression="EmpSalary" />
                    <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </div>
 
        
        <%-- BoundField--%>     
        <asp:DetailsView ID="dtvEmp" runat="server" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
            DataKeyNames="EmpId" 
            DataSourceID="sqlDSfilter" ForeColor="Black" Height="50px" Width="125px" 
            OnItemInserted="dtvEmp_ItemInserted" 
            OnItemUpdated="dtvEmp_ItemUpdated" 
            OnModeChanged="dtvEmp_ModeChanged">
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="EmpId" HeaderText="EmpId" InsertVisible="False" ReadOnly="True" SortExpression="EmpId" />
                <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                <asp:BoundField DataField="EmpSalary" HeaderText="EmpSalary" SortExpression="EmpSalary" />
                <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
                <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:DetailsView>
      
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
      
    </form>
</body>
</html>
