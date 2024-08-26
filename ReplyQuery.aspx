<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ReplyQuery.aspx.cs" Inherits="ViewQuery" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    &nbsp;<div style="text-align: center">
        <table summary="Answer The Query">
            <caption>
                <span style="font-size: 24pt; color: #ff3366"><strong>Answer The Query</strong></span></caption>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GrdQuerys" runat="server" AutoGenerateColumns="False" CellPadding="4"
                        ForeColor="#333333" GridLines="None" OnRowCancelingEdit="GrdQuerys_RowCancelingEdit" OnRowEditing="GrdQuerys_RowEditing" OnRowUpdating="GrdQuerys_RowUpdating" DataKeyNames="Query_id">
                        <Columns>
                        <asp:BoundField DataField="Query_id" Visible="False"   />
                            <asp:BoundField DataField="User_Name" HeaderText="UserName"  ReadOnly="True" />
                            <asp:BoundField DataField="Crop" HeaderText="CropName"  ReadOnly="True"/>
                            <asp:BoundField DataField="Fert" HeaderText="Fretilisers"  ReadOnly="True"/>
                            <asp:BoundField DataField="topic" HeaderText="TopicsHeading"  ReadOnly="True"/>
                            <asp:BoundField DataField="climate" HeaderText="Climate" ReadOnly="True" />
                            <asp:BoundField DataField="Query_Desc" HeaderText="Desc"  ReadOnly="True"/>
                            <asp:BoundField DataField="Query_Answer" HeaderText="Answer" ReadOnly="True" />
                            <asp:TemplateField>
                            <EditItemTemplate >
                            <asp:TextBox ID="txtreply" runat="server" TextMode="MultiLine" Rows="9"   ></asp:TextBox>
                            </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField HeaderText="Reply" ShowEditButton="True"   />
                        </Columns>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
                    <asp:Button ID="Btnhome" runat="server" OnClick="Btnhome_Click" Text="Home" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
