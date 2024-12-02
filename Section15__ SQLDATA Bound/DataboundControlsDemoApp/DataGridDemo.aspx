<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataGridDemo.aspx.cs" Inherits="DataGridDemo" %>

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
                UpdateCommand="UPDATE [Emp] SET [EmpName] = @EmpName, [EmpSalary] = @EmpSalary WHERE [EmpId] = @EmpId">

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
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
        <asp:GridView ID="grdvEmp" runat="server" 
            DataSourceID="sqlDSEmp" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" 
            BorderWidth="1px" CellPadding="3" GridLines="Vertical"  
            AllowSorting="true" OnSelectedIndexChanged="GridviewEmp_SelectedIndexChanged"
             DataKeyNames="EmpId,EmpName">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns >
                <asp:BoundField DataField="EmpId" HeaderText="Emp Id" ReadOnly  SortExpression="EmpId" />
                <asp:BoundField DataField="EmpName" HeaderText="Emp Name" ReadOnly  SortExpression="EmpName" />
                <asp:BoundField DataField="EmpSalary" HeaderText="Emp Salary" ReadOnly  SortExpression="EmpSalary" />
                <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
                <asp:CommandField ShowDeleteButton="true" ShowEditButton="true" ShowSelectButton="true"  /> <%-- Step:5--%>
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
    </form>
</body>
</html>
