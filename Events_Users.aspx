<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Events_Users.aspx.cs" Inherits="Events_Users" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <div style="text-align: center">
            <table>
                <caption>
                    <strong><span style="font-size: 24pt; color: #ff3333">Events Users<br />
                    <br />
                    </span></strong>
                    <asp:DropDownList ID="ddlEvents" runat="server" Height="16px" 
                       Width="158px">
                    </asp:DropDownList>
                    <br />
                    <br />
                </caption>
                <tr>
                    <td style="width: 100px">
                        <asp:ListBox ID="LiallUSers" runat="server" Height="107px" Width="166px"></asp:ListBox></td>
                    <td style="width: 23px">
                        &nbsp;<asp:Button ID="Btnadd" runat="server" Text=">" Font-Bold="True" OnClick="Btnadd_Click" /><br />
                        <asp:Button ID="Btnremove" runat="server" Font-Bold="True" OnClick="Btnremove_Click"
                            Text="<" /></td>
                    <td style="width: 289px">
                        <asp:ListBox ID="LiEventUsers" runat="server" Height="107px" Width="166px"></asp:ListBox></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="Btninsert" runat="server" Text="Insert" OnClick="Btninsert_Click" /></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

