<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CreateTopic.aspx.cs" Inherits="CreateTopic" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align: center">
        <table>
            <tr>
                <td colspan="3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Text="Enter Heading" Font-Bold="true" ForeColor="blue"></asp:Label></td>
                <td style="width: 5px">
                    <asp:RequiredFieldValidator ControlToValidate="TxtHeading" ID="RequiredFieldValidator1"
                        runat="server" ErrorMessage="Enter Topic Heading">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TxtHeading" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Text="Topic Type" Font-Bold="true" ForeColor="blue"></asp:Label></td>
                <td style="width: 5px">
                    <asp:RequiredFieldValidator ControlToValidate="Ddltype" ID="RequiredFieldValidator2"
                        runat="server" ErrorMessage="Select TopicType" InitialValue="Select">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="Ddltype" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Crop alteration</asp:ListItem>
                        <asp:ListItem>Livestock</asp:ListItem>
                        <asp:ListItem>Lunar Farming</asp:ListItem>
                        <asp:ListItem>Biodiversity</asp:ListItem>
                    </asp:DropDownList>
                    <ajaxcontrolToolkit:DropDownExtender ID="DropDownExtender2" runat="server" TargetControlID="Ddltype">
                    </ajaxcontrolToolkit:DropDownExtender>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 82px">
                    <asp:Label ID="Label3" runat="server" Text="Description" Font-Bold="true" ForeColor="blue"></asp:Label></td>
                <td style="width: 5px; height: 82px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TxtDesc"
                        runat="server" ErrorMessage="Enter Description">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px; height: 82px">
                    <asp:TextBox ID="TxtDesc" runat="server" Height="72px" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px">
                    <asp:Label ID="Label4" runat="server" Text="Date" Font-Bold="true" ForeColor="blue"></asp:Label></td>
                <td style="width: 5px; height: 21px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TxtDate"
                        runat="server" ErrorMessage="Enter Date">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px; height: 21px">
                    <asp:TextBox ID="TxtDate" runat="server"></asp:TextBox>
                    <ajaxcontrolToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TxtDate">
                    </ajaxcontrolToolkit:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label5" runat="server" Text="UserName" Font-Bold="true" ForeColor="blue"></asp:Label></td>
                <td style="width: 5px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="Ddlusers"
                        runat="server" ErrorMessage="Select UserName" InitialValue="Select UserName">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="Ddlusers" runat="server">
                    </asp:DropDownList>
                    <ajaxcontrolToolkit:DropDownExtender ID="DropDownExtender1" runat="server" TargetControlID="Ddlusers">
                    </ajaxcontrolToolkit:DropDownExtender>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="Btnsubmit" runat="server" Text="Submit" OnClick="Btnsubmit_Click" /></td>
            
            <td>
            <asp:HyperLink ID="Hypback" runat="server" Text="BACK" NavigateUrl="~/professorshome.aspx"></asp:HyperLink>
            </td>
            </tr>
        </table>
    </div>
</asp:Content>
