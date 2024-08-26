<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="General User.aspx.cs" Inherits="General_User" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 72%">
        <tr>
            <td align="center">
            <asp:HyperLink ID="hlViewSchedule" runat="server" Text="View Schedules" NavigateUrl="~/ViewSchedulers.aspx" style="z-index: 100; left: 14px; top: 171px" Width="133px"></asp:HyperLink>
            
            </td>
        </tr>
        <tr>
            <td align="center">
            <asp:HyperLink ID="hlViewEventSchedules" runat="server" Text="View Event Schedules" NavigateUrl ="~/ViewEventsSchedules.aspx">
            </asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td align="center">
            <asp:HyperLink ID="hlkViewCroDtls" runat="server" Text="View Crop Details" 
                NavigateUrl="~/ViewCropDetiles.aspx"></asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

