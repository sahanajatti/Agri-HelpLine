<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CreateFertilisers.aspx.cs" Inherits="Fertilisers" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" height="70%" width="40%">
        <tr>
            <td colspan="3">
                &nbsp;<img src="Images/flow.jpg" style="width: 238px" />&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 104px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Blue" Text=" Fertilizer Id"></asp:Label></td>
            <td style="width: 104px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtFname"
                    ErrorMessage="Please Enter The Festiliser Id">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Please Enter Numerics Only"
                    ControlToValidate="TxtFid" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
            </td>
            <td style="width: 361px">
                <asp:TextBox ID="TxtFid" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 104px">
                <asp:Label ID="Label1" runat="server" Text=" FertiliserName" Font-Bold="True" ForeColor="Blue"></asp:Label></td>
            <td style="width: 104px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtFname"
                    ErrorMessage="Please Enter The Festiliser Name">*</asp:RequiredFieldValidator></td>
            <td style="width: 361px">
                <asp:TextBox ID="TxtFname" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <contenttemplate>
                            <asp:Button ID="Btnsubmit" runat="server" Text="Submit" BackColor="Silver" OnClick="Btnsubmit_Click" />
                            </contenttemplate>
                </asp:UpdatePanel>
            </td>
            <td>
            <asp:HyperLink ID="Hypback" runat="server" Text="BACK" NavigateUrl="~/Default.aspx"></asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>
