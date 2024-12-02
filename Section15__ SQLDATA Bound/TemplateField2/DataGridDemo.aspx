<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataGridDemo.aspx.cs" Inherits="DataGridDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <%--  Data Source for  Gridview  --%>
            <asp:SqlDataSource ID="sqlDSEmp" runat="server"
                ConnectionString="<%$ ConnectionStrings:MyConnection %>"
                DeleteCommand="DELETE FROM [Emp] WHERE [EmpId] = @EmpId"
                InsertCommand="INSERT INTO [Emp] ([EmpName], [EmpSalary]) VALUES (@EmpName, @EmpSalary)"
                ProviderName="<%$ ConnectionStrings:MyConnection.ProviderName %>"
                SelectCommand="SELECT [EmpId], [EmpName], [EmpSalary],[IsActive] FROM [Emp]"
                UpdateCommand="UPDATE [Emp] SET [EmpName] = @EmpName, [EmpSalary] = @EmpSalary,[IsActive]=@IsActive,[UpdatedDate]=@UpdatedDate WHERE [EmpId] = @EmpId">

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
                    <asp:Parameter Name="UpdatedDate" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>


            <%--  DAta Source for details view  --%>
            <asp:SqlDataSource ID="sqlDSfilter" runat="server" ConnectionString="<%$ ConnectionStrings:DataBoundControlsDemoDBConnectionString %>"
                DeleteCommand="DELETE FROM [Emp] WHERE [EmpId] = @EmpId"
                InsertCommand="INSERT INTO [Emp] ([EmpName], [EmpSalary], [IsActive],[CreatedDate]) VALUES (@EmpName, @EmpSalary, @IsActive,@CreatedDate)"
                SelectCommand="SELECT * FROM [Emp] WHERE ([EmpId] = @EmpId)"
                UpdateCommand="UPDATE [Emp] SET [EmpName] = @EmpName, [EmpSalary] = @EmpSalary, [IsActive] = @IsActive,[UpdatedDate]=@UpdatedDate WHERE [EmpId] = @EmpId">
                <DeleteParameters>
                    <asp:Parameter Name="EmpId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="EmpSalary" Type="Decimal" />
                    <asp:Parameter Name="IsActive" Type="Boolean" />
                    <asp:Parameter Name="CreatedDate" Type="DateTime" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="-1" Name="EmpId" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="EmpSalary" Type="Decimal" />
                    <asp:Parameter Name="IsActive" Type="Boolean" />
                    <asp:Parameter Name="EmpId" Type="Int32" />
                    <asp:Parameter Name="UpdatedDate" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>


            <%--  First Gridview  --%>
            <asp:GridView ID="grdvEmp" runat="server"
                DataSourceID="sqlDSEmp" AutoGenerateColumns="False"
                BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                BorderWidth="1px" CellPadding="3" GridLines="Vertical"
                AllowSorting="True" OnSelectedIndexChanged="GridviewEmp_SelectedIndexChanged"
                DataKeyNames="EmpId" OnRowCommand="grdvEmp_RowCommand">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>

                    <%-- BoundField--%>
                    <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly SortExpression="EmpId" InsertVisible="False" />
                    <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                    <asp:BoundField DataField="EmpSalary" HeaderText="EmpSalary" SortExpression="EmpSalary" />
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


            <%-- BoundField--%>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4"
                DataSourceID="sqlDSEmp" ForeColor="Black"
                GridLines="Vertical" AllowSorting="True"
                AutoGenerateColumns="False"
                DataKeyNames="EmpId" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridviewEmp_SelectedIndexChanged" ShowFooter="True" OnRowDataBound="GridView1_RowDataBound">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <%-- Each Filed Represent indivdual column  --%>
                    <asp:BoundField DataField="EmpId" HeaderText="EmpId" InsertVisible="False" ReadOnly="True" SortExpression="EmpId" />
                    <asp:TemplateField HeaderText="EmpName" SortExpression="EmpName">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEmpName" runat="server" Text='<%# Bind("EmpName") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rqfvEmpName" runat="server" ErrorMessage="Please Ensure Textbox can't be null" ForeColor="Red" Display="Dynamic" ControlToValidate="txtEmpName"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("EmpName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <%--TemplateField For EmpSalary Column--%>
                    <asp:TemplateField HeaderText="EmpSalary" SortExpression="EmpSalary">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("EmpSalary") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="lblTotalSalary" runat="server" Text="Label"></asp:Label>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("EmpSalary") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <%--TemplateField For IsActive Column--%>
                    <asp:TemplateField HeaderText="IsActive" SortExpression="IsActive">
                        <EditItemTemplate>
                            <asp:CheckBox ID="chkIsActive" runat="server" Checked='<%# IsEmpActive(Eval("IsActive")) %>' />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblIsActive" runat="server" Text='<%# GetYesOrNo(Eval("IsActive")) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:CommandField ShowDeleteButton="false" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:TemplateField>
                        <HeaderTemplate>my header </HeaderTemplate>
                        <FooterTemplate>My footer </FooterTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" Text="Delete"
                                OnClientClick="return confirm('Are you Sure ?')"
                                CommandName="delete"></asp:LinkButton>
                        </ItemTemplate>

                        <EditItemTemplate>
                            delete
                        </EditItemTemplate>
                    </asp:TemplateField>


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


        <%-- CommandField--%>
        <asp:DetailsView ID="dtvEmp" runat="server" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2"
            DataKeyNames="EmpId"
            DataSourceID="sqlDSfilter" ForeColor="Black" Height="50px" Width="125px"
            OnItemInserted="dtvEmp_ItemInserted"
            OnItemUpdated="dtvEmp_ItemUpdated"
            OnModeChanged="dtvEmp_ModeChanged" OnItemInserting="dtvEmp_ItemInserting" OnItemUpdating="dtvEmp_ItemUpdating">
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="EmpId" HeaderText="EmpId" InsertVisible="False" ReadOnly="True" SortExpression="EmpId" />
                <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                <asp:BoundField DataField="EmpSalary" HeaderText="EmpSalary" SortExpression="EmpSalary" />
                <asp:TemplateField HeaderText="IsActive" SortExpression="IsActive">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkIsActive" runat="server" Checked='<%# IsEmpActive(Eval("IsActive")) %>' />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("IsActive") %>' />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# GetYesOrNo(Eval("IsActive")) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
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
