<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateEvents_Files.aspx.cs" Inherits="Events_Files" Title="Untitled Page" %>


   
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        &nbsp;<table>
            <tr>
                <td colspan="3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FF8000" Text="Event Heading"></asp:Label></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DdlEvents"
                        ErrorMessage="Select Heading" InitialValue="Select">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DdlEvents" runat="server">
                    </asp:DropDownList>
                    <ajaxcontrolToolkit:DropDownExtender ID="DropDownExtender1" runat="server" TargetControlID="DdlEvents">
                    </ajaxcontrolToolkit:DropDownExtender>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#FF8000" Text="File Type"></asp:Label></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DdlFileType"
                        ErrorMessage="Select File Type" InitialValue="Select">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DdlFileType" runat="server">
                    </asp:DropDownList>
                    <ajaxcontrolToolkit:DropDownExtender ID="DropDownExtender2" runat="server" TargetControlID="DdlFileType">
                    </ajaxcontrolToolkit:DropDownExtender>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#FF8000" Text="User Name"></asp:Label></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DdlUserName"
                        ErrorMessage="Select User Name" InitialValue="Select">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DdlUserName" runat="server">
                    </asp:DropDownList>
                    <ajaxcontrolToolkit:DropDownExtender ID="DropDownExtender3" runat="server" TargetControlID="DdlUserName">
                    </ajaxcontrolToolkit:DropDownExtender>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click"  /></td>
            <td>
            <asp:HyperLink ID="Hypback" runat="server" Text="BACK" NavigateUrl="~/Default.aspx"></asp:HyperLink>
            </td>
            
            </tr>
            
            
        </table>
    </div>
</asp:Content>

