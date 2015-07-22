<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Profile.aspx.vb" Inherits="CUBE.Profile" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">

    function GetRadWindow() {
        var oWindow = null;
        if (window.radWindow) oWindow = window.radWindow;
        else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow;
        return oWindow;
    }

    function noCopyMouse(e) {
        var isRight = (e.button) ? (e.button == 2) : (e.which == 3);

        if (isRight) {
            return false;
        }
        return true;
    }

    function noCopyKey(e) {
        var forbiddenKeys = new Array('c', 'x', 'v');
        var keyCode = (e.keyCode) ? e.keyCode : e.which;
        var isCtrl;

        if (window.event)
            isCtrl = e.ctrlKey
        else
            isCtrl = (window.Event) ? ((e.modifiers & Event.CTRL_MASK) == Event.CTRL_MASK) : false;

        if (isCtrl) {
            for (i = 0; i < forbiddenKeys.length; i++) {
                if (forbiddenKeys[i] == String.fromCharCode(keyCode).toLowerCase()) {

                    return false;
                }
            }
        }
        return true;
    }

    function SelectAll(CheckBoxControl) {
        if (CheckBoxControl.checked == true) {
            var i;
            for (i = 0; i < document.forms[0].elements.length; i++) {
                if ((document.forms[0].elements[i].type == 'checkbox') &&
(document.forms[0].elements[i].name.indexOf('chkUser') > -1)) {
                    document.forms[0].elements[i].checked = true;
                }
            }
        }
        else {
            var i;
            for (i = 0; i < document.forms[0].elements.length; i++) {
                if ((document.forms[0].elements[i].type == 'checkbox') &&
(document.forms[0].elements[i].name.indexOf('chkUser') > -1)) {
                    document.forms[0].elements[i].checked = false;
                }
            }
        }
    }

    function onLoad(sender, eventArgs) {
        sender.get_items(); //This is enough to force Items initialization. 
    } 
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="clear">&nbsp;</div>
<div class="header">
    <h1>User Profile</h1>
    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="txtAD">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lblUN0" />
                    <telerik:AjaxUpdatedControl ControlID="cmdUpdate" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="chkAD">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtAD" />
                    <telerik:AjaxUpdatedControl ControlID="lblAd2" />
                    <telerik:AjaxUpdatedControl ControlID="btnGetData" />
                    <telerik:AjaxUpdatedControl ControlID="ibtCheckUsername" />
                    <telerik:AjaxUpdatedControl ControlID="lblUNAvailability" />
                    <telerik:AjaxUpdatedControl ControlID="cmdUpdate" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnGetData">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtFName" />
                    <telerik:AjaxUpdatedControl ControlID="txtSurname" />
                    <telerik:AjaxUpdatedControl ControlID="txtemail" />
                    <telerik:AjaxUpdatedControl ControlID="txtcemail" />
                    <telerik:AjaxUpdatedControl ControlID="txtPassword" />
                    <telerik:AjaxUpdatedControl ControlID="txtCPassword" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="cmdForward">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtSurname" />
                    <telerik:AjaxUpdatedControl ControlID="litFaxF" LoadingPanelID="lpProfile" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="cmdNotification">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="panNotifications" 
                        LoadingPanelID="lpProfile" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="cmdClose">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="panNotifications" 
                        LoadingPanelID="lpProfile" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="ibtCheckUsername">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtUsername" 
                        LoadingPanelID="lpProfile" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="ibtCheckFax">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lblUNAvailability" 
                        LoadingPanelID="lpProfile" />
                    <telerik:AjaxUpdatedControl ControlID="lblFaxNumber" />
                    <telerik:AjaxUpdatedControl ControlID="txtFaxNumber" 
                        LoadingPanelID="lpProfile" />
                    <telerik:AjaxUpdatedControl ControlID="lblFaxAvailability" />
                    <telerik:AjaxUpdatedControl ControlID="cmdUpdate" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="chkInbound">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtUsername" 
                        LoadingPanelID="lpProfile" />
                    <telerik:AjaxUpdatedControl ControlID="ibtCheckUsername" 
                        LoadingPanelID="lpProfile" />
                    <telerik:AjaxUpdatedControl ControlID="chkBulkFax" LoadingPanelID="lpProfile" />
                    <telerik:AjaxUpdatedControl ControlID="chkHPF" LoadingPanelID="lpProfile" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="chkOutboundConfirmed">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="ibtCheckUsername" 
                        LoadingPanelID="lpProfile" />
                    <telerik:AjaxUpdatedControl ControlID="ibtCheckFax" 
                        LoadingPanelID="lpProfile" />
                    <telerik:AjaxUpdatedControl ControlID="chkOutbound" 
                        LoadingPanelID="lpProfile" />
                    <telerik:AjaxUpdatedControl ControlID="chkOutboundConfirmed" 
                        LoadingPanelID="lpProfile" />
                    <telerik:AjaxUpdatedControl ControlID="chkBulkFax" LoadingPanelID="lpProfile" />
                    <telerik:AjaxUpdatedControl ControlID="chkHPF" LoadingPanelID="lpProfile" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="chkAdministrator">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="chkSuperAdmin" 
                        LoadingPanelID="lpProfile" />
                    <telerik:AjaxUpdatedControl ControlID="chkAddAgent" 
                        LoadingPanelID="lpProfile" />
                    <telerik:AjaxUpdatedControl ControlID="chkAmviaAdmin" 
                        LoadingPanelID="lpProfile" />
                    <telerik:AjaxUpdatedControl ControlID="chkBulkFaxSupport" 
                        LoadingPanelID="lpProfile" />
                    <telerik:AjaxUpdatedControl ControlID="chkBulkFaxAdmin" 
                        LoadingPanelID="lpProfile" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="chkAmviaAdmin">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="chkAmviaAdmin" 
                        LoadingPanelID="lpProfile" />
                    <telerik:AjaxUpdatedControl ControlID="chkSupport" 
                        LoadingPanelID="lpProfile" />
                    <telerik:AjaxUpdatedControl ControlID="chkBulkFaxSupport" 
                        LoadingPanelID="lpProfile" />
                    <telerik:AjaxUpdatedControl ControlID="chkBulkFaxAdmin" 
                        LoadingPanelID="lpProfile" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="cmdResendWelcome">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="chkBulkFaxAdmin" 
                        LoadingPanelID="lpProfile" />
                    <telerik:AjaxUpdatedControl ControlID="lblwelcome" LoadingPanelID="lpProfile" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="chkTerms">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="cmdUpdate" LoadingPanelID="lpProfile" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>
    <telerik:RadAjaxLoadingPanel ID="lpProfile" Runat="server" Skin="Default">
    </telerik:RadAjaxLoadingPanel>
    <telerik:RadWindowManager ID="rwmProfile" runat="server">
    </telerik:RadWindowManager>
    <telerik:RadWindowManager ID="rwmPWD" runat="server">
    </telerik:RadWindowManager>
