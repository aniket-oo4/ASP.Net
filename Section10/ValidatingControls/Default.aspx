<%@ Page Language="C#" UnobtrusiveValidationMode ="None" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>

        function ValidateUserName(src, args) {// src is reference to the Control which e are going to validate 

            if (args.Value.length < 8 || args.Value.length > 15) {
                src.errormessage = args.Value + "Is Invalid";
                args.IsValid = false;
            }
            else {
                args.IsValid = true;
            }

        }

    </script>
    <style type="text/css">
        .auto-style1 {
            width: 75%;
            height: 283px;
            margin-left: 246px;
            margin-top: 0px;
        }
        .auto-style2 {
            width: 295px;
        }
        .auto-style3 {
            width: 319px;
        }
        .auto-style4 {
            height: 39px;
        }
        .body {
        
        background-color:aqua;
        }
        .auto-style6 {
            width: 357px;
        }
        .auto-style7 {
            width: 295px;
            height: 58px;
        }
        .auto-style8 {
            width: 319px;
            height: 58px;
        }
        .auto-style9 {
            width: 357px;
            height: 58px;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            width: 521px;
        }
    </style>
</head>
<body style="height: 604px" >
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="lblHeading" runat="server" Text="Registration Form" ForeColor="#333300"></asp:Label>
        <br />
        <br />


        <table class="auto-style10">
            <tr>
                <td class="auto-style11">

                         <br />
        &nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" style="margin-left: 362px" Width="660px" />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtName" runat="server" Width="297px" BackColor="White" BorderColor="#3366FF" BorderStyle="Groove"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp; &nbsp;<asp:RequiredFieldValidator ID="rqfvName" runat="server" ControlToValidate="txtName" ErrorMessage="*name must be filled" ForeColor="Red" SetFocusOnError="True" ToolTip="*name must be filled">Required</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">pasword</td>
                <td class="auto-style8">
                    <asp:textbox id="txtpassword" runat="server" width="297px" bordercolor="#3366ff" borderstyle="groove" textmode="password"></asp:textbox>
                </td>
                <td class="auto-style9">
                    <asp:requiredfieldvalidator id="rqfvpassword" runat="server" controltovalidate="txtpassword" errormessage="*password  must be filled" forecolor="red" setfocusonerror="true"></asp:requiredfieldvalidator>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtCPassword" runat="server" Width="297px" BorderColor="#3366FF" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="rqfvCpassword" runat="server" ControlToValidate="txtCPassword" ErrorMessage="*confirm pwd cant be null" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style6">
                    <asp:CompareValidator ID="cmpvCPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtCPassword" Display="Dynamic" ErrorMessage="CompareValidator : PAsswords must be same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Age</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtAge" runat="server" Width="297px" BorderColor="#3366FF"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="rqfvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="*Age must be filled" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style9">
                    <asp:RangeValidator ID="rngvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="RangeValidator:Agemust be &gt;=18 &amp; &lt;=100" ForeColor="Red" MaximumValue="100" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtEmail" runat="server" Width="297px" BorderColor="#3366FF"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="rqfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Email cant be null" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style6">
                    <asp:RegularExpressionValidator ID="rgexEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="RegularExpressionValidator: Must be valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">RegexError:Invalid</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Education</td>
                <td class="auto-style8">
                    <asp:DropDownList ID="ddlEducation" runat="server" Width="254px">
                        <asp:ListItem Value="-1">(Select one)</asp:ListItem>
                        <asp:ListItem Value="0">UnderGraduate</asp:ListItem>
                        <asp:ListItem Value="1">Graduate</asp:ListItem>
                        <asp:ListItem Value="2">PostGraduate</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="rqfvEducation" runat="server" ControlToValidate="ddlEducation" ErrorMessage="Select Atleast one" ForeColor="Red" InitialValue="-1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style7">Anual Earnings</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtAnnualEarnigs" runat="server" Width="297px" BorderColor="#3366FF"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style9">
                    <asp:CompareValidator ID="cmpvAnnualEarnings" runat="server" ControlToValidate="txtAnnualEarnigs" ErrorMessage="CompareValidator :Must be Currency" ForeColor="Red" Operator="DataTypeCheck" Type="Currency">cmpv:invalid </asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Date OF Graduation</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtDateOfGraduation" runat="server" Width="297px" BorderColor="#3366FF"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style9">
                    <asp:CompareValidator ID="cmpDateOfGraduation" runat="server" ControlToValidate="txtDateOfGraduation" ErrorMessage="cmpv:: Must be a DAte" ForeColor="Red" Operator="GreaterThanEqual" Type="Date">cmpv:Invalid</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Username</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtUserName" runat="server" Width="297px" BorderColor="#3366FF"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style9">
                    <asp:CustomValidator ID="cstmvUsername" runat="server" ControlToValidate="txtUserName" ErrorMessage="CustomValidator" ForeColor="#CC0000" ClientValidationFunction="ValidateUserName" OnServerValidate="cstmvUsername_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSubmit" runat="server" BackColor="#CCFFFF" BorderColor="Red" BorderStyle="Double" Text="Submit" OnClick="btnSubmit_Click" />
                &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" CausesValidation="False" OnClick="btnCancel_Click" Text="Cancel" />
                    <br />
                   
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                </td>
                <td style="vertical-align: top"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtSearch" runat="server" ValidationGroup="searchGroup"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSearch" runat="server" Text="search" OnClick="btnSearch_Click" ValidationGroup="searchGroup" />
                    <asp:RequiredFieldValidator ID="rqfvSearch" runat="server" ControlToValidate="txtSearch" ErrorMessage="rqfv:PleaseEnter SearchValue" ForeColor="Red" ValidationGroup="searchGroup"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>


   
    
    </div>
    </form>
</body>
</html>
