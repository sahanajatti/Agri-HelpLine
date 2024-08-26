<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CreateProfession.aspx.cs" Inherits="CreateProfession" Title="Untitled Page" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table a align="center">
        <tr>
            <td colspan="3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#C04000" Text="User Name"></asp:Label></td>
            <td style="width: 6px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select User Name"
                    ControlToValidate="DdluserName" InitialValue="Select User..">*</asp:RequiredFieldValidator></td>
            <td style="width: 100px">
                <asp:DropDownList ID="DdluserName" runat="server">
                </asp:DropDownList>
                <ajaxcontrolToolkit:DropDownExtender ID="DropDownExtender2" runat="server" TargetControlID="DdluserName">
                </ajaxcontrolToolkit:DropDownExtender>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#C04000" Text="Profession"></asp:Label></td>
            <td style="width: 6px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DdlProfession"
                    ErrorMessage="Select Profession" InitialValue="Select Professor..">*</asp:RequiredFieldValidator></td>
            <td style="width: 100px">
                <ajaxcontrolToolkit:DropDownExtender ID="DropDownExtender1" runat="server" TargetControlID="DdlProfession">
                </ajaxcontrolToolkit:DropDownExtender>
                <asp:DropDownList ID="DdlProfession" runat="server" >
                    <asp:ListItem>Select Professor..</asp:ListItem>
                    <asp:ListItem>Assitence Professor</asp:ListItem>
                    <asp:ListItem>Assosiate Professor</asp:ListItem>
                    <asp:ListItem>Professor</asp:ListItem>
                    <asp:ListItem>Deen</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#C04000" Text="Expertise"></asp:Label></td>
            <td style="width: 6px">
                &nbsp;</td>
            <td style="width: 100px">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Fertilizer" />
                <br />
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Crop" />
                <br />
                <asp:CheckBox ID="CheckBox3" runat="server" Text="Climate" />
                <br />
                <asp:CheckBox ID="CheckBox4" runat="server" Text="Soil" />
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 6px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Button ID="Btnsubmit" runat="server" OnClick="Btnsubmit_Click" Text="Submit" /></td>
                <td>
            <asp:HyperLink ID="Hypback" runat="server" Text="BACK" NavigateUrl="~/Default.aspx"></asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>
