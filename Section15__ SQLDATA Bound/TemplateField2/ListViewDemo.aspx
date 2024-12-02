<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListViewDemo.aspx.cs" Inherits="ListViewDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:SqlDataSource ID="sqlDSEmp" runat="server" ConnectionString="<%$ ConnectionStrings:DataBoundControlsDemoDBConnectionString %>" DeleteCommand="DELETE FROM [Emp] WHERE [EmpId] = @EmpId" InsertCommand="INSERT INTO [Emp] ([EmpName], [EmpSalary], [IsActive]) VALUES (@EmpName, @EmpSalary, @IsActive)" SelectCommand="SELECT [EmpId], [EmpName], [EmpSalary], [IsActive] FROM [Emp]" UpdateCommand="UPDATE [Emp] SET [EmpName] = @EmpName, [EmpSalary] = @EmpSalary, [IsActive] = @IsActive WHERE [EmpId] = @EmpId">
                <DeleteParameters>
                    <asp:Parameter Name="EmpId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="EmpSalary" Type="Decimal" />
                    <asp:Parameter Name="IsActive" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="EmpSalary" Type="Decimal" />
                    <asp:Parameter Name="IsActive" Type="Boolean" />
                    <asp:Parameter Name="EmpId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="EmpId" DataSourceID="sqlDSEmp" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="">EmpId:
                    <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                    <br />
                    EmpName:
                    <asp:Label ID="EmpNameLabel" runat="server" Text='<%# Eval("EmpName") %>' />
                    <br />
                    EmpSalary:
                    <asp:Label ID="EmpSalaryLabel" runat="server" Text='<%# Eval("EmpSalary") %>' />
                    <br />
                    <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Eval("IsActive") %>' Enabled="false" Text="IsActive" />
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="">EmpId:
                    <asp:Label ID="EmpIdLabel1" runat="server" Text='<%# Eval("EmpId") %>' />
                    <br />
                    EmpName:
                    <asp:TextBox ID="EmpNameTextBox" runat="server" Text='<%# Bind("EmpName") %>' />
                    <br />
                    EmpSalary:
                    <asp:TextBox ID="EmpSalaryTextBox" runat="server" Text='<%# Bind("EmpSalary") %>' />
                    <br />
                    <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Bind("IsActive") %>' Text="IsActive" />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td runat="server" />
            </EmptyItemTemplate>

            <InsertItemTemplate>
                <td runat="server" style="">EmpName:
                    <asp:TextBox ID="EmpNameTextBox" runat="server" Text='<%# Bind("EmpName") %>' />
                    <br />
                    EmpSalary:
                    <asp:TextBox ID="EmpSalaryTextBox" runat="server" Text='<%# Bind("EmpSalary") %>' />
                    <br />
                    <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Bind("IsActive") %>' Text="IsActive" />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="">EmpId:
                    <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                    <br />
                    EmpName:
                    <asp:Label ID="EmpNameLabel" runat="server" Text='<%# Eval("EmpName") %>' />
                    <br />
                    EmpSalary:
                    <asp:Label ID="EmpSalaryLabel" runat="server" Text='<%# Eval("EmpSalary") %>' />
                    <br />
                    <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Eval("IsActive") %>' Enabled="false" Text="IsActive" />
                    <br />
                </td>
            </ItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="">EmpId:
                    <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                    <br />
                    EmpName:
                    <asp:Label ID="EmpNameLabel" runat="server" Text='<%# Eval("EmpName") %>' />
                    <br />
                    EmpSalary:
                    <asp:Label ID="EmpSalaryLabel" runat="server" Text='<%# Eval("EmpSalary") %>' />
                    <br />
                    <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Eval("IsActive") %>' Enabled="false" Text="IsActive" />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
    </form>
</body>
</html>
