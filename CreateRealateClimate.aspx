<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateRealateClimate.aspx.cs" Inherits="CreateRealateClimate" Title="Untitled Page" %>


   
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
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Topic Name" ForeColor="Blue"></asp:Label></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Ddltopics"
                        ErrorMessage="Select Topic name" InitialValue="Select Topic..">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="Ddltopics" runat="server">
                    
                    </asp:DropDownList>
                    <ajaxcontrolToolkit:DropDownExtender ID="DropDownExtender1" runat="server" TargetControlID="Ddltopics">
                    </ajaxcontrolToolkit:DropDownExtender>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Text="Climate Type" Font-Bold="True" ForeColor="Blue"></asp:Label></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Ddlclimate"
                        ErrorMessage="Choose Climate...." InitialValue="Select Climates">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="Ddlclimate" runat="server">
                        <asp:ListItem>Select Climates</asp:ListItem>
                        <asp:ListItem>Arctic</asp:ListItem>
                        <asp:ListItem>Temperate</asp:ListItem>
                        <asp:ListItem>Subtropical</asp:ListItem>
                        <asp:ListItem>Tropical</asp:ListItem>
                        <asp:ListItem>Desert</asp:ListItem>
                    </asp:DropDownList>&nbsp;<ajaxcontrolToolkit:DropDownExtender ID="DropDownExtender2" runat="server"
                        TargetControlID="Ddlclimate">
                    </ajaxcontrolToolkit:DropDownExtender>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="Btnsubmit" runat="server" Font-Bold="True" ForeColor="Gray" Text="Submit" OnClick="Btnsubmit_Click" /></td>
                    <td>
                    <asp:HyperLink ID="hypback" runat="server" Text="BACK" NavigateUrl="~/professorshome.aspx"></asp:HyperLink>
                    </td>
            </tr>
        </table>
    </div>
</asp:Content>