</div>

<div>
<div id="formContainerHalf">
<div id="label">
    <asp:Label ID="lblFname" runat="server" Text="Name"></asp:Label>
</div>
<div id="field">
    <telerik:RadTextBox ID="txtFName" runat="server" ValidationGroup="submit"></telerik:RadTextBox>
    </div>
<div id="validation"><span class="validation">*</span>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtFName" CssClass="validation" 
        ErrorMessage="Name required" ValidationGroup="submit"></asp:RequiredFieldValidator>

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblSurname" runat="server" Text="Surname"></asp:Label>
    </div>
<div id="field">
    <telerik:RadTextBox ID="txtSurname" runat="server" ValidationGroup="submit"></telerik:RadTextBox>
    </div>
<div id="validation">
<span class="validation">*</span>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtSurname" CssClass="validation" 
        ErrorMessage="Surname required" ValidationGroup="submit"></asp:RequiredFieldValidator>
</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
</div>
<div id="field">
    <telerik:RadTextBox ID="txtemail" runat="server" ValidationGroup="submit"></telerik:RadTextBox>
    </div>
<div id="validation">
<span class="validation">*</span>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
        runat="server" ControlToValidate="txtemail" CssClass="validation" 
        ErrorMessage="Incorrect email format" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        ValidationGroup="submit"></asp:RegularExpressionValidator>

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblConfirmEmail" runat="server" Text="Confirm Email"></asp:Label>
    </div>
<div id="field">
    <telerik:RadTextBox ID="txtcemail" runat="server" ValidationGroup="submit"></telerik:RadTextBox>
