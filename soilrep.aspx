<%@ Page Language="C#" AutoEventWireup="true" CodeFile="soilrep.aspx.cs" Inherits="soilrep" MasterPageFile="~/MasterPage.master" %>

    <asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<table width="1000px">
    
   <tr>     
        <td align="center">
            <asp:GridView ID="GridView1" runat="server" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
        </td>
    </tr>
    </table>
    

                
</asp:Content>
