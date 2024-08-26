<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="professorshome.aspx.cs" Inherits="professorshome" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="1000px">
    <tr>
        <td align="center">
            <asp:HyperLink ID="hlTopics" ForeColor="Black" runat="server" Text="Create Topics" NavigateUrl="~/createtropic1.aspx">
            </asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:HyperLink ID="hlCreateProfession" ForeColor="Black" runat="server" Text="Create Profession" NavigateUrl="~/createprofession1.aspx">
            </asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:HyperLink ID="hlcreateRelatedclimate" ForeColor="Black" runat="server" Text="Create Related Climate" NavigateUrl="~/CreateRealateClimate.aspx">
            </asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td align="center" style="height: 23px">
            <asp:HyperLink ID="hlcreaterelatedCrop" ForeColor="Black" runat="server" Text="Create Related Crop" NavigateUrl="~/CreateRelatedCrop.aspx">
            </asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td align="center" style="height: 23px">
            <asp:HyperLink ID="HyperLink1" runat="server" Text="Update soilAnalysis Report"  NavigateUrl="~/soilreport.aspx">
            </asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td align="center" style="height: 23px">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ReplyQuery.aspx">Reply Query</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:HyperLink ID="hlCreaterelatedFertiliser" ForeColor="Black" runat="server" Text="Create Related Fertiliser" NavigateUrl="~/CreateRelatedFertiliser.aspx">
            </asp:HyperLink>
        </td>
    </tr>
   
    <tr>
        <td align="center">
            <asp:HyperLink ID="hlkEditUsr" runat="server" 
                NavigateUrl="~/UpdatePorfile.aspx" ForeColor="Black">Edit Profile</asp:HyperLink>
        </td>
    </tr>
   
    <tr>
        <td align="center" style="height: 23px">
            <asp:HyperLink ID="hlkchgpwd" runat="server" 
                NavigateUrl="~/changepassword.aspx" ForeColor="Black">Change Password</asp:HyperLink>
        </td>
    </tr>
   
</table>
</asp:Content>

