<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/pastelfax.Master" CodeBehind="PastelUserRegistration.aspx.vb" Inherits="CUBE.PastelUserRegistration" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<style type="text/css">
    .style3
    {
        width: 97px;
    }
    
    .Infomation
{
    padding:10px;
    background-color:#ADCBE9;
    border-color:#1B4065;
    color:#000000;
    border-width:1px;
    border-style:solid;
    text-align:left;
    width:75%;
}

</style>
<script type="text/javascript">
        function onLoad(sender, eventArgs) {
            sender.get_items(); //This is enough to force Items initialization. 

        } </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="clear">&nbsp;</div>
<div id="header" class="header">
    <h1>Pastel User Registration</h1> 
</div>
  <div style ="padding: 5px;">
        <table cellpadding="3px" width="100%">
            <tr>
                <td style="width:45%">
                    &nbsp;</td>
                <td valign="top" style="width:55%">
                    <span style="font-weight: bold; color: #FF0000">* = Required Data</span></td>
            </tr>
            <tr>
                <td valign="top">
                    <table cellpadding="3px" width="100%">
                        <tr>
                            <td valign="top">
                                <asp:Label ID="Label43" runat="server" CssClass="Heading2" 
                    Text="Company Settings"></asp:Label>
                            </td>
                            <td>
                                    <asp:CheckBox ID="chkNewCompany" runat="server" 
                    Text="Create New Company" Checked="True" AutoPostBack="True" />
                                </td>
                            <td>
                                    &nbsp;</td>
                            <td style="width:70%">
                                    &nbsp;</td>
                        </tr>
                        <tr>
                            <td valign="top">
                                Company Name</td>
                            <td>
                                <telerik:radtextbox ID="txtCName" runat="server" Width="150px">
                                </telerik:radtextbox>
                                </td>
                            <td>
                                <span style="font-weight: bold; color: #FF0000">*</span></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtCName"
                                    ErrorMessage="Name is required." Font-Size="8pt" ValidationGroup="1">Name is required.</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                Contact Person</td>
                            <td>
                                <telerik:radtextbox ID="txtContactPerson" runat="server" Width="150px">
                                </telerik:radtextbox>
                                </td>
                            <td>
                                <span style="font-weight: bold; color: #FF0000">*</span></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContactPerson"
                                    ErrorMessage="Contact person is required." Font-Size="8pt" 
                                    ValidationGroup="1">Contact person is required.</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                Phone</td>
                            <td>
            <telerik:radtextbox ID="txtCPhone" runat="server"  
                Width="150px" ValidationGroup="1">
            </telerik:radtextbox> </td>
                            <td>
                                <span style="font-weight: bold; color: #FF0000">*</span></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtCPhone"
                                    ErrorMessage="Phone is required." Font-Size="8pt" ValidationGroup="1">Phone is required.</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                Registration Number</td>
                            <td>
                                <telerik:radtextbox ID="txtIDNumber" runat="server" Width="150px">
                                </telerik:radtextbox>
                                </td>
                            <td>
                                <span style="font-weight: bold; color: #FF0000">*</span></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtIDNumber"
                                    ErrorMessage="ID/registration number is required." Font-Size="8pt" 
                                    ValidationGroup="1">ID/registration number is required.</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                Postal Address</td>
                            <td>
                                <span style="font-weight: bold; color: #FF0000">
                                <telerik:radtextbox ID="txtPostalAddress" runat="server" TextMode="MultiLine"
                                    Width="150px">
                                </telerik:radtextbox>
                                </span></td>
                            <td>
                                <span style="font-weight: bold; color: #FF0000">*</span></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtPostalAddress"
                                    ErrorMessage="Postal address is required." Font-Size="8pt" 
                                    ValidationGroup="1">Postal address is required.</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <asp:Label ID="Label42" runat="server" CssClass="Heading2" 
                    Text="User Settings"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <asp:Label ID="Label4" runat="server" Text="Name:"></asp:Label>
                            </td>
                            <td>
                                <telerik:radtextbox ID="txtName" runat="server"  
                Width="150px" ValidationGroup="1">
                                </telerik:radtextbox>
                            </td>
                            <td>
                                <span style="font-weight: bold; color: #FF0000">*</span></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                ErrorMessage="Name is required." Font-Size="8pt" ValidationGroup="1">First name is Required</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <asp:Label ID="Label5" runat="server" Text="Surname:"></asp:Label>
                            </td>
                            <td>
                                <telerik:radtextbox ID="txtSurname" runat="server"  
                Width="150px" ValidationGroup="1">
                                </telerik:radtextbox>
                            </td>
                            <td>
                                <span style="font-weight: bold; color: #FF0000">*</span></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSurname"
                ErrorMessage="Surname is required." Font-Size="8pt" ValidationGroup="1">Surname is required.</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <asp:Label ID="Label6" runat="server" Text="Phone:"></asp:Label>
                            </td>
                            <td>
                                <telerik:radtextbox ID="txtPhone" runat="server"  
                Width="150px" ValidationGroup="1">
                                </telerik:radtextbox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <asp:Label ID="Label9" runat="server" Text="Email:"></asp:Label>
                            </td>
                            <td>
                                <telerik:radtextbox ID="txtEmail" runat="server"  
                Width="150px" ValidationGroup="1">
                                </telerik:radtextbox>
                            </td>
                            <td>
                                <span style="font-weight: bold; color: #FF0000">*</span></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Email is required." Font-Size="8pt" ValidationGroup="1">Email is required.</asp:RequiredFieldValidator>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <asp:Label ID="Label8" runat="server" Text="Confirm email:"></asp:Label>
                            </td>
                            <td>
                                <telerik:radtextbox ID="txtConfirmEmail" runat="server"  
                Width="150px" ValidationGroup="1">
                                </telerik:radtextbox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtEmail"
                ControlToValidate="txtConfirmEmail" ErrorMessage="Emails don't match." 
                Font-Size="8pt" ValidationGroup="1">Emails don&#39;t match.</asp:CompareValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Incorrect Email Format" Font-Size="8pt" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ValidationGroup="1">Incorrect Email Format</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <asp:Label ID="Label7" runat="server" Text="Fax:"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="txtFax" runat="server" Text="not allocated"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td valign="top" class="style3">
                                <asp:Label ID="Label15" runat="server" Text="Preferred fax format:" 
                Width="150px"></asp:Label>
                            </td>
                            <td>
                                <asp:RadioButton ID="optPDF" runat="server" Text="PDF" GroupName="format" 
                                    Checked="True" />
                                <asp:RadioButton ID="optTiff" runat="server" Text="TIFF" GroupName="format" />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <asp:Panel ID="panForwardFaxes" Visible="true" runat="server">
                            <tr>
                                <td valign="top">
                                    <asp:Label ID="Label41" runat="server" Text="Forward Faxes To: " 
                Width="150px"></asp:Label>
                                </td>
                                <td>
                                    <telerik:RadTextBox ID="txtForwardNo" runat="server" ValidationGroup="1" 
                        Width="150px">
                                    </telerik:RadTextBox>
                    &nbsp;<asp:Button ID="cmdForward" runat="server" Text="Forward" />
                                    <br />
                                    <asp:Label ID="lblForward" runat="server" Text="Successful" 
                Visible="False"></asp:Label>
                                </td>
                            </tr>
                        </asp:Panel>
                        <asp:Panel ID="panUsername" Visible="true" runat="server">
                            <tr>
                                <td >
                                    <asp:Label ID="Label11" runat="server" Text="Password:"></asp:Label>
                                </td>
                                <td>
                                    <telerik:RadTextBox ID="txtPassword" runat="server" TextMode="Password" 
                                Width="150px">
                                    </telerik:RadTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label12" runat="server" Text="Confirm password:"></asp:Label>
                                </td>
                                <td>
                                    <telerik:RadTextBox ID="txtConfirmPassword" runat="server" TextMode="Password" 
                                Width="150px">
                                    </telerik:RadTextBox>
                                </td>
                            </tr>
                        </asp:Panel>
                    </table>
                </td>
                <td valign="top" class="style5">
                    <asp:Panel ID="Panel1" runat="server" Width="470px">
                        <table cellspacing="4px">
                            <tr>
                                <td>
                                    <asp:Label ID="Label26" runat="server" CssClass="Heading2" Text="Admin Settings"></asp:Label>
                                    <br />
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" width="150">
                                    <asp:Label ID="Label28" runat="server" Text="Company/division:" Width="150px"></asp:Label>
                                </td>
                                <td>
                                    <telerik:RadComboBox ID="rcbCompanies" Runat="server" AllowCustomText="False" 
                    MarkFirstMatch="True" onclientload="onLoad">
                                    </telerik:RadComboBox>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <asp:Label ID="Label39" runat="server" Text="Reference:"></asp:Label>
                                </td>
                                <td>
                                    <telerik:RadTextBox ID="txtReference" Runat="server" Width="150px" 
                                        Enabled="False">
                                    </telerik:RadTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                Type</td>
                                <td>
                                    <telerik:RadComboBox ID="cboCompanyTypeID" Runat="server">
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="087" Value="Profax" />
                                            <telerik:RadComboBoxItem runat="server" Selected="true" Text="086" 
                            Value="Profax2" />
                                        </Items>
                                        <CollapseAnimation Duration="200" Type="OutQuint" />
                                    </telerik:RadComboBox>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    &nbsp;</td>
                                <td>
                                    <asp:CheckBox ID="chkActive" runat="server" Checked="True" Text="Active" 
                                        Enabled="False" />
                                    <br />
                                    <asp:CheckBox ID="chkInbound" runat="server" Text="Inbound" AutoPostBack="true" 
                                        Checked="True" />
                                    <br />
                                    <asp:CheckBox ID="chkOutbound" runat="server" Checked="True" 
                    Text="Outbound requested (subject to confirmation)" Enabled="False" />
                                    <br />
                                    <asp:CheckBox ID="chkSendLoginDetails" runat="server" 
                    Text="Send login details on Registration" Checked="True" Enabled="False" />
                                    <br />
                                    <asp:CheckBox ID="chkOutboundConfirmed" runat="server" 
                                        Text="Outbound confirmed" Enabled="False" />
                                    <br />
                                    <asp:CheckBox ID="chkAdministrator" runat="server" Text="Administrator" 
                                        Checked="True" Enabled="False" />
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    &nbsp;</td>
                                <td>
                                    <asp:CheckBox ID="chkProvisionImmediately" runat="server" 
                    Text="Provision immediately" Checked="True" Enabled="False" />
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    &nbsp;</td>
                                <td>
                                    <asp:CheckBox ID="chkNotifications" runat="server" 
                                        Text="Send Email Notifications" />
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <asp:Label ID="Label18" runat="server" Text="Alternative Notification Email :"></asp:Label>
                                </td>
                                <td>
                                    <telerik:RadTextBox ID="txtNotifications" runat="server" ValidationGroup="1" 
                                        Width="150px">
                                    </telerik:RadTextBox>
                                    &nbsp;<br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                        ControlToValidate="txtNotifications" ErrorMessage="Incorrect Email Format" 
                                        Font-Size="8pt" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                        ValidationGroup="1">Incorrect Email Format</asp:RegularExpressionValidator>
                                    <br />
                                    <br />
                                    <div class="Infomation">
                                        <i><strong style="text-decoration:underline">Important</strong></i><b><br />
                                        Each time you send a fax, you will receive an email notifying you of the success 
                                        or failure of that fax.</b><br />
                                        <ul>
                                            <li> Select the Send Email Notifications option above to enable these notifications.</li>
                                            <li>Email notifications will be sent to the email address specified under User 
                                                Settings. This is the email address that belongs to the fax account holder.</li>
                                            <li>To send the notifications to a different email address, enter an Alternative 
                                                Notification Email address above.</li>
                                        </ul>
                                        </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table cellspacing="3" class="style4">
                        <tr>
                            <td class="style9">
                                <asp:Button ID="cmdCancel" runat="server" Text="Cancel" />
                            </td>
                            <td class="style10">
                                <asp:Button ID="cmdUpdate" runat="server" Text="Update" ValidationGroup="1" />
                            </td>
                            <td class="style6">
                                <asp:Button ID="cmdTermC" runat="server" Text="Terms &amp; Conditions" 
                            ToolTip="Click to view terms &amp; conditions" ValidationGroup="Noone" />
                            </td>
                            <td>
                                <asp:CheckBox ID="chkTerms" runat="server" AutoPostBack="True" 
                            Text="Accept Terms &amp; Conditions" />
                                <telerik:radajaxmanagerproxy ID="RadAjaxManagerProxy1" runat="server">
                                    <AjaxSettings>
                                        <telerik:AjaxSetting AjaxControlID="chkNewCompany">
                                            <UpdatedControls>
                                                <telerik:AjaxUpdatedControl ControlID="txtCName" />
                                                <telerik:AjaxUpdatedControl ControlID="txtContactPerson" />
                                                <telerik:AjaxUpdatedControl ControlID="txtCPhone" />
                                                <telerik:AjaxUpdatedControl ControlID="txtIDNumber" />
                                                <telerik:AjaxUpdatedControl ControlID="txtPostalAddress" />
                                                <telerik:AjaxUpdatedControl ControlID="rcbCompanies" />
                                            </UpdatedControls>
                                        </telerik:AjaxSetting>
                                        <telerik:AjaxSetting AjaxControlID="chkInbound">
                                            <UpdatedControls>
                                                <telerik:AjaxUpdatedControl ControlID="chkProvisionImmediately" />
                                            </UpdatedControls>
                                        </telerik:AjaxSetting>
                                        <telerik:AjaxSetting AjaxControlID="chkTerms">
                                            <UpdatedControls>
                                                <telerik:AjaxUpdatedControl ControlID="cmdUpdate" />
                                            </UpdatedControls>
                                        </telerik:AjaxSetting>
                                    </AjaxSettings>
                                </telerik:radajaxmanagerproxy>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <telerik:radwindowmanager ID="RadWindowManager1" runat="server">
    </telerik:radwindowmanager>
    <telerik:radwindowmanager ID="rwmTC" runat="server">
    </telerik:radwindowmanager>
    <asp:HiddenField ID="hfReference" runat="server" />

</asp:Content>
