<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="EditEvents.aspx.cs" Inherits="EditEvents" Title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    &nbsp;<table align="center">
        <tr>
            <td align="center">
                <asp:UpdatePanel id="UpdatePanel2" runat="server">
                    <contenttemplate>
                <asp:GridView ID="GrdEvents" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    OnRowDeleting="GrdEvents_RowDeleting" OnRowEditing="GrdEvents_RowEditing" OnRowUpdating="GrdEvents_RowUpdating"
                    OnRowCancelingEdit="GrdEvents_RowCancelingEdit" ForeColor="#333333" GridLines="None"
                    OnRowDataBound="GrdEvents_RowDataBound">
                    <Columns>
                       
                        <asp:TemplateField  Visible="false" >
                        <ItemTemplate >
                         <asp:Label ID="LblEveId" runat="server" Text='<%#Eval("Event_Id") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Start Date">
                            <ItemTemplate>
                                <asp:Label ID="lblStartdate" runat="server" Text='<%#Eval("Start_Date") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="Txtsdate" runat="server" Text='<%#Eval("Start_Date")%>'></asp:TextBox>
                                <ajaxcontrolToolkit:CalendarExtender ID="CalendarStartDate" runat="server" TargetControlID="Txtsdate">
                                </ajaxcontrolToolkit:CalendarExtender>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="End Date">
                            <ItemTemplate>
                                <asp:Label ID="lblEnddate" runat="server" Text='<%#Eval("End_Date")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                
                                <asp:TextBox ID="TxtEnddate" runat="server" Text='<%#Eval("End_Date")%>'></asp:TextBox>
                                <ajaxcontrolToolkit:CalendarExtender ID="CalendarEnddate" runat="server" TargetControlID="TxtEnddate">
                                </ajaxcontrolToolkit:CalendarExtender>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Location">
                            <ItemTemplate>
                                <asp:Label ID="lblPlace" runat="server" Text='<%#Eval("Place") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TxtPlace" runat="server" Text='<%#Eval("Place")%>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Heading">
                            <ItemTemplate>
                                <asp:Label ID="Lblheading" runat="server" Text='<%#Eval("Event_Heading") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TxtHeading" runat="server" Text='<%#Eval("Event_Heading")%>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <asp:Label ID="Lbldesc" runat="server" Text='<%#Eval("Event_Description") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TxtDesc" runat="server" Text='<%#Eval("Event_Description")%>'></asp:TextBox>
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

    <script language="javascript" type="text/javascript">
function ConfirmDelete()
{
if(confirm("Are you sure to Delete?"))
return true;
else
return false;
}
    </script>

    <asp:Button ID="Btnhome" runat="server" OnClick="Btnhome_Click" Text="Home" />

</asp:Content>
