<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateRelatedCrop.aspx.cs" Inherits="CreateRelatedCrop" Title="Untitled Page" %>


   
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 60%">
            <tr>
                <td colspan="3" style="height: 24px">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 24px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Blue" Text="Topic Name"></asp:Label></td>
                <td style="width: 100px; height: 24px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select Topic" ControlToValidate="Ddltopic" InitialValue="Select Topic..">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px; height: 24px">
                    <asp:DropDownList ID="Ddltopic" runat="server">
                    </asp:DropDownList>
                    <ajaxcontrolToolkit:DropDownExtender ID="DropDownExtender1" runat="server" TargetControlID="Ddltopic">
                    </ajaxcontrolToolkit:DropDownExtender>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Text="Crop Name" Font-Bold="True" ForeColor="Blue" ></asp:Label></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Select Crop" ControlToValidate="Ddlcrop" InitialValue="Select Crop..">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="Ddlcrop" runat="server">
                    </asp:DropDownList>
                    <ajaxcontrolToolkit:DropDownExtender ID="DropDownExtender2" runat="server" TargetControlID="Ddlcrop">
                    </ajaxcontrolToolkit:DropDownExtender>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="Btnsubmit" runat="server" Text="Submit" OnClick="Btnsubmit_Click" /></td>
                    <td>
                    <asp:HyperLink ID="hypback" runat="server" Text="BACK" NavigateUrl="~/professorshome.aspx"></asp:HyperLink>
                    </td>
            </tr>
        </table>
    </div>
</asp:Content>

