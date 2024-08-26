<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdatePorfile.aspx.cs" Inherits="UpdatePorfile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 61%">
        <tr>
            <td align="right" style="width: 274px">
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_Uname" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 274px">
                <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_Fname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 274px">
                <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_Lname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 274px">
                <asp:Label ID="Label4" runat="server" Text="Location"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_Loc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 274px">
                <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_State" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 274px">
                <asp:Label ID="Label7" runat="server" Text="Country"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_Country" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 274px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 274px" align="right">
                <asp:Button ID="btn_Update" runat="server" Text="Update" 
                    onclick="btn_Update_Click" />
            </td>
            <td>
                <asp:Button ID="btn_Back" runat="server" Text="Back" onclick="btn_Back_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 274px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 274px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