</div>
<div id="validation">
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="txtemail" ControlToValidate="txtcemail" CssClass="validation" 
        ErrorMessage="Emails do not match" ValidationGroup="submit"></asp:CompareValidator>

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblAD" runat="server" Text="AD Userid"></asp:Label>
    </div>
<div id="field">
                <telerik:RadTextBox ID="txtAD" Runat="server" AutoPostBack="True">
                </telerik:RadTextBox>
            
    </div>
    <span style="float:left" __designer:mapid="9a9">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ibtCheckUsername0" runat="server" 
        ImageUrl="~/UserContent/default/search.gif" 
        onclientclick="Click to check availability of username" 
        style="height: 15px" />
    <span class="validation" __designer:mapid="9ab">
    <asp:Label 
        ID="lblUN0" runat="server"></asp:Label></span>
    </span>
<div id="clear"></div>
<div id="label"><asp:Label ID="lblAd2" runat="server" Text="Active Directory User"></asp:Label></div>
<div id="field">
<asp:CheckBox ID="chkAD" runat="server" AutoPostBack="True" Checked="True" /></div>
<div id="validation">
    <asp:Button ID="btnGetData" runat="server" Text="GetData" />
    </div>
    <div id="clear">
    <asp:Label ID="lblerror3" runat="server" CssClass="validation"></asp:Label>
    </div>
    <div id="label"></div>
    <div id="field"><asp:Button ID="btnChangeADDetails" runat="server" 
            Text="Change Username" Visible="False" /></div>
    <div id="clear"></div>
    <div id="label">
        <asp:Label ID="lblnewAD" runat="server" Text="New Userid:" Visible="False"></asp:Label>
    </div>
    <div id="field">
        <asp:TextBox ID="txtAD2" runat="server" Visible="False"></asp:TextBox>
    </div>
    <div id="validation">
        <asp:Label ID="lblOldusername" runat="server" Visible="False"></asp:Label>
    </div>
    <div id="clear"></div>
    <div id="label">
        <asp:Label ID="lblnewAD0" runat="server" Text="Active Directory User:" 
            Visible="False"></asp:Label>
    </div>
    <div id="field">
<asp:CheckBox ID="chkAD2" runat="server" AutoPostBack="True" 
            Visible="False" /></div>
    <div id="validation">
    <asp:Button ID="btnGetDataNew2" runat="server" Text="CheckData" Visible="False" />  </div>
    <div id="clear"></div>
  
<div id="clear"></div>
<div id="label"></div>
<div id="field"> 
    <asp:Button ID="btnChangeAD" runat="server" Text="Update" 
        Visible="False" Enabled="False" /></div>
<div id="validation"></div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblForward" runat="server" Text="Forward Faxes" Visible="False"></asp:Label>
    </div>
<div id="field">
    <telerik:RadTextBox ID="txtForward" runat="server" ValidationGroup="ForwardFax" 
        Visible="False"></telerik:RadTextBox>
</div>
<div id="validation">
    <asp:Button ID="cmdForward" Text="Forward" 
        ToolTip="Click to forward faxes to another number" runat="server" 
        ValidationGroup="ForwardFax" Visible="False" />
</div>
<div id="clear" style="color: red">
    <asp:Literal ID="litFaxF" runat="server"></asp:Literal>
    </div>
<div id="clear"></div>
<div id="field" style="width:auto!important">
     <asp:CheckBox ID="chkPromotionalMaterial" runat="server" 
         Text="Receive promotional material" 
         
         ToolTip="Gives permission to have marketing materials sent to you from time to time." 
         Visible="False" />
</div>
   
<div id="validation">
</div>
<div id="clear"></div>
</div>
<div id="formContainerHalf">
<div id="label">
    <asp:Label ID="lblFaxView" runat="server" Text="Fax Number"></asp:Label>
</div>
<div id="field">
    <asp:Label ID="txtFaxView" runat="server" Text="Unallocated" Font-Bold="True"></asp:Label>
    </div>
<div id="validation">

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblFormat" runat="server" Text="Preferred Fax Format"></asp:Label>
</div>
<div id="field">
    <asp:RadioButton ID="optPDF" runat="server" GroupName="format" 
        Text="PDF"  Checked="True"  />
    <asp:RadioButton ID="optTiff" runat="server" GroupName="format" Text="TIFF" 
       />
    </div>
