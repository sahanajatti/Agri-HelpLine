<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateCrops.aspx.cs" Inherits="createCrops" Title="Untitled Page" %>


   
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table>
            <tr>
                <td colspan="3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Blue" Text="CropName"></asp:Label></td>
                <td style="width: 9px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DdlCropName"
                        ErrorMessage="Select CropName" InitialValue="Select">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DdlCropName" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Apples</asp:ListItem>
                        <asp:ListItem>Banana</asp:ListItem>
                        <asp:ListItem>Beans</asp:ListItem>
                        <asp:ListItem>Cabbage</asp:ListItem>
                        <asp:ListItem>Carrot</asp:ListItem>
                        <asp:ListItem>Cherry</asp:ListItem>
                        <asp:ListItem>Coconut</asp:ListItem>
                        <asp:ListItem>Cucumber</asp:ListItem>
                        <asp:ListItem>Mangos</asp:ListItem>
                    </asp:DropDownList>
                    <ajaxcontrolToolkit:DropDownExtender ID="DropDownExtender1" runat="server" TargetControlID="DdlCropName">
                    </ajaxcontrolToolkit:DropDownExtender>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Blue" Text="Crop Type"></asp:Label></td>
                <td style="width: 9px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DDlCroptype"
                        ErrorMessage="Enter Crop Name" InitialValue="Select">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DDlCroptype" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Summer</asp:ListItem>
                        <asp:ListItem>Winter</asp:ListItem>
                        <asp:ListItem>Spring</asp:ListItem>
                    </asp:DropDownList>
                    <ajaxcontrolToolkit:DropDownExtender ID="DropDownExtender2" runat="server" TargetControlID="DDlCroptype">
                    </ajaxcontrolToolkit:DropDownExtender>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="Btnsubmit" runat="server" BackColor="#C0C0FF" Font-Bold="True" ForeColor="#C000C0"
                        OnClick="Btnsubmit_Click" Text="Submit" /></td>
                        <td>
            <asp:HyperLink ID="Hypback" runat="server" Text="BACK" NavigateUrl="~/Default.aspx"></asp:HyperLink>
            </td>
            </tr>
        </table>
    </div>
</asp:Content>

