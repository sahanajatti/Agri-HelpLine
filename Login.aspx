<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table>
            <caption>
                <span style="font-size: 16pt; color: #9966ff"><strong>Login Page</strong></span></caption>
            <tr>
            <td>
                <img src="Images/farmers.jpeg" />
            
            </td>
                <td colspan="3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="width: 100px" align="right">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Blue" Text="User Name"></asp:Label></td>
                
                <td style="width: 100px">
                    <asp:TextBox ID="TxtUname" runat="server"></asp:TextBox></td>
                    <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RfUname" runat="server" ControlToValidate="TxtUname"
                        ErrorMessage="Enter User Name">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px;" align="right">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Blue" Text="Password"></asp:Label></td>
                
                <td style="width: 100px; height: 26px;">
                    <asp:TextBox ID="Txtpassword" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td style="width: 100px; height: 26px;">
                    <asp:RequiredFieldValidator ID="Rfpassword" runat="server" ControlToValidate="Txtpassword"
                        ErrorMessage="Enter Password">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="height: 26px;" colspan="3">
                    <asp:Label ID="LblError" runat="server" Font-Bold="True" ForeColor="Red" Width="186px"></asp:Label>
                    <asp:Button ID="Btnsubmit" runat="server" Text="Login" OnClick="Btnsubmit_Click" />
                    <asp:Button ID="Btnregister" runat="server" OnClick="Btnregister_Click" Text="Register" CausesValidation="False" /></td>
                    <asp:HyperLink ID="backhyp" runat="server" Text="Home" NavigateUrl="~/title.aspx"></asp:HyperLink>
            </tr>
           
        </table>
        <table style="width:100%">
         <tr>
            <td col="2">
            
            <marquee direction="right">
            <img src="Images/f1.jpeg" />
            <img src="Images/f2.jpeg" />
            <img src="Images/f9.jpeg" />
            <img src="Images/f4.jpeg" />
            <img src="Images/f5.jpeg" />
            <img src="Images/f6.jpeg" />
            <img src="Images/f7.jpeg" />
            
            </marquee>
            
            </td>
            
            </tr>
        
        </table>
    </div>
</asp:Content>

