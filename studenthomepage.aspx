<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="studenthomepage.aspx.cs" Inherits="studenthomepage" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<table width="1000px">
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
            <asp:HyperLink ID="hlkQuery" runat="server" 
                NavigateUrl="~/StudentQuery.aspx">Student Queries</asp:HyperLink>
        </td>
    </tr>
    
   <tr>     
        <td align="center">
            <asp:HyperLink ID="hlVillagequery0" runat="server" Text="View  Query" 
                NavigateUrl="~/ViewQueries.aspx"></asp:HyperLink>
        </td>
    </tr>
    
   <tr>     
        <td align="center">
            <asp:HyperLink ID="hlkUpdate" runat="server" 
                NavigateUrl="~/UpdatePorfile.aspx">Edit Profile</asp:HyperLink>
        </td>
    </tr>
    
   <tr>     
        <td align="center">
            <asp:HyperLink ID="hlkchgpwd" runat="server" 
                NavigateUrl="~/changepassword.aspx">Change Password</asp:HyperLink>
        </td>
    </tr>
    
</table>
</asp:Content>

