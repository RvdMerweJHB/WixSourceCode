<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cRegistration.ascx.vb" Inherits="CUBE.registration" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<style type="text/css">


#field
{
	width:150px;
	float:left;
	margin-left:auto;
	margin-bottom:10px
}

.submitButton
{
    text-align:center;
    padding-right: 10px;
}

#field0
{
	width:150px;
	float:left;
	margin-left:auto;
	margin-bottom:10px
}


#field0
{
	width:150px;
	float:left;
	margin-left:auto;
	margin-bottom:10px
}

</style>
<script type="text/javascript">
    function onLoad(sender, eventArgs) {
        sender.get_items(); //This is enough to force Items initialization. 

    } </script>
<div class="header">
    <h1>User Registration</h1>
    <telerik:RadWindowManager ID="rwmProfile" runat="server" Enabled="False" 
        Title="User Registration" VisibleTitlebar="False">
    </telerik:RadWindowManager>
    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="cmdRegister">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="cmdRegister" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="chkTerms">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="cmdRegister" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>
</div>
<div id="clear">
<p class="validation">
    <asp:Literal ID="litFeedback" runat="server"></asp:Literal>
</p>
<p>
    
    To complete your registration, please enter your information below.
    Fields marked with a <strong class="validation">*</strong> are compulsory.
</p>
</div>
<div id="label">
    <asp:Label ID="lblFname" runat="server" Text="Name"></asp:Label>
</div>
<div id="field">
    <telerik:RadTextBox ID="txtFName" runat="server" ValidationGroup="Register"></telerik:RadTextBox>
    <span class="validation">*</span></div>
<div id="validation">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtFName" CssClass="validation" 
        ErrorMessage="The Name is required" ValidationGroup="Register"></asp:RequiredFieldValidator>

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblSurname" runat="server" Text="Surname"></asp:Label>
    </div>
<div id="field">
    <telerik:RadTextBox ID="txtSurname" runat="server" ValidationGroup="Register"></telerik:RadTextBox>
    <span class="validation">*</span></div>
<div id="validation">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtSurname" CssClass="validation" 
        ErrorMessage="The surname is required" ValidationGroup="Register"></asp:RequiredFieldValidator>
</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
</div>
<div id="field">
    <telerik:RadTextBox ID="txtemail" runat="server" ValidationGroup="Register"></telerik:RadTextBox>
    <span class="validation">*</span></div>
<div id="validation">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtemail" CssClass="validation" 
        ErrorMessage="The email is required" ValidationGroup="Register"></asp:RequiredFieldValidator>

&nbsp;&nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
        runat="server" ControlToValidate="txtemail" CssClass="validation" 
        ErrorMessage="Incorrect email format" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        ValidationGroup="Register"></asp:RegularExpressionValidator>

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblConfirmEmail" runat="server" Text="Confirm Email"></asp:Label>
    </div>
<div id="field">
    <telerik:RadTextBox ID="txtcemail" runat="server" ValidationGroup="Register"></telerik:RadTextBox>
</div>
<div id="validation">
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="txtemail" ControlToValidate="txtcemail" CssClass="validation" 
        ErrorMessage="The emails do not match" ValidationGroup="Register"></asp:CompareValidator>

    <br />

</div>
<div id="clear"></div>
<div id="field" style="width:auto!important">
     <asp:CheckBox ID="chkPromotionalMaterial" runat="server" 
         Text="Receive promotional material" Checked="True" />
</div>
<div id="validation"></div>
</div id="clear"><div>
<div id = "field"  class="submitButton">
    <asp:Button ID="cmdRegister" runat="server" Text="Register" Enabled="False" 
        ValidationGroup="Register" /> 
</div>
<div id = "field"  class="submitButton" style="width:auto!important">
<asp:Button ID="cmdTermC" runat="server" Text="Terms &amp; Conditions" 
        ToolTip="Click to view terms &amp; conditions" ValidationGroup="" />
</div>
</div>
<div id = "field"  class="submitButton" style="width:auto!important">
<asp:CheckBox ID="chkTerms" runat="server" AutoPostBack="True" 
        Text="Accept Terms &amp; Conditions" /></div>