<div id="validation">

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblNotification" runat="server" Text="Notification Settings" 
        Visible="False"></asp:Label>
</div>
<div id="field">
    <asp:Button ID="cmdNotification" runat="server" Text="Notification Settings" 
        ToolTip="Click here to change settings for your fax notifications" 
        Width="158px" Visible="False" />
    </div>
<div id="validation">

</div>
<div id="clear">
<asp:Panel ID="panNotifications" runat="server" Visible="false ">
<div id="notifications" style="float:left; margin-right:5px" >
<div id="label">
    <asp:Label ID="Label1" runat="server" Text="Alternative Email :"></asp:Label>
    </div>
<div id="field">
    <telerik:RadTextBox ID="txtNotificationemail" runat="server" 
        TextMode="SingleLine"></telerik:RadTextBox>
</div>
<div id="field" style="width:auto!important">
    <asp:CheckBox ID="chkNotifications" runat="server" 
        Text="Send Email Notifications" />
</div>
<div id="clear" align="center" class="validation">
    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
</div>
<div style="float:left">
<div class="submitButton">  
    <asp:Button ID="cmdSaveNotifications" runat="server" Text="Save"/> <asp:Button ID="cmdClose" runat="server" Text="Close Panel" />
</div>
</div>
<div id="clear"></div>
<div id = "notificationinfo" class="SearchBox" style="padding:0px 5px 0px 5px">
    <strong style="color:#000;">Important</strong>
    <br />
    Each time you send a fax, you will receive an email notifying you of the success 
    or failure of that fax.
    <ul>
        <li>Select the Send Email Notifications option above to enable these notifications.</li>
        <li>Email notifications will be sent to the email address specified under User 
            Settings.</li>
        <li>To send the notifications to a different email address, use Alternative Email field above.</li>
    </ul>
</div>
</div>
<div id="clear"><br /></div>
    </asp:Panel>
</div>
<div id="clear"></div>
<asp:Panel ID="panPassword" runat="server" Visible="false">
<div id="password">
<div id="label">
    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
    </div>
<div id="field">
    <telerik:RadTextBox ID="txtPassword" runat="server" TextMode="Password"></telerik:RadTextBox>
</div>
<div id="validation">

    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="txtPassword" CssClass="validation" 
        ErrorMessage="Incorrect pasword length" 
        ValidationExpression="[\S\s]{3,20}" 
        ValidationGroup="submit"></asp:RegularExpressionValidator>

</div>
<div id="clear"></div>

<div id="label">
    <asp:Label ID="lblCPassword" runat="server" Text="Confirm Password"></asp:Label>
    </div>
<div id="field">
    <telerik:RadTextBox ID="txtCPassword" runat="server" TextMode="Password"></telerik:RadTextBox>
</div>
<div id="validation">

    <asp:CompareValidator ID="CompareValidator5" runat="server" 
        ControlToCompare="txtPassword" ControlToValidate="txtCPassword" CssClass="validation" 
        ErrorMessage="The passwords do not match"></asp:CompareValidator>

</div>
<div id="clear"></div>
</div>
</asp:Panel>
<asp:Panel ID="panUserPassword" runat="server" Visible="false">
<div id="userpassword">
<div id="label">
    <asp:Label ID="lblPassView" runat="server" Text="User Password" Visible="False"></asp:Label>
    </div>
<div id="field">
    <asp:Label ID="lblUserPassword" runat="server" Font-Bold="True" Visible="False"></asp:Label>
</div>
<div id="validation">

</div>
<div id="clear"></div>
    </asp:Panel>
<div id="label">
    <asp:Label ID="lblChangePassword" runat="server" Text="Change Password"></asp:Label>
</div>
<div id="field">
    <asp:Button ID="cmdChangePass" runat="server" Text="Change Password" 
        ToolTip="Click here to change the password" />
</div>
<div id="clear"></div>
</div>
<div id="clear"></div>
</div>
<asp:Panel ID="panAdminSettings" runat="server" Visible="false" >
<div id="clear">&nbsp;</div>
<div class="header">
<h2>Admin settings</h2>
</div>
<div>
<div id="formContainerHalf">
<div id="label">
    <asp:Label ID="lblCompany" runat="server" Text="Company/Division"></asp:Label>
