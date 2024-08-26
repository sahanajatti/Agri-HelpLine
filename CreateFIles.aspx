<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateFIles.aspx.cs" Inherits="FIles" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<div style="text-align: center">
        <table>
            <tr>
                <td colspan="3">
                    &nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#C04000" 
                        Text="File Name"></asp:Label></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Select File Type" ControlToValidate="TextBox1" 
                        InitialValue="Select File Type">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#C04000" Text="File Path"></asp:Label></td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
<asp:FileUpload runat="server" ID="FUL" /></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#C04000" Text="User Name"></asp:Label></td>
                <td style="width: 100px">
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DDlUserName"
                        ErrorMessage="Select User Name" InitialValue="Select User Name">*</asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DDlUserName" runat="server">
                       
                        
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
    <asp:Button ID="Btnsubmit" runat="server" OnClick="Btnsubmit_Click" Text="Submit" 
                        style="height: 26px" /></td>
            
            <td style="margin-left: 40px">
            <asp:HyperLink ID="Hypback" runat="server" Text="BACK" NavigateUrl="~/Default.aspx"></asp:HyperLink>
            </td>
            
            </tr>
            
            
        </table>
    </div>
</asp:Content>

