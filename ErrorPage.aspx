<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ErrorPage.aspx.cs" Inherits="ErrorPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table id="Table3" cellspacing="0" cellpadding="0" width="60%" border="0">
        <tr>
        
        <td>
            <asp:HyperLink ID="Hypback" runat="server" Text="BACK" NavigateUrl="~/Default.aspx"></asp:HyperLink>
            </td>
            <td class="Bannerbg1" style="width: 100%">
                <asp:Image ID="Image1" runat="server" Height="78px" Width="98px" ImageUrl="~/Images/sorry.jpg"
                    ForeColor="White"></asp:Image><span style="font-size: 36pt; color: #ff0066"><asp:Label
                        ID="Label1" runat="server" BackColor="Silver" Font-Bold="True" Font-Size="Large"
                        ForeColor="Red" Height="84px" Width="679px">SORRY FOR INCONVINECE</asp:Label></span></td>
        </tr>
        
    </table>
    <asp:Label ID="LblErr" runat="server" BackColor="Silver" Font-Bold="True" Font-Size="Medium"
        ForeColor="Red" Height="84px" Width="679px"></asp:Label>
</asp:Content>
