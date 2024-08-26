<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="StudentQuery.aspx.cs" Inherits="VillagersQuery" Title="Untitled Page" %>


   
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <%--<asp:UpdatePanel id="UpdatePanel2" runat="server">
            <contenttemplate>--%>
<TABLE><TBODY><TR><TD style="HEIGHT: 59px" colSpan=2><asp:ValidationSummary id="ValidationSummary1" runat="server"></asp:ValidationSummary> </TD></TR><TR><TD style="WIDTH: 100px" align=left><asp:CheckBox id="Chkcrops" runat="server" OnCheckedChanged="Chkcrops_CheckedChanged" AutoPostBack="True" Text="Crops"></asp:CheckBox></TD><TD style="WIDTH: 100px"><asp:RequiredFieldValidator id="RfCrops" runat="server" Visible="False" InitialValue="Select Crops.." ErrorMessage="Please Selected Crops" ControlToValidate="Ddlcrops">*</asp:RequiredFieldValidator> <asp:DropDownList id="Ddlcrops" runat="server" Visible="False">
                    </asp:DropDownList> <ajaxcontrolToolkit:dropdownextender id="DropDownExtender1" runat="server" targetcontrolid="Ddlcrops"></ajaxcontrolToolkit:dropdownextender> </TD></TR><TR><TD style="WIDTH: 100px; HEIGHT: 22px" align=left><asp:CheckBox id="Chkferti" runat="server" OnCheckedChanged="Chkferti_CheckedChanged" AutoPostBack="True" Text="Fertlizers"></asp:CheckBox></TD><TD style="WIDTH: 100px; HEIGHT: 22px"><asp:RequiredFieldValidator id="RfFert" runat="server" Visible="False" InitialValue="Select Fertilizers.." ErrorMessage="Selected Fertlisers" ControlToValidate="DDlfertilizers">*</asp:RequiredFieldValidator> <asp:DropDownList id="DDlfertilizers" runat="server" Visible="False">
                    </asp:DropDownList> <ajaxcontrolToolkit:dropdownextender id="DropDownExtender2" runat="server" targetcontrolid="DDlfertilizers"></ajaxcontrolToolkit:dropdownextender> </TD></TR><TR><TD style="WIDTH: 100px" align=left><asp:CheckBox id="Chktopics" runat="server" OnCheckedChanged="Chktopics_CheckedChanged" AutoPostBack="True" Text="Topics"></asp:CheckBox></TD><TD style="WIDTH: 100px"><asp:RequiredFieldValidator id="Rftopics" runat="server" Visible="False" InitialValue="Select Topics.." ErrorMessage="Selected Topics" ControlToValidate="Ddltopics">*</asp:RequiredFieldValidator> <asp:DropDownList id="Ddltopics" runat="server" Visible="False">
                    </asp:DropDownList> <ajaxcontrolToolkit:dropdownextender id="DropDownExtender3" runat="server" targetcontrolid="Ddltopics"></ajaxcontrolToolkit:dropdownextender> </TD></TR><TR><TD style="WIDTH: 100px" align=left><asp:CheckBox id="Chkclimate" runat="server" OnCheckedChanged="Chkclimate_CheckedChanged" AutoPostBack="True" Text="Climate"></asp:CheckBox></TD><TD style="WIDTH: 100px"><asp:RequiredFieldValidator id="Rfclimate" runat="server" Visible="false" InitialValue="Select Climate.." ErrorMessage="Selected Climate" ControlToValidate="Ddlclimate">*</asp:RequiredFieldValidator> <asp:DropDownList id="Ddlclimate" runat="server" Visible="False">
                    </asp:DropDownList> <ajaxcontrolToolkit:dropdownextender id="DropDownExtender4" runat="server" targetcontrolid="Ddlclimate"></ajaxcontrolToolkit:dropdownextender> </TD></TR><TR><TD style="WIDTH: 100px" align=center colSpan=2><asp:TextBox id="TxtEnter" runat="server" Width="330px" TextMode="MultiLine" Rows="5"></asp:TextBox></TD></TR><TR><TD align=center colSpan=2>
    <asp:Button id="Btnsubmit" onclick="Btnsubmit_Click" runat="server" 
        Text="Submit"></asp:Button></TD></TR><TR><TD align=center colSpan=2>
                    <asp:GridView id="GrdAnswer" runat="server" BorderStyle="None" BackColor="White" BorderColor="#CC9966" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False">
                 <Columns >
                 <asp:TemplateField HeaderText="PostedBy" >
                 <ItemTemplate >
                 <asp:Label ID="Uid" runat="server" Text='<%#Eval("User_Name") %>'></asp:Label>
                 </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Question" >
                 <ItemTemplate >
                 <asp:Label ID="UQues" runat="server" Text='<%#Eval("Query_Desc") %>'></asp:Label>
                 </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Answer" >
                 <ItemTemplate >
                 <asp:Label ID="Uans" runat="server" Text='<%#Eval("Query_Answer") %>'></asp:Label>
                 </ItemTemplate>
                 </asp:TemplateField>
                 </Columns>   
<FooterStyle BackColor="#FFFFCC" ForeColor="#330099"></FooterStyle>

<RowStyle BackColor="White" ForeColor="#330099"></RowStyle>

<PagerStyle HorizontalAlign="Center" BackColor="#FFFFCC" ForeColor="#330099"></PagerStyle>

<SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399"></SelectedRowStyle>

<HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC"></HeaderStyle>
</asp:GridView></TD></TR></TBODY></TABLE>
<%--</contenttemplate>
        </asp:UpdatePanel>--%>
    </center>
</asp:Content>
