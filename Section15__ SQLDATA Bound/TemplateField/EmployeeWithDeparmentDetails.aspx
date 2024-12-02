<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeWithDeparmentDetails.aspx.cs" Inherits="EmployeeWithDeparmentDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sqlDSEmpWithJoin" runat="server"
            ConnectionString="<%$ ConnectionStrings:DataBoundControlsDemoDBConnectionString %>" 
            DeleteCommand="DELETE FROM [Employee] WHERE [EmpId] = @EmpId" 
            InsertCommand="INSERT INTO [Employee] ([EmpName], [EmpSalary], [DeptId]) VALUES (@EmpName, @EmpSalary, @DeptId)" 
            SelectCommand="SELECT Employee.EmpId, Employee.EmpName, Employee.EmpSalary, Department.DeptName FROM Employee INNER JOIN Department ON Employee.DeptId = Department.DeptId" 
            UpdateCommand="UPDATE [Employee] SET [EmpName] = @EmpName, [EmpSalary] = @EmpSalary, [DeptId] = @DeptId WHERE [EmpId] = @EmpId">
            <DeleteParameters>
                <asp:Parameter Name="EmpId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmpName" Type="String" />
                <asp:Parameter Name="EmpSalary" Type="Decimal" />
                <asp:Parameter Name="DeptId" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EmpName" Type="String" />
                <asp:Parameter Name="EmpSalary" Type="Decimal" />
                <asp:Parameter Name="DeptId" Type="Int32" />
                <asp:Parameter Name="EmpId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <hr />
        <br />
        <asp:GridView ID="grdvEmp" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataKeyNames="EmpId" 
            DataSourceID="sqlDSEmp" 
            EmptyDataText="There are no data records to display." >
            
            <Columns>
                <asp:CommandField ShowEditButton="True" />  <%-- this add the edit option in Gridv--%>
                <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly="True" SortExpression="EmpId" />
                <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                <asp:BoundField DataField="EmpSalary" HeaderText="EmpSalary" SortExpression="EmpSalary" />
                <asp:TemplateField HeaderText="DeptId" SortExpression="DeptId">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlDept" runat="server" 
                            DataSourceID="sqlDSDepartment" 
                            DataTextField="DeptName" 
                            DataValueField="DeptId"
                             SelectedValue='<%# Bind("DeptId") %>' > <%-- add SelectedValue Attribute for  showing current rows Name in DDL  --%>
                            
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# GetDepartmentName(Eval("DeptId")) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="sqlDSEmp" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" DeleteCommand="DELETE FROM [Employee] WHERE [EmpId] = @EmpId" InsertCommand="INSERT INTO [Employee] ([EmpName], [EmpSalary], [DeptId]) VALUES (@EmpName, @EmpSalary, @DeptId)" ProviderName="<%$ ConnectionStrings:MyConnection.ProviderName %>" SelectCommand="SELECT [EmpId], [EmpName], [EmpSalary], [DeptId] FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [EmpName] = @EmpName, [EmpSalary] = @EmpSalary, [DeptId] = @DeptId WHERE [EmpId] = @EmpId">
            <DeleteParameters>
                <asp:Parameter Name="EmpId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmpName" Type="String" />
                <asp:Parameter Name="EmpSalary" Type="Decimal" />
                <asp:Parameter Name="DeptId" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EmpName" Type="String" />
                <asp:Parameter Name="EmpSalary" Type="Decimal" />
                <asp:Parameter Name="DeptId" Type="Int32" />
                <asp:Parameter Name="EmpId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <asp:SqlDataSource ID="sqlDSDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:DataBoundControlsDemoDBConnectionString %>" SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
