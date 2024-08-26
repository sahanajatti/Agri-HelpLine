<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserRegister.aspx.cs" Inherits="UserRegister" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" >
        <tr>
            <td colspan="3">
                <asp:Label ID="LblHead" runat="server" BorderColor="#FFC0C0" Font-Bold="True" Font-Size="X-Large"
                    ForeColor="#804000" Text="User Registartion Page"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3" align="center" >
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" Enter The UserName" ControlToValidate="TxtUname">*</asp:RequiredFieldValidator></td>
            <td style="width: 100px">
                <asp:TextBox ID="TxtUname" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 21px;">
                <asp:Label ID="Label2" runat="server" Text="FirstName"></asp:Label></td>
            <td style="width: 100px; height: 21px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" Enter The FirstName" ControlToValidate="TxtFname">*</asp:RequiredFieldValidator></td>
            <td style="width: 100px; height: 21px;">
                <asp:TextBox ID="TxtFname" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 21px;">
                <asp:Label ID="Label3" runat="server" Text="LastName"></asp:Label></td>
            <td style="width: 100px; height: 21px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" Enter The LastName" ControlToValidate="TxtLname">*</asp:RequiredFieldValidator></td>
            <td style="width: 100px; height: 21px;">
                <asp:TextBox ID="TxtLname" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 21px;">
                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label></td>
            <td style="width: 100px; height: 21px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage=" Enter Password" ControlToValidate="TxtPwrd">*</asp:RequiredFieldValidator></td>
            <td style="width: 100px; height: 21px;">
                <asp:TextBox ID="TxtPwrd" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 21px">
                <asp:Label ID="Label12" runat="server" Text="Conform  Password"></asp:Label></td>
            <td style="width: 100px; height: 21px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TxtConformPass"
                    ErrorMessage=" Enter Password">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtPwrd"
                    ControlToValidate="TxtConformPass" ErrorMessage="Password Miss match">*</asp:CompareValidator></td>
            <td style="width: 100px; height: 21px">
                <asp:TextBox ID="TxtConformPass" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
        <td>
                &nbsp;</td>
        <td>
        
        </td>
        <td>
            &nbsp;</td>
        
        
        </tr>
        
        <tr>
            <td style="width: 100px; height: 92px;">
                <asp:Label ID="Label5" runat="server" Text="SecurityQuestion"></asp:Label></td>
            <td style="width: 100px; height: 92px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Select Security Question" ControlToValidate="DdlSecurity" InitialValue="Choose a question ..">*</asp:RequiredFieldValidator></td>
            <td style="width: 100px; height: 92px;"><asp:DropDownList ID="DdlSecurity" runat="server">
                <asp:ListItem>Choose a question ..</asp:ListItem>
                <asp:ListItem>What Is your Library  Card Number</asp:ListItem>
                <asp:ListItem>what was your  first Phone number</asp:ListItem>
                <asp:ListItem>what was Your first teacher's name</asp:ListItem>
            </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label6" runat="server" Text="SecurityAnswer"></asp:Label></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Answer" ControlToValidate="TxtSecAns">*</asp:RequiredFieldValidator></td>
            <td style="width: 100px">
                <asp:TextBox ID="TxtSecAns" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 21px;">
                <asp:Label ID="Label8" runat="server" Text="Location"></asp:Label></td>
            <td style="width: 100px; height: 21px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Location" ControlToValidate="TxtLocation">*</asp:RequiredFieldValidator></td>
            <td style="width: 100px; height: 21px;">
                <asp:TextBox ID="TxtLocation" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label9" runat="server" Text="State"></asp:Label></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Select State" ControlToValidate="TxtStates">*</asp:RequiredFieldValidator></td>
            <td style="width: 100px">
                
                <asp:TextBox ID="TxtStates" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label10" runat="server" Text="Country"></asp:Label></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Select Country" ControlToValidate="DdlCountry" InitialValue="Select Country">*</asp:RequiredFieldValidator></td>
            <td style="width: 100px">
                <asp:DropDownList ID="DdlCountry" runat="server">
                 <asp:ListItem Value="Select Country" Selected="true">Select Country</asp:ListItem>
                                                                <asp:ListItem Value="Afghanistan">Afghanistan</asp:ListItem>
                                                                <asp:ListItem Value="Alabama">Alabama</asp:ListItem>
                                                                <asp:ListItem Value="Albania">Albania</asp:ListItem>
                                                                <asp:ListItem Value="Algeria">Algeria</asp:ListItem>
                                                                <asp:ListItem Value="American Samoa">American Samoa</asp:ListItem>
                                                                <asp:ListItem Value="Andorra">Andorra</asp:ListItem>
                                                                <asp:ListItem Value="Angola">Angola</asp:ListItem>
                                                                <asp:ListItem Value="Anguilla">Anguilla</asp:ListItem>
                                                                <asp:ListItem Value="Antarctica">Antarctica</asp:ListItem>
                                                                <asp:ListItem Value="Antigua and Barbuda">Antigua and Barbuda</asp:ListItem>
                                                                <asp:ListItem Value="Argentina">Argentina</asp:ListItem>
                                                                <asp:ListItem Value="Armenia">Armenia</asp:ListItem>
                                                                <asp:ListItem Value="Aruba">Aruba</asp:ListItem>
                                                                <asp:ListItem Value="Australia">Australia</asp:ListItem>
                                                                <asp:ListItem Value="Bahamas">Bahamas</asp:ListItem>
                                                                <asp:ListItem Value="Bahrain">Bahrain</asp:ListItem>
                                                                <asp:ListItem Value="Bangladesh">Bangladesh</asp:ListItem>
                                                                <asp:ListItem Value="Barbados">Barbados</asp:ListItem>
                                                                <asp:ListItem Value="Belarus">Belarus</asp:ListItem>
                                                                <asp:ListItem Value="Belgium">Belgium</asp:ListItem>
                                                                <asp:ListItem Value="Belice">Belice</asp:ListItem>
                                                                <asp:ListItem Value="Benin">Benin</asp:ListItem>
                                                                <asp:ListItem Value="Bermuda">Bermuda</asp:ListItem>
                                                                <asp:ListItem Value="Bhutan">Bhutan</asp:ListItem>
                                                                <asp:ListItem Value="Bolivia">Bolivia</asp:ListItem>
                                                                <asp:ListItem Value="Bosina and Herzegovina">Bosina and Herzegovina</asp:ListItem>
                                                                <asp:ListItem Value="Botswana">Botswana</asp:ListItem>
                                                                <asp:ListItem Value="Bouret Island">Bouret Island</asp:ListItem>
                                                                <asp:ListItem Value="Brazil">Brazil</asp:ListItem>
                                                                <asp:ListItem Value="Brunei">Brunei</asp:ListItem>
                                                                <asp:ListItem Value="Bulgaria">Bulgaria</asp:ListItem>
                                                                <asp:ListItem Value="Burkina Faso">Burkina Faso</asp:ListItem>
                                                                <asp:ListItem Value="Combodia">Combodia</asp:ListItem>
                                                                <asp:ListItem Value="Cameroon">Cameroon</asp:ListItem>
                                                                <asp:ListItem Value="Canada">Canada</asp:ListItem>
                                                                <asp:ListItem Value="Cayman Islands">Cayman Islands</asp:ListItem>
                                                                <asp:ListItem Value="Central African Republic">Central African Republic</asp:ListItem>
                                                                <asp:ListItem Value="Chile">Chile</asp:ListItem>
                                                                <asp:ListItem Value="China">China</asp:ListItem>
                                                                <asp:ListItem Value="Christmas Island">Christmas Island</asp:ListItem>
                                                                <asp:ListItem Value="Cocos Island">Cocos Island</asp:ListItem>
                                                                <asp:ListItem Value="Columbia">Columbia</asp:ListItem>
                                                                <asp:ListItem Value="Congo">Congo</asp:ListItem>
                                                                <asp:ListItem Value="Cook Islands">Cook Islands</asp:ListItem>
                                                                <asp:ListItem Value="Costa Rica">Costa Rica</asp:ListItem>
                                                                <asp:ListItem Value="Cuba">Cuba</asp:ListItem>
                                                                <asp:ListItem Value="Cyprus">Cyprus</asp:ListItem>
                                                                <asp:ListItem Value="Czech Republic">Czech Republic</asp:ListItem>
                                                                <asp:ListItem Value="Denmark">Denmark</asp:ListItem>
                                                                <asp:ListItem Value="Djibouti">Djibouti</asp:ListItem>
                                                                <asp:ListItem Value="Dominica">Dominica</asp:ListItem>
                                                                <asp:ListItem Value="Dominican Republic">Dominican Republic</asp:ListItem>
                                                                <asp:ListItem Value="Ecuador">Ecuador</asp:ListItem>
                                                                <asp:ListItem Value="Egypt">Egypt</asp:ListItem>
                                                                <asp:ListItem Value="El Salvador">El Salvador</asp:ListItem>
                                                                <asp:ListItem Value="Equitorial Guinea">Equitorial Guinea</asp:ListItem>
                                                                <asp:ListItem Value="Eritrea">Eritrea</asp:ListItem>
                                                                <asp:ListItem Value="Estonia">Estonia</asp:ListItem>
                                                                <asp:ListItem Value="Ethiopia">Ethiopia</asp:ListItem>
                                                                <asp:ListItem Value="Falkland Islands">Falkland Islands</asp:ListItem>
                                                                <asp:ListItem Value="Fiji Islands">Fiji Islands</asp:ListItem>
                                                                <asp:ListItem Value="Finland">Finland</asp:ListItem>
                                                                <asp:ListItem Value="France">France</asp:ListItem>
                                                                <asp:ListItem Value="French Guiana">French Guiana</asp:ListItem>
                                                                <asp:ListItem Value="French Ploynesia">French Ploynesia</asp:ListItem>
                                                                <asp:ListItem Value="Gabon">Gabon</asp:ListItem>
                                                                <asp:ListItem Value="Gambia">Gambia</asp:ListItem>
                                                                <asp:ListItem Value="Georgia">Georgia</asp:ListItem>
                                                                <asp:ListItem Value="Germany">Germany</asp:ListItem>
                                                                <asp:ListItem Value="Ghana">Ghana</asp:ListItem>
                                                                <asp:ListItem Value="Gibraltar">Gibraltar</asp:ListItem>
                                                                <asp:ListItem Value="Greece">Greece</asp:ListItem>
                                                                <asp:ListItem Value="Greenland">Greenland</asp:ListItem>
                                                                <asp:ListItem Value="Guinea">Guinea</asp:ListItem>
                                                                <asp:ListItem Value="Guyana">Guyana</asp:ListItem>
                                                                <asp:ListItem Value="Haiti">Haiti</asp:ListItem>
                                                                <asp:ListItem Value="Honduras">Honduras</asp:ListItem>
                                                                <asp:ListItem Value="HongKong">HongKong</asp:ListItem>
                                                                <asp:ListItem Value="Hungary">Hungary</asp:ListItem>
                                                                <asp:ListItem Value="Iceland">Iceland</asp:ListItem>
                                                                <asp:ListItem Value="India">India</asp:ListItem>
                                                                <asp:ListItem Value="Indiana">Indiana</asp:ListItem>
                                                                <asp:ListItem Value="Indonesia">Indonesia</asp:ListItem>
                                                                <asp:ListItem Value="Iran">Iran</asp:ListItem>
                                                                <asp:ListItem Value="Iraq">Iraq</asp:ListItem>
                                                                <asp:ListItem Value="Ireland">Ireland</asp:ListItem>
                                                                <asp:ListItem Value="Israel">Israel</asp:ListItem>
                                                                <asp:ListItem Value="Italy">Italy</asp:ListItem>
                                                                <asp:ListItem Value="Jamaica">Jamaica</asp:ListItem>
                                                                <asp:ListItem Value="Japan">Japan</asp:ListItem>
                                                                <asp:ListItem Value="Jordan">Jordan</asp:ListItem>
                                                                <asp:ListItem Value="Kazakisthan">Kazakisthan</asp:ListItem>
                                                                <asp:ListItem Value="Kenya">Kenya</asp:ListItem>
                                                                <asp:ListItem Value="Kiribati">Kiribati</asp:ListItem>
                                                                <asp:ListItem Value="Korea">Korea</asp:ListItem>
                                                                <asp:ListItem Value="Kuwait">Kuwait</asp:ListItem>
                                                                <asp:ListItem Value="Laos">Laos</asp:ListItem>
                                                                <asp:ListItem Value="Latvia">Latvia</asp:ListItem>
                                                                <asp:ListItem Value="Lebanon">Lebanon</asp:ListItem>
                                                                <asp:ListItem Value="Lesotho">Lesotho</asp:ListItem>
                                                                <asp:ListItem Value="Liberia">Liberia</asp:ListItem>
                                                                <asp:ListItem Value="Libya">Libya</asp:ListItem>
                                                                <asp:ListItem Value="Lithuana">Lithuana</asp:ListItem>
                                                                <asp:ListItem Value="Luxembourg">Luxembourg</asp:ListItem>
                                                                <asp:ListItem Value="MacaoSAR">MacaoSAR</asp:ListItem>
                                                                <asp:ListItem Value="Madagascar">Madagascar</asp:ListItem>
                                                                <asp:ListItem Value="Malawi">Malawi</asp:ListItem>
                                                                <asp:ListItem Value="Malaysia">Malaysia</asp:ListItem>
                                                                <asp:ListItem Value="Maldives">Maldives</asp:ListItem>
                                                                <asp:ListItem Value="Mali">Mali</asp:ListItem>
                                                                <asp:ListItem Value="Malta">Malta</asp:ListItem>
                                                                <asp:ListItem Value="Marshall Islands">Marshall Islands</asp:ListItem>
                                                                <asp:ListItem Value="Martinique">Martinique</asp:ListItem>
                                                                <asp:ListItem Value="Mauritania">Mauritania</asp:ListItem>
                                                                <asp:ListItem Value="Maurititius">Maurititius</asp:ListItem>
                                                                <asp:ListItem Value="Mayotle">Mayotle</asp:ListItem>
                                                                <asp:ListItem Value="mexico">mexico</asp:ListItem>
                                                                <asp:ListItem Value="Micronesia">Micronesia</asp:ListItem>
                                                                <asp:ListItem Value="Monaco">Monaco</asp:ListItem>
                                                                <asp:ListItem Value="Mongolia">Mongolia</asp:ListItem>
                                                                <asp:ListItem Value="Morocco">Morocco</asp:ListItem>
                                                                <asp:ListItem Value="Mozambique">Mozambique</asp:ListItem>
                                                                <asp:ListItem Value="Myanmar">Myanmar</asp:ListItem>
                                                                <asp:ListItem Value="Namibia">Namibia</asp:ListItem>
                                                                <asp:ListItem Value="Nauru">Nauru</asp:ListItem>
                                                                <asp:ListItem Value="Nepal">Nepal</asp:ListItem>
                                                                <asp:ListItem Value="Netherlands">Netherlands</asp:ListItem>
                                                                <asp:ListItem Value="Netherlands Antilles">Netherlands Antilles</asp:ListItem>
                                                                <asp:ListItem Value="NewZealand">NewZealand</asp:ListItem>
                                                                <asp:ListItem Value="Niger">Niger</asp:ListItem>
                                                                <asp:ListItem Value="Nigeria">Nigeria</asp:ListItem>
                                                                <asp:ListItem Value="North Korea">North Korea</asp:ListItem>
                                                                <asp:ListItem Value="Northern Mariana Islands">Northern Mariana Islands</asp:ListItem>
                                                                <asp:ListItem Value="Norway">Norway</asp:ListItem>
                                                                <asp:ListItem Value="Oman">Oman</asp:ListItem>
                                                                <asp:ListItem Value="Pakistan">Pakistan</asp:ListItem>
                                                                <asp:ListItem Value="Palau">Palau</asp:ListItem>
                                                                <asp:ListItem Value="Panama">Panama</asp:ListItem>
                                                                <asp:ListItem Value="Papau New Guinea">Papau New Guinea</asp:ListItem>
                                                                <asp:ListItem Value="Paraguay">Paraguay</asp:ListItem>
                                                                <asp:ListItem Value="Peru">Peru</asp:ListItem>
                                                                <asp:ListItem Value="Philippines">Philippines</asp:ListItem>
                                                                <asp:ListItem Value="Poland">Poland</asp:ListItem>
                                                                <asp:ListItem Value="Portugal">Portugal</asp:ListItem>
                                                                <asp:ListItem Value="Puerto Rico">Puerto Rico</asp:ListItem>
                                                                <asp:ListItem Value="Qatar">Qatar</asp:ListItem>
                                                                <asp:ListItem Value="Reunion">Reunion</asp:ListItem>
                                                                <asp:ListItem Value="Romania">Romania</asp:ListItem>
                                                                <asp:ListItem Value="Russia">Russia</asp:ListItem>
                                                                <asp:ListItem Value="Rwanda">Rwanda</asp:ListItem>
                                                                <asp:ListItem Value="Samoa">Samoa</asp:ListItem>
                                                                <asp:ListItem Value="San Marino">San Marino</asp:ListItem>
                                                                <asp:ListItem Value="Saudi Arabia">Saudi Arabia</asp:ListItem>
                                                                <asp:ListItem Value="Senegal">Senegal</asp:ListItem>
                                                                <asp:ListItem Value="Serbia and Montenegro">Serbia and Montenegro</asp:ListItem>
                                                                <asp:ListItem Value="Seychelles">Seychelles</asp:ListItem>
                                                                <asp:ListItem Value="Singapore">Singapore</asp:ListItem>
                                                                <asp:ListItem Value="Slovakia">Slovakia</asp:ListItem>
                                                                <asp:ListItem Value="Solvenia">Solvenia</asp:ListItem>
                                                                <asp:ListItem Value="Solomon Islands">Solomon Islands</asp:ListItem>
                                                                <asp:ListItem Value="Somlaia">Somlaia</asp:ListItem>
                                                                <asp:ListItem Value="South Africa">South Africa</asp:ListItem>
                                                                <asp:ListItem Value="Spain">Spain</asp:ListItem>
                                                                <asp:ListItem Value="SriLanka">SriLanka</asp:ListItem>
                                                                <asp:ListItem Value="St.Helena">St.Helena</asp:ListItem>
                                                                <asp:ListItem Value="St.Kitts and Nevis">St.Kitts and Nevis</asp:ListItem>
                                                                <asp:ListItem Value="St.Lucia">St.Lucia</asp:ListItem>
                                                                <asp:ListItem Value="St.Vincent and the Grenadines">St.Vincent and the Grenadines</asp:ListItem>
                                                                <asp:ListItem Value="Sudan">Sudan</asp:ListItem>
                                                                <asp:ListItem Value="Suriname">Suriname</asp:ListItem>
                                                                <asp:ListItem Value="Swaziland">Swaziland</asp:ListItem>
                                                                <asp:ListItem Value="Sweden">Sweden</asp:ListItem>
                                                                <asp:ListItem Value="Switzerland">Switzerland</asp:ListItem>
                                                                <asp:ListItem Value="Syria">Syria</asp:ListItem>
                                                                <asp:ListItem Value="Taiwan">Taiwan</asp:ListItem>
                                                                <asp:ListItem Value="Tajikistan">Tajikistan</asp:ListItem>
                                                                <asp:ListItem Value="Tanzania">Tanzania</asp:ListItem>
                                                                <asp:ListItem Value="Thailand">Thailand</asp:ListItem>
                                                                <asp:ListItem Value="Togo">Togo</asp:ListItem>
                                                                <asp:ListItem Value="Tokelan">Tokelan</asp:ListItem>
                                                                <asp:ListItem Value="Tonga">Tonga</asp:ListItem>
                                                                <asp:ListItem Value="trinidad and Tobago">trinidad and Tobago</asp:ListItem>
                                                                <asp:ListItem Value="Tunisia">Tunisia</asp:ListItem>
                                                                <asp:ListItem Value="Turkey">Turkey</asp:ListItem>
                                                                <asp:ListItem Value="Turkmenistan">Turkmenistan</asp:ListItem>
                                                                <asp:ListItem Value="Uganda">Uganda</asp:ListItem>
                                                                <asp:ListItem Value="Ukrain">Ukrain</asp:ListItem>
                                                                <asp:ListItem Value="United Arab Emirates">United Arab Emirates</asp:ListItem>
                                                                <asp:ListItem Value="United Kingdom">United Kingdom</asp:ListItem>
                                                                <asp:ListItem Value="United States of America">United States of America</asp:ListItem>
                                                                <asp:ListItem Value="Uruguay">Uruguay</asp:ListItem>
                                                                <asp:ListItem Value="Vatican City">Vatican City</asp:ListItem>
                                                                <asp:ListItem Value="Venenzuela">Venenzuela</asp:ListItem>
                                                                <asp:ListItem Value="Vitenam">Vitenam</asp:ListItem>
                                                                <asp:ListItem Value="Virgin Islands">Virgin Islands</asp:ListItem>
                                                                <asp:ListItem Value="Wallis and Futuna">Wallis and Futuna</asp:ListItem>
                                                                <asp:ListItem Value="Yemen">Yemen</asp:ListItem>
                                                                <asp:ListItem Value="Zambia">Zambia</asp:ListItem>
                                                                <asp:ListItem Value="Zimbabwe">Zimbabwe</asp:ListItem>
                                                           
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label7" runat="server" Text="VerificationCode"></asp:Label></td>
             
            <td colspan="2" align="right" >
                &nbsp;&nbsp;
                <asp:TextBox ID="TxtVcode0" runat="server" BorderColor="White" Font-Bold="True" ForeColor="Blue" ReadOnly="True" BackColor="#FFE0C0" Font-Size="X-Large"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label11" runat="server" Text="Enter Verfication code" Width="148px"></asp:Label><td style="width: 100px">
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Enter The UserName" ControlToValidate="TxtVcode">*</asp:RequiredFieldValidator><asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TxtVcode0"
                        ControlToValidate="TxtVcode" ErrorMessage="Enter The correct Code">*</asp:CompareValidator><td style="width: 100px">
                <asp:TextBox ID="TxtVcode" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="3" align="center"  >
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" /></td>
        </tr>
    </table>
</asp:Content>

