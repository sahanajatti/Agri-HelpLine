<%@ Page Language="C#" AutoEventWireup="true" CodeFile="soilreport.aspx.cs" Inherits="soilreport" MasterPageFile="~/MasterPage.master" %>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                <center>
                    <table style="width:100%;">
                        <tr>
                            <td style="width: 151px">
                                <asp:Label ID="Label2" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td style="width: 132px">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td style="width: 287px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 151px">
                                <asp:Label ID="Label3" runat="server" Text="Soil Type"></asp:Label>
                            </td>
                            <td style="width: 132px">
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                    <asp:ListItem>Laterite</asp:ListItem>
                                    <asp:ListItem>Sandy</asp:ListItem>
                                    <asp:ListItem>Black</asp:ListItem>
                                    <asp:ListItem>Red</asp:ListItem>
                                    <asp:ListItem>Clay</asp:ListItem>
                                    <asp:ListItem>Lommy</asp:ListItem>
                                    <asp:ListItem>Bandy Lommi</asp:ListItem>
                                    <asp:ListItem>Aluvial</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width: 287px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 151px">
                                <asp:Label ID="Label4" runat="server" Text="Remarks"></asp:Label>
                            </td>
                            <td style="width: 132px">
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td style="width: 287px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 151px">
                                &nbsp;</td>
                            <td style="width: 132px">
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                            </td>
                            <td style="width: 287px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 151px">
                                &nbsp;</td>
                            <td style="width: 132px">
                                &nbsp;</td>
                            <td style="width: 287px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 151px">
                                &nbsp;</td>
                            <td style="width: 132px">
                                &nbsp;</td>
                            <td style="width: 287px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 151px">
                                &nbsp;</td>
                            <td style="width: 132px">
                                &nbsp;</td>
                            <td style="width: 287px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 151px">
                                &nbsp;</td>
                            <td style="width: 132px">
                                &nbsp;</td>
                            <td style="width: 287px">
                                &nbsp;</td>
                        </tr>
                    </table>
                </center>
            
</asp:Content>
