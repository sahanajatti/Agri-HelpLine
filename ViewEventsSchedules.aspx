<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ViewEventsSchedules.aspx.cs" Inherits="ViewEventsSchedules" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center">
        <tr>
            <td style="width: 160px">
                <asp:GridView ID="GrdViewEventsSchedule" runat="server" BackColor="White" BorderColor="#3366CC"
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    AutoGenerateColumns="False" Width="253%" 
                    style="margin-right: 2px" onrowcommand="GrdViewEventsSchedule_RowCommand" 
                    
                    AutoGenerateSelectButton="True" 
                    onselectedindexchanging="GrdViewEventsSchedule_SelectedIndexChanging1" 
                    >
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <Columns>
                      <asp:BoundField DataField="User_Name" HeaderText="UserName" />
                        <asp:BoundField DataField="Start_Date" HeaderText="StartDate" />
                        <asp:BoundField DataField="End_Date" HeaderText="EndDate" />
                        <asp:BoundField DataField="Place" HeaderText="Location" />
                        <asp:BoundField DataField="Event_Heading" HeaderText="EventTitle" />
                        <asp:BoundField DataField="Event_Description" HeaderText="Descrption" />                             
                         <asp:BoundField DataField ="file_path" HeaderText ="File Path" />
                         <asp:TemplateField Visible="False">
                         <ItemTemplate>
                         <asp:Button ID="btnSelect" runat ="server" Text ="Download" CommandName="Download" CommandArgument='<%#Eval("file_path") %>' />
                         </ItemTemplate>
                         </asp:TemplateField>
                     </Columns>
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:LinkButton ID="lnkBACK1" runat="server" onclick="lnkBACK1_Click" >BACK</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td style="width: 160px">
            </td>
        </tr>
    </table>
</asp:Content>
