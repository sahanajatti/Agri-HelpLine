<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditCropDetiles.aspx.cs" Inherits="EditCropDetiles" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 26%" align="center">
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Algerian" 
                    Font-Size="Larger" ForeColor="#33CC33" Text="Enter Crop Price Detiles"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 40px" align="right">
                <asp:Label ID="Label1" runat="server" Text="Enter Crop Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCroid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label3" runat="server" Text="Ente Crop Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCrpName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">
                Enter CropType</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label4" runat="server" Text="Enter Crop Price"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCrpPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                    Text="Submit" />
            </td>
            <td>
                <asp:Button ID="btnback" runat="server" onclick="btnback_Click" 
                    Text="Back" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

