<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridViewWithoutSqlDataSource.aspx.cs" Inherits="GridViewWithoutSqlDataSource" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="grdvEmp" runat="server"
                AutoGenerateColumns="False"
                BackColor="White" BorderColor="#999999" BorderStyle="None"
                BorderWidth="1px" CellPadding="3" GridLines="Vertical"
                AllowSorting="true"
                DataKeyNames="EmpId,EmpName" OnSorting="grdvEmp_Sorting" OnRowCancelingEdit="grdvEmp_RowCancelingEdit" OnRowEditing="grdvEmp_RowEditing" OnRowUpdating="grdvEmp_RowUpdating" OnRowCommand="grdvEmp_RowCommand" OnCreatingModelDataSource="grdvEmp_CreatingModelDataSource">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="EmpId" HeaderText="Emp Id" ReadOnly SortExpression="EmpId" />
                    <asp:BoundField DataField="EmpName" HeaderText="Emp Name"  SortExpression="EmpName" />
                    <asp:BoundField DataField="EmpSalary" HeaderText="Emp Salary"  SortExpression="EmpSalary" />
                    <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
                    <asp:CommandField HeaderText="CommandField"  ShowDeleteButton ="true" ShowEditButton="true" ShowSelectButton="true"  ButtonType="Button"/>
                    <asp:ButtonField ButtonType="Link" Text="email"  HeaderText="Customu Commandfield" />
                        <asp:ButtonField ButtonType="Link" Text="sms"  />

                    <%-- Step:5--%>
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


        </div>
    </form>
</body>
</html>
