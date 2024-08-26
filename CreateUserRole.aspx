<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CreateUserRole.aspx.cs" Inherits="_Default" Title="Untitled Page" %>


   
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="asdas" runat="server">
    <center>
        <table>
            <tr>
                <td style="height: 237px">
                    
                    <table>
                        <tbody>
                            <tr>
                                <td style="width: 93px">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="ActiveCaption"
                                        Text="UserName"></asp:Label></td>
                                <td style="width: 93px">
                                    <asp:RequiredFieldValidator ID="RqName" runat="server" ErrorMessage="Please Enter The UserName"
                                        ControlToValidate="DdlUserName" InitialValue="Select User..">*</asp:RequiredFieldValidator></td>
                                <td style="width: 100px">
                                    <asp:DropDownList ID="DdlUserName" runat="server">
                                    </asp:DropDownList>
                                    <ajaxcontrolToolkit:DropDownExtender ID="DropDownExtender1" runat="server" TargetControlID="DdlUserName">
                                    </ajaxcontrolToolkit:DropDownExtender>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 93px">
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="ActiveCaption"
                                        Text="Role"></asp:Label></td>
                                <td style="width: 93px">
                                    <asp:RequiredFieldValidator ID="RqRole" runat="server" ErrorMessage="Please Select The User Role"
                                        ControlToValidate="DdlRoles" InitialValue="Select">*</asp:RequiredFieldValidator></td>
                                <td style="width: 100px">
                                    <asp:DropDownList ID="DdlRoles" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>Student</asp:ListItem>
                                        <asp:ListItem>Professor</asp:ListItem>
                                        <asp:ListItem>Admin</asp:ListItem>
                                         <asp:ListItem>Farmer</asp:ListItem>
                                    </asp:DropDownList>
                                    <ajaxcontrolToolkit:DropDownExtender ID="DropDownExtender2" runat="server" TargetControlID="DdlRoles">
                                    </ajaxcontrolToolkit:DropDownExtender>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 83px" colspan="3">
                                    <asp:HiddenField ID="HidAction" runat="server" Value="I"></asp:HiddenField>
                                    <asp:Button ID="BtnSubmit" OnClick="BtnSubmit_Click" runat="server" Text="Insert UserRole"></asp:Button>
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server"></asp:ValidationSummary>
                                    
            <asp:HyperLink ID="Hypback" runat="server" Text="BACK" NavigateUrl="~/Default.aspx"></asp:HyperLink>
            </td>
                            </tr>
                        </tbody>
                    </table>
                    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GrdUser" runat="server" OnRowCancelingEdit="GrdUser_RowCancelingEdit"
                        OnRowUpdating="GrdUser_RowUpdating" OnRowEditing="GrdUser_RowEditing" OnRowDeleting="GrdUser_RowDeleting"
                        AutoGenerateColumns="false" OnRowDataBound="GrdUser_RowDataBound">
                        <Columns>
                            <asp:BoundField DataField="User_Id" Visible="false" />
                            <asp:TemplateField Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="LblUid" Text='<%#Eval("User_Id") %>' runat="server"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="UserName">
                                <ItemTemplate>
                                    <asp:Label ID="LblUName" Text='<%#Eval("User_Name") %>' runat="server"></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle ForeColor="RoyalBlue" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="UserRole">
                                <ItemTemplate>
                                    <asp:Label ID="LblUserRole" Text='<%#Eval("User_Role") %>' runat="server"></asp:Label>&nbsp&nbsp
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DdlRoles1" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>Student</asp:ListItem>
                                        <asp:ListItem>Professor</asp:ListItem>
                                        <asp:ListItem>Admin</asp:ListItem>
                                        <asp:ListItem>Farmer</asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <HeaderStyle ForeColor="RoyalBlue" />
                            </asp:TemplateField>
                            <asp:CommandField CausesValidation="false" ButtonType="Image" EditImageUrl="~/Images/Ed1.bmp"
                                UpdateImageUrl="~/Images/up1.jpg" CancelImageUrl="~/Images/can1.jpg" ShowEditButton="true"
                                ShowDeleteButton="true" DeleteImageUrl="~/Images/del3.jpg" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
