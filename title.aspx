<%@ Page Language="C#" AutoEventWireup="true" CodeFile="title.aspx.cs" Inherits="title" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 24%;
        }
        .style2
        {
            width: 24%;
            height: 191px;
        }
        .style3
        {
            width: 50%;
            height: 191px;
        }
        .style4
        {
            height: 191px;
        }
    </style>
</head>
<body bgcolor="teal">
    <form id="form1" runat="server">
    <div>
    <table style="width:100%">
    <tr>
    <td class="style1">
                        <img src="Images/agrihelpline.jpg" style="width: 971px; height: 123px" />
    </td>
    
    </tr>
    <tr style="width:100%">
    <td class="style2">
        <img src="Images/f1.jpeg" style="width: 337px; height: 183px" />
    <img src="Images/f6.jpeg" style="height: 179px; width: 339px" /><img 
            src="Images/f7.jpeg" style="width: 242px" /></td>
    <td class="style3">
                    </td>
    <td class="style4">
                    </td>
    </tr>
    <tr>
    <td>
    <asp:Menu ID="menulogin" runat="server" Orientation="Horizontal">
        <Items>
            <asp:MenuItem Text="LOGIN||" Value="admin" NavigateUrl="~/Login.aspx"></asp:MenuItem>
        </Items>
        </asp:Menu>
    
    &nbsp;</td>
    
    <td>
            <asp:HyperLink ID="hlkGenUsr" runat="server" 
                NavigateUrl="~/General User.aspx">General User</asp:HyperLink>
    
    </td>
    
    </tr>
    <tr>
    <td colspan="2" style="color: Black; font-size: large"> 
   <i> WELCOME TO THE SITE OF AGRI HELP LINE. THIS APPLICATION DEALS WITH ALL YOUR AGRICULTURE ACTIVITIES, NOW YOU CAN HELP YOUR FARMERS
    AS WEL AS AGRICULTURE STUDENTS. 
    PLEASE LOGIN TO YOUR ACCOUNTS TO USE THE APPLICATION.</i>
    
    </td>
    
    </tr>
    <tr>
    <td>
    <marquee direction="right">
    <img src="Images/f1.jpeg" />
    <img src="Images/f2.jpeg" />
    <img src="Images/f6.jpeg" />
    <img src="Images/f9.jpeg" />
    <img src="Images/f7.jpeg" />
    <img src="Images/f7.jpeg" />
    <img src="Images/f5.jpeg" />
    <img src="Images/f9.jpeg" />
    </marquee>
    </td>
    
    </tr>
    <tr>
    <td bgcolor="#0066FF" style="color: #000000">
    <marquee direction="left">
    <B>WELCOME TO AGRI HELP LINE</B>
    </marquee>
    </td>
    </tr>
    
    </table>
    
    </div>
    </form>
</body>
</html>
