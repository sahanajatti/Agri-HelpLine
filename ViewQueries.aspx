<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewQueries.aspx.cs" Inherits="VeiwQueries" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 73%">
        <tr>
            <td style="width: 1171px">
                <asp:Label ID="Label1" runat="server" Text="View Queries"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 1171px">
                <asp:GridView ID="GridView1" runat="server" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

