<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CreateRelatedFertiliser.aspx.cs" Inherits="CreateRelatedFertiliser"
    Title="Untitled Page" %>


   

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 60%" align="center" >
        <tr>
            <td colspan="3" style="height: 24px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 24px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Blue" Text="Topic Name"></asp:Label></td>
            <td style="width: 5px; height: 24px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Ddltopic"
                    ErrorMessage="Select Topic" InitialValue="Select Topic..">*</asp:RequiredFieldValidator></td>
            <td style="width: 100px; height: 24px">
                <asp:DropDownList ID="Ddltopic" runat="server">
                </asp:DropDownList>
                <ajaxcontrolToolkit:dropdownextender id="DropDownExtender1" runat="server" targetcontrolid="Ddltopic"></ajaxcontrolToolkit:dropdownextender>
               
            </td>
            
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Blue" Text=" Fertilizer Name" Width="154px"></asp:Label></td>
            <td style="width: 5px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DDlfertliserName"
                    ErrorMessage="Select Fertlizer" InitialValue="Select Fertlizer..">*</asp:RequiredFieldValidator></td>
            <td style="width: 100px">
                <asp:DropDownList ID="DDlfertliserName" runat="server">
                </asp:DropDownList>
                <ajaxcontrolToolkit:dropdownextender id="DropDownExtender2" runat="server" targetcontrolid="DDlfertliserName"></ajaxcontrolToolkit:dropdownextender>
               
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center" >
                <asp:Button ID="Btnsubmit" runat="server" OnClick="Btnsubmit_Click" Text="Submit" /></td>
                <td>
                    <asp:HyperLink ID="hypback" runat="server" Text="BACK" NavigateUrl="~/professorshome.aspx"></asp:HyperLink>
                    </td>
        </tr>
    </table>
</asp:Content>
