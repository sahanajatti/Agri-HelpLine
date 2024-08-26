<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="EditFertilisers.aspx.cs" Inherits="EditFertilisers" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center">
        <tr>
            <td align="center">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <contenttemplate>
<asp:GridView id="GrdFertil" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnRowDeleting="GrdFertil_RowDeleting" OnRowEditing="GrdFertil_RowEditing" OnRowUpdating="GrdFertil_RowUpdating" OnRowCancelingEdit="GrdFertil_RowCancelingEdit">
                    <Columns>
                        <asp:TemplateField HeaderText="Fertiliser Id">
                            <ItemTemplate>
                                <asp:Label ID="lblFerID" runat="server" Text='<%#Eval("Fertilizer_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fertiliser Name">
                            <ItemTemplate>
                                <asp:Label ID="lblFerName" runat="server" Text='<%#Eval("Fertilizer")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate >
                           <asp:RegularExpressionValidator runat="server"  ValidationExpression="^[a-zA-Z0-9\s]+$"  ErrorMessage="Enter Numerics & Strings only" ControlToValidate="TxtFername" Text="*"  ></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter FertilizerName" Text="*" ControlToValidate="TxtFername"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtFername" runat="server" Text='<%#Eval("Fertilizer")%>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:CommandField ButtonType="Image" EditImageUrl="~/Images/Ed1.bmp"  UpdateImageUrl="~/Images/up1.jpg"
                        CancelImageUrl="~/Images/can1.jpg" DeleteImageUrl="~/Images/del3.jpg" ShowEditButton="true"  ShowDeleteButton="true"    />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                </asp:GridView> <asp:ValidationSummary id="ValidationSummary1" runat="server"></asp:ValidationSummary> 
</contenttemplate>
                </asp:UpdatePanel><asp:Button ID="Btnhome" runat="server" OnClick="Btnhome_Click"
                    Text="Home" />
            </td>
            <td>
            <asp:HyperLink ID="Hypback" runat="server" Text="BACK" NavigateUrl="~/Default.aspx"></asp:HyperLink>
            </td>
        </tr>
    </table>
    
</asp:Content>

