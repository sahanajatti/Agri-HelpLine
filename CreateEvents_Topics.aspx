<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateEvents_Topics.aspx.cs" Inherits="Events_Topics" Title="Untitled Page" %>


   
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table>
            <tr>
                <td colspan="3">
                    <asp:CheckBox ID="Chkskip" runat="server" Font-Bold="True" ForeColor="Blue" OnCheckedChanged="Chkskip_CheckedChanged"
                        Text="Skip" AutoPostBack="True" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Blue" Text="Select Events"></asp:Label></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select  Event Heading"
                        InitialValue="Select Events" ControlToValidate="DDlEvents">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DDlEvents" runat="server" 
                        onselectedindexchanged="DDlEvents_SelectedIndexChanged">
                    </asp:DropDownList>
                    <ajaxcontrolToolkit:dropdownextender id="DropDownExtender1" runat="server" targetcontrolid="DDlEvents"></ajaxcontrolToolkit:dropdownextender>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Blue" Text="Select Topic"></asp:Label></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Select Topic"
                        InitialValue="Select Topic" ControlToValidate="DDlTopics">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DDlTopics" runat="server">
                    </asp:DropDownList>
                    <ajaxcontrolToolkit:dropdownextender id="DropDownExtender2" runat="server" targetcontrolid="DDlTopics"></ajaxcontrolToolkit:dropdownextender>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" /></td>
            
            <td>
            <asp:HyperLink ID="Hypback" runat="server" Text="BACK" NavigateUrl="~/Default.aspx"></asp:HyperLink>
            </td>
            
            </tr>
            
            
        </table>
    </div>
</asp:Content>

