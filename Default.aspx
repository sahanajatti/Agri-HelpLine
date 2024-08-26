<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align: center">
    <table style="width:100%">
    
    <tr>
    <td>
       <marquee direction="right"p>
       <img src="Images/f1.jpeg" />
       <img src="Images/f2.jpeg" />
       <img src="Images/f4.jpeg" />
       <img src="Images/f5.jpeg" />
       <img src="Images/f6.jpeg" />
       
       </marquee> 
    </td>
    <td>
    </td>
    
    </tr>
    
    </table>
        <table style="width: 512px">
       
            <caption>
                <span style="font-size: 16pt; color: #ff6666"><strong>Welcome To ADMINISTRATION</strong></span></caption>
            
            <tr>
            
                <td style="width: 176px" align="left">
                </td>
                <td style="width: 206px" align="left">
                </td>
            </tr>
            <tr>
                <td style="width: 176px" align="left">
                    <asp:LinkButton ID="LnkEvents" runat="server" OnClick="LnkEvents_Click" 
                        ForeColor="Black">Create Events</asp:LinkButton></td>
                <td style="width: 206px" align="left">
                    <asp:HyperLink ID="hlCreateEventsFiles" ForeColor="Black" runat="server" Text="Create Events Files"
                        NavigateUrl="~/CreateEvents_Files.aspx">
                    </asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="width: 176px" align="left">
                    <asp:LinkButton ID="LnkFer" runat="server" Width="215px" OnClick="LnkFer_Click" 
                        ForeColor="Black">Create Fertlisers</asp:LinkButton></td>
                <td style="width: 206px" align="left">
                    <asp:HyperLink ID="hlCreateEventsTopics" ForeColor="Black" runat="server" Text="Create Events Topics"
                        NavigateUrl="~/CreateEvents_Topics.aspx">
                    </asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="width: 176px" align="left" >
                    <asp:LinkButton ID="LnkFile" ForeColor="Black" runat="server" OnClick="LnkFile_Click">Create Files</asp:LinkButton></td>
                <td style="width: 206px" align="left">
                    <asp:LinkButton ID="Lnkrole" runat="server" ForeColor="Black" OnClick="Lnkrole_Click">Create UserRole</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="width: 176px" align="left">
                    <asp:LinkButton ID="LnkProfe" runat="server" ForeColor="Black" Width="125px" OnClick="LnkProfe_Click">Create Profession</asp:LinkButton></td>
                <td style="width: 206px" align="left">
                    <asp:LinkButton ID="LnkEditUsr" runat="server" ForeColor="Black" 
                        OnClick="LnkEditUsr_Click">Edit Profile</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="width: 176px" align="left">
                    <asp:HyperLink ID="hlReplyQuery" runat="server" ForeColor="Black" Text="Reply Query" NavigateUrl="~/replyQuery.aspx">
                    </asp:HyperLink>
                </td>
                <td style="width: 206px" align="left">
                    <%--<asp:HyperLink ID="hlCreateCrops" runat="server" ForeColor="Black" Text="Create Crops" NavigateUrl="~/CreateCrops.aspx">
                    </asp:HyperLink>--%>
                    <asp:LinkButton ID="Lnkeditevents" ForeColor="Black" runat="server" OnClick="Lnkeditevents_Click">Edit Events</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="width: 176px; height: 24px;" align="left">
                    <asp:HyperLink ID="hlEventUsers" ForeColor="Black" runat="server" Text="Event Users" NavigateUrl="~/events_Users.aspx">
                    </asp:HyperLink>
                </td>
                <td style="width: 206px; height: 24px;" align="left">
                <asp:HyperLink ID="hpchange" Text="Change Password" runat="server" 
                        NavigateUrl="~/changepassword.aspx" ForeColor="Black"></asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="width: 206px" align="left">
                    <asp:HyperLink ID="hlEditFertlisers" ForeColor="Black" runat="server" Text="Edit Fertlisers" NavigateUrl="~/EditFertilisers.aspx">
                    </asp:HyperLink>
                </td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 206px" align="left">
                <asp:HyperLink ID="hlkCropdtls" Text="Enter Crop Details" runat="server" 
                        NavigateUrl="~/EditCropDetiles.aspx" ForeColor="Black"></asp:HyperLink>
                </td>
                <td align="left">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
