<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="EditTopics.aspx.cs" Inherits="EditTopics" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center">
        <tr>
            <td align="center">
                <asp:UpdatePanel id="UpdatePanel2" runat="server">
                    <contenttemplate>
                <asp:GridView ID="grdTopics" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    ForeColor="#333333" GridLines="None" OnRowDataBound="grdTopics_RowDataBound"
                    OnRowCancelingEdit="grdTopics_RowCancelingEdit" OnRowDeleting="grdTopics_RowDeleting"
                    OnRowEditing="grdTopics_RowEditing" OnRowUpdating="grdTopics_RowUpdating">
                    <Columns>
                        <asp:TemplateField Visible="false" ItemStyle-Font-Overline="true">
                            <ItemTemplate>
                                <asp:Label ID="LbltopicId" runat="server" Text='<%#Eval("Topic_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Heading">
                            <ItemTemplate>
                                <asp:Label ID="LblHeading" runat="server" Text='<%#Eval("Heading") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TxtHeading" runat="server" Text='<%#Eval("Heading")%>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="TopicType">
                            <ItemTemplate>
                                <asp:Label ID="LblTopicType" runat="server" Text='<%#Eval("Topic_Type") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                             <asp:DropDownList ID="DdlTopicType" runat="server">
                             <asp:ListItem>Crop alteration</asp:ListItem>
                        <asp:ListItem>Livestock</asp:ListItem>
                        <asp:ListItem>Lunar Farming</asp:ListItem>
                        <asp:ListItem>Biodiversity</asp:ListItem>
                                </asp:DropDownList>
                              </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Descrption">
                            <ItemTemplate>
                                <asp:Label ID="LblDesc" runat="server" Text='<%#Eval("Descrption")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="Txtdesc" runat="server" Text='<%#Eval("Descrption")%>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Time">
                            <ItemTemplate>
                                <asp:Label ID="LblTimestamp" runat="server" Text='<%#Eval("Time_Stamp") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="Txttimestamp" runat="server" Text='<%#Eval("Time_Stamp")%>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="UserName">
                            <ItemTemplate>
                                <asp:Label ID="Uname" runat="server" Text='<%#Eval("User_Name") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList ID="DdlUserName" runat="server">
                                </asp:DropDownList>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ButtonType="Image" EditImageUrl="~/Images/Ed1.bmp" UpdateImageUrl="~/Images/up1.jpg"
                            CancelImageUrl="~/Images/can1.jpg" DeleteImageUrl="~/Images/del3.jpg" ShowEditButton="True"
                            ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                    <RowStyle BackColor="#E3EAEB" />
                    <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#666666" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                </contenttemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
</asp:Content>