</div>
<div id="field">
    <telerik:RadComboBox ID="rcbCompanies" Runat="server" AllowCustomText="False" 
        MarkFirstMatch="True" onclientload="onLoad">
    </telerik:RadComboBox>
    </div>
<div id="validation">

</div>
<div id="clear"></div>

<div id="label">
    <asp:Label ID="lblUsername" runat="server" Text="Username" Visible="False"></asp:Label>
</div>
<div id="field">
    <telerik:RadTextBox ID="txtUsername" runat="server" Visible="False"></telerik:RadTextBox>
    </div>
<div id="validation">
    <span style="float:left">
    <asp:ImageButton ID="ibtCheckUsername" runat="server" 
        ImageUrl="~/UserContent/default/search.gif" 
        onclientclick="Click to check availability of username" Visible="False" />
    &nbsp;</span><span class="validation"><asp:Label ID="lblUNAvailability" runat="server"></asp:Label></span>
</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblFaxNumber" runat="server" Text="Desired Fax Number"></asp:Label>
    </div>
<div id="field">
    <asp:TextBox ID="txtFaxNumber" runat="server"></asp:TextBox>
</div>
<div id="validation">
    <span style="float:left">
    <asp:ImageButton ID="ibtCheckFax" runat="server" 
        ImageUrl="~/UserContent/default/search.gif" 
        onclientclick="Click to check availability of fax number" 
        style="height: 15px" />
    &nbsp;</span><span class="validation"><asp:Label ID="lblFaxAvailability" runat="server"></asp:Label></span>
</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblRoutingType" runat="server" Text="Routing Type:"></asp:Label>
    </div>
<div id="field">
    <telerik:RadComboBox ID="cboRouteType" Runat="server">
        <Items>
            <telerik:RadComboBoxItem runat="server"  Selected="True" Text="SMTP" Value="12" Visible="True" />
            <telerik:RadComboBoxItem runat="server" Selected="False" Text="Exchange" Value="11"  Visible="True" />
             <telerik:RadComboBoxItem runat="server" Selected="False" Text="Lotus Notes" Value="7"  Visible="False" />
        </Items>
        <CollapseAnimation Duration="200" Type="OutQuint" />
    </telerik:RadComboBox>
    </div>
<div id="validation"></div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblAccountType" runat="server" Text="Account Type"></asp:Label>
</div>
<div id="field">
    <telerik:RadComboBox ID="cboCompanyTypeID" Runat="server">
        <CollapseAnimation Duration="200" Type="OutQuint" />
    </telerik:RadComboBox>
    </div>
<div id="validation">

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblNB" runat="server" Text="Numberbank"></asp:Label>
</div>
<div id="field">
    <telerik:RadComboBox ID="rcbNB" Runat="server">
        <CollapseAnimation Duration="200" Type="OutQuint" />
    </telerik:RadComboBox>
    </div>
<div id="validation">

</div>
<div id="clear"></div>
<div id="field" style="width:auto!important">
     <asp:CheckBox ID="chkProvisionNow" runat="server" Text="Provision Immediately" 
         Checked="True" Visible="False" />
     <br />
     <asp:CheckBox ID="chkSendLoginDetails" runat="server" Checked="True" 
         Text="Send Login Details" />
</div>
   
<div id="validation">
</div>
<div id="clear"></div>
</div>
<div id="formContainerHalf">

<div id="label">
    <asp:Label ID="lblProducts" runat="server" Text="Products"></asp:Label>
    </div>
<div id="field" style="width:auto!Important">
    <div> <asp:CheckBox ID="chkInbound" runat="server" AutoPostBack="true" Checked="True" 
            Text="Inbound" /></div>
    <div>
        <asp:CheckBox ID="chkOutbound" runat="server" 
            Text="Outbound requested (subject to confirmation)" Checked="True" 
            Visible="False" /></div>
    <div> 
        <asp:CheckBox ID="chkOutboundConfirmed" runat="server" AutoPostBack="True" 
            Text="Outbound confirmed" Checked="True" /></div>
    <div><asp:CheckBox ID="chkBulkFax" runat="server" Text="Bulk Fax" Enabled="False" /></div>
    <div> 
        <asp:CheckBox ID="chkHPF" runat="server" Text="Stratus" 
            Enabled="False" /></div>
