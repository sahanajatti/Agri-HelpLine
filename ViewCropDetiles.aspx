<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewCropDetiles.aspx.cs" Inherits="ViewCropDetiles" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 73%">
        <tr>
            <td align="center">
                <asp:Label ID="Label1" runat="server" Text="Crop Prices"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

