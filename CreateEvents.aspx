<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateEvents.aspx.cs" Inherits="CreateEvents" Title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table>
            <tr>
                <td colspan="3" style="height: 59px" >
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 68px;">
                    <asp:Label ID="Label1" runat="server" Text="Startdate" Font-Bold="True" ForeColor="#C04000"></asp:Label></td>
                <td style="width: 100px; height: 68px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtstartdate"
                        ErrorMessage="Enter Start Date">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px; height: 68px;">
                    <asp:TextBox ID="Txtstartdate" runat="server"></asp:TextBox>
                    <ajaxcontrolToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="Txtstartdate">
                    </ajaxcontrolToolkit:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px;">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#C04000" Text="End Date"></asp:Label></td>
                <td style="width: 100px; height: 21px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtEnddate"
                        ErrorMessage="Enter End Date">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px; height: 21px">
                    <asp:TextBox ID="TxtEnddate" runat="server"></asp:TextBox>
                    <ajaxcontrolToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TxtEnddate">
                    </ajaxcontrolToolkit:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#C04000" Text="Location"></asp:Label></td>
                <td style="width: 100px">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtLocation"
                        ErrorMessage="Enter Location">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="TxtLocation" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#C04000" Text="Heading"></asp:Label></td>
                <td style="width: 100px">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtHeading"
                        ErrorMessage="Enter Heading">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="TxtHeading" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#C04000" Text="Description"></asp:Label></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Txtdesc"
                        ErrorMessage="Enter Description">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                    <asp:TextBox ID="Txtdesc" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="Btnsubmit" runat="server" Text="Submit" OnClick="Btnsubmit_Click" />
                    </td>
                    <asp:HyperLink ID="hypback" runat="server" Text="BACK" NavigateUrl="~/Default.aspx"></asp:HyperLink>
            </tr>
        </table>
    </div>
</asp:Content>