</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblRoles" runat="server" Text="Roles"></asp:Label>
    </div>
<div id="field" style="width:auto!Important">
    <div><asp:CheckBox ID="chkActive" runat="server" Checked="True" Text="Active" 
        ToolTip="Account is active" /></div>
    <div><asp:CheckBox ID="chkLocked" runat="server" Text="Locked Out" 
        ToolTip="User account is locked out and cannot signin" /></div>
    <div><asp:CheckBox ID="chkAdministrator" runat="server" Text="Administrator" 
        AutoPostBack="True" ToolTip="Low level administrator" /></div>
    <div> <asp:CheckBox ID="chkSuperAdmin" runat="server" 
        Text="Top Administrator" ToolTip="Highest level of adminiatration" 
            Enabled="False" /></div>
    <div><asp:CheckBox ID="chkAddAgent" runat="server" Text="Add Agent" 
        
            ToolTip="User has ability to add agents, bulk fax users and other product users" 
            Enabled="False" /></div>
    <div><asp:CheckBox ID="chkAmviaAdmin" runat="server" AutoPostBack="True" 
        Text="Super Administrator" ToolTip="Administrator employed with Vox Amvia (Amvia Administrator)" 
            Enabled="False" /></div>
    <div><asp:CheckBox ID="chkSupport" runat="server" Text="Support Center" 
        ToolTip="Support Center Administrator [high level admin with restrictions]" 
            Enabled="False" /></div>
    <div>
        <asp:CheckBox ID="chkBulkFaxSupport" runat="server" Text="Bulk Fax Support" 
        ToolTip="Can release and support basic bulk fax jobs" Enabled="False" /></div>
    <div><asp:CheckBox ID="chkBulkFaxAdmin" runat="server" Text="Bulk Fax Administrator" 
        
            ToolTip="User can authorise the release of a bulk fax. Usually an accounts role" 
            Enabled="False" /></div>  
</div>
<div id="clear"></div>
<div>
<div id = "field"  class="submitButton"  style="width:auto!important">
    <div>
    <asp:Button ID="cmdResendWelcome" runat="server" Text="Re-Send Welcome Email" 
        ToolTip="Sends user's welcome email with login details and the user fax number to users email address" />
    </div>
    <div>
        <asp:Label ID="lblwelcome" runat="server" Text="Successful" Visible="False" CssClass="validation"></asp:Label>
    </div>
    </div>
<div id = "field"  class="submitButton" style="width:auto!important">
    <div>
    <asp:Button ID="cmdLostPwd" runat="server" Text="Re-Send Lost Password" 
        ToolTip="Sends user's login credentials to their email address" />
    </div>
    <div>
        <asp:Label ID="lblRPassword" runat="server" Text="Successful" Visible="False" CssClass="validation"></asp:Label>
    </div>  
</div>

<div id = "field"  class="submitButton"  style="width:auto!important">
    <div>
    <asp:Button ID="cmdAT" runat="server" Text="View Audit Trail" 
        ToolTip="View changes made to users account" />
    </div>

    </div>

</div>

</div>
</div>
</div>
<div id="clear">
    <asp:Label ID="lblerror2" runat="server" CssClass="validation"></asp:Label>
    </div>

</asp:Panel>
<div>
<div id = "field" class="submitButton"  style="width:auto!important"><asp:Button ID="cmdCancel" runat="server" Text="Cancel" /></div>
<div id = "field"  class="submitButton"  style="width:auto!important">
    <asp:Button ID="cmdUpdate" runat="server" Text="Save" 
        ValidationGroup="submit" /></div>
<div id = "field"  class="submitButton" style="width:auto!important"><asp:Button ID="cmdTermC" runat="server" Text="Terms &amp; Conditions" 
        ToolTip="Click to view terms &amp; conditions" ValidationGroup="Noone" /></div>
<div id = "field"  class="submitButton" style="width:auto!important">
    <asp:CheckBox ID="chkTerms" runat="server" AutoPostBack="True" 
        Text="Accept Terms &amp; Conditions" Visible="False" /></div>
</div>
</asp:Content>
