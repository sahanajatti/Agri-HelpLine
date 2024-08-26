<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewSchedulers.aspx.cs" Inherits="ViewSchedulers" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table>
            <caption>
                <strong><span style="font-size: 24pt; color: #ff3300">View Events</span></strong></caption>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GrdViewEvents" runat="server" BackColor="White" BorderColor="#E7E7FF"
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AutoGenerateColumns="false" OnRowCommand="GrdViewEvents_RowCommand1"  >
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C"   />
                        <Columns >
                          <asp:BoundField DataField="SerialNo" HeaderText="Sno" />
                        <asp:BoundField DataField="Event_Heading" HeaderText="EventHeading" />
                        <asp:BoundField DataField="Start_Date" HeaderText="StartDate" />
                        <asp:TemplateField HeaderText="View">
                        <ItemTemplate >
                       
                        <asp:LinkButton ID="View" runat="server" Text="View" CommandName="ViewEvents" OnClientClick="window.open('ViewEventsSchedules.aspx','mywindow','menubar=false,resizable=false,width=800,height=450')"  ></asp:LinkButton>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        </Columns>
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                    </asp:GridView>
                    
                </td>
                <td>
                    <asp:LinkButton ID="lnkback" runat="server" onclick="lnkback_Click">BACK</asp:LinkButton>
            </td>
            </tr>
        </table>
    </div>
</asp:Content>

