<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width:100%">

<tr>
<td colspan="2">
<table style="width:100%">
<tr>
<td align="right">
<asp:Label ID="lblold" Text="Old Password" runat="server"></asp:Label>




</td>
<td>
<asp:TextBox ID="oldtxt" runat="server" TextMode="Password"></asp:TextBox>

</td>


</tr>
<tr>
<td align="right">
<asp:Label ID="newlbl" Text="New Password" runat="server"></asp:Label>

</td>
<td>
<asp:TextBox ID="newtxt" runat="server" TextMode="SingleLine"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right">
<asp:Label ID="confirmlbl" runat="server" Text="Confirm Password"></asp:Label>



</td>
<td>
<asp:TextBox ID="confirmtxt" runat="server" TextMode="SingleLine"></asp:TextBox>

</td>


</tr>
<tr>
<td align="right">
<asp:Button ID="subbtn" runat="server" Text="Submit" onclick="subbtn_Click" />

</td>
<td>
<asp:Button ID="Backbtn" runat="server" Text="Back" onclick="Backbtn_Click"  />

</td>

</tr>


</tr>


</table>




</td>


</tr>

</table>



</asp:Content>

