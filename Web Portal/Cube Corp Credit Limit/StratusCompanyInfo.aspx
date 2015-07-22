<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="StratusCompanyInfo.aspx.vb" Inherits="CUBE.StratusCompanyInfo" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">

        function GetRadWindow() {
            var oWindow = null;
            if (window.radWindow) oWindow = window.radWindow;
            else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow;
            return oWindow;
        }

        function onLoad(sender, eventArgs) {
            sender.get_items(); //This is enough to force Items initialization. 
        } 
</script>
 <script type="text/javascript">
     var GB_ROOT_DIR = "./greybox/";
    </script>
 <script type="text/javascript" src="greybox/AJS.js"></script>
    <script type="text/javascript" src="greybox/AJS_fx.js"></script>
    <script type="text/javascript" src="greybox/gb_scripts.js"></script>
    <link rel="stylesheet" href="greybox/gb_styles.css" type="text/css" media="all"  />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="clear">&nbsp;</div>
<div class="header">
    <h1>Stratus Company Management</h1>
    <telerik:radajaxmanagerproxy ID="RadAjaxManagerProxy1" runat="server">
    </telerik:radajaxmanagerproxy>
    <telerik:radajaxloadingpanel ID="lpProfile" Runat="server" Skin="Default">
    </telerik:radajaxloadingpanel>
    <telerik:radwindowmanager ID="rwmCompany" runat="server">
    </telerik:radwindowmanager>
</div>

<div>
<div id="formContainerHalf">
<div id="label">
    <asp:Label ID="lblParent" runat="server" Text="Parent Company"></asp:Label>
</div>
<div id="field">
    <span class="validation">
    <telerik:radcombobox ID="rcbCompanies" Runat="server" AllowCustomText="False" 
        MarkFirstMatch="True">
    </telerik:radcombobox>
    </span></div>
<div id="validation">

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
    </div>
<div id="field">
    <telerik:radtextbox ID="txtName" runat="server" ValidationGroup="submit"></telerik:radtextbox>
    <span class="validation">*</span></div>
<div id="validation">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtName" CssClass="validation" 
        ErrorMessage="The name is required" ValidationGroup="submit"></asp:RequiredFieldValidator>
</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblVat" runat="server" Text="VAT Number"></asp:Label>
</div>
<div id="field">
    <telerik:radtextbox ID="txtVATNumber" runat="server" ValidationGroup="submit"></telerik:radtextbox>
    </div>
<div id="validation">

</div>
<div id="clear"></div>
<div id="label"><asp:Label ID="Label4" runat="server" Text="Administrator Email"></asp:Label></div>
<div id="field"> <telerik:RadTextBox ID="txtAdminEmail" runat="server" ValidationGroup="submit"></telerik:RadTextBox>
<span class="validation">*</span>
</div>
<div id="validation">  
     
    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
        ControlToValidate="txtAdminEmail" CssClass="validation" 
        ErrorMessage="Admin Email is required" ValidationGroup="submit" 
        SetFocusOnError="True"></asp:RequiredFieldValidator>
    </div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblReference" runat="server" Text="Reference"></asp:Label>
    </div>
<div id="field">
                <telerik:radtextbox ID="txtReference" Runat="server">
                </telerik:radtextbox>
            
</div>
<div id="validation">

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblID" runat="server" Text="ID/Reg Number"></asp:Label>
    </div>
<div id="field">
    <telerik:radtextbox ID="txtRegNumber" runat="server" 
        ValidationGroup="submit"></telerik:radtextbox>
    <span class="validation">*</span></div>
<div id="validation">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtRegNumber" CssClass="validation" 
        ErrorMessage="The ID/Reg # is required" ValidationGroup="submit"></asp:RequiredFieldValidator>
</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblCompanyType" runat="server" Text="Company Type"></asp:Label>
</div>
<div id="field">
    
    <telerik:radcombobox ID="cboCompanyType" runat="server" 
        DataSourceID="ldsCtype" DataTextField="Name" DataValueField="ID">
        <CollapseAnimation Duration="200" Type="OutQuint" />
        <ExpandAnimation Type="OutQuart" />
    </telerik:radcombobox>
    
    </div>
<div id="validation">

    <asp:LinqDataSource ID="ldsCtype" runat="server" 
        ContextTypeName="CUBE.DBDataContext" EntityTypeName="" Select="new (Name, ID)" 
        TableName="CompanyTypes">
    </asp:LinqDataSource>

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblFormat" runat="server" Text="Preferred Fax Format"></asp:Label>
</div>
<div id="field">
    <asp:RadioButton ID="optPDF" runat="server" Checked="True" GroupName="format" 
        Text="PDF" />
    <asp:RadioButton ID="optTiff" runat="server" GroupName="format" Text="TIFF" />
    </div>
<div id="validation">

</div>
<div id="clear"></div>
   
</div>
<div id="formContainerHalf">
<div id="label">
    <asp:Label ID="lblPostal" runat="server" Text="Postal Address"></asp:Label>
</div>
<div id="field">
    <telerik:radtextbox ID="txtPostalAddress" runat="server" Rows="3" 
        TextMode="MultiLine" ValidationGroup="submit">
    </telerik:radtextbox>
    <span class="validation" style="top: 0px">*</span></div>
<div id="validation">

    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
        ControlToValidate="txtPostalAddress" CssClass="validation" 
        ErrorMessage="Postal address is required" ValidationGroup="submit">Phone is required.</asp:RequiredFieldValidator>

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblPhysical" runat="server" Text="Physical Address"></asp:Label>
</div>
<div id="field">
    <telerik:radtextbox ID="txtPhysicalAddress" runat="server" Rows="3" 
        TextMode="MultiLine">
    </telerik:radtextbox>
    </div>
<div id="validation">

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblPhone" runat="server" Text="Phone Number"></asp:Label>
    </div>
<div id="field">
    <telerik:radtextbox ID="txtPhone" runat="server" ValidationGroup="submit"></telerik:radtextbox>
    <span class="validation">*</span></div>
<div id="validation">

    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ControlToValidate="txtPhone" CssClass="validation" 
        ErrorMessage="Phone is required" ValidationGroup="submit">Phone is required.</asp:RequiredFieldValidator>

</div>
<div id="clear"></div>

<div id="label">
    <asp:Label ID="lblContact" runat="server" Text="Contact Person"></asp:Label>
    </div>
<div id="field">
    <telerik:radtextbox ID="txtContact" runat="server" ValidationGroup="submit"></telerik:radtextbox>
    <span class="validation">*</span></div>
<div id="validation">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
        ControlToValidate="txtContact" CssClass="validation" 
        ErrorMessage="Contact person is required" ValidationGroup="submit">Contact person is required.</asp:RequiredFieldValidator>
</div>
<div id="clear"></div>
<div id="label">Ext Account Number</div>
<div id="field">
    <telerik:RadTextBox ID="txtAccount" runat="server" 
        ValidationGroup="submit"></telerik:RadTextBox>
    </div>
<div id="validation"></div>
</div>
<div id="clear"></div>
</div>
<asp:Panel ID="panAdminSettings" runat="server" Visible="false" >
<div id="clear">&nbsp;</div>
<div class="header">
<h2>Admin settings</h2>
    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy2" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="cmdCreate">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="cboGroupCode" 
                        LoadingPanelID="rplCAdmin" />
                    <telerik:AjaxUpdatedControl ControlID="txtNewGC" LoadingPanelID="rplCAdmin" />
                    <telerik:AjaxUpdatedControl ControlID="litNewGC" LoadingPanelID="rplCAdmin" />
                    <telerik:AjaxUpdatedControl ControlID="cmdCreate" LoadingPanelID="rplCAdmin" />
                    <telerik:AjaxUpdatedControl ControlID="cmdCreateGC" 
                        LoadingPanelID="rplCAdmin" />
                    <telerik:AjaxUpdatedControl ControlID="lblGroupHeading" />
                    <telerik:AjaxUpdatedControl ControlID="txtGBalance" />
                    <telerik:AjaxUpdatedControl ControlID="txtGPayment" />
                    <telerik:AjaxUpdatedControl ControlID="lblGPayment" />
                    <telerik:AjaxUpdatedControl ControlID="txtGLimit" />
                    <telerik:AjaxUpdatedControl ControlID="chkGSuspended" />
                    <telerik:AjaxUpdatedControl ControlID="lblPercentage" />
                    <telerik:AjaxUpdatedControl ControlID="cmdATG" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="cmdCancelGC">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="cboGroupCode" 
                        LoadingPanelID="rplCAdmin" />
                    <telerik:AjaxUpdatedControl ControlID="panGC" 
                        LoadingPanelID="rplCAdmin" />
                    <telerik:AjaxUpdatedControl ControlID="lblGroupHeading" />
                    <telerik:AjaxUpdatedControl ControlID="txtGBalance" />
                    <telerik:AjaxUpdatedControl ControlID="txtGPayment" />
                    <telerik:AjaxUpdatedControl ControlID="lblGPayment" />
                    <telerik:AjaxUpdatedControl ControlID="txtGLimit" />
                    <telerik:AjaxUpdatedControl ControlID="chkGSuspended" />
                    <telerik:AjaxUpdatedControl ControlID="lblPercentage" />
                    <telerik:AjaxUpdatedControl ControlID="cmdATG" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="cmdCreateGC">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="cboGroupCode" 
                        LoadingPanelID="rplCAdmin" />
                    <telerik:AjaxUpdatedControl ControlID="panGC" 
                        LoadingPanelID="rplCAdmin" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="chkAgent">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="cboLevel" LoadingPanelID="rplCAdmin" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="chkSuspend">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="chkOutboundAllowed" 
                        LoadingPanelID="lpProfile" UpdatePanelRenderMode="Inline" />
                    <telerik:AjaxUpdatedControl ControlID="litSuspend" LoadingPanelID="rplCAdmin" 
                        UpdatePanelRenderMode="Inline" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="txtGPayment">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lblGPayment" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="cboStratusLevel">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtBusyPages" 
                        LoadingPanelID="rplCAdmin" UpdatePanelRenderMode="Inline" />
                    <telerik:AjaxUpdatedControl ControlID="cboMinimumBilling" 
                        LoadingPanelID="rplCAdmin" UpdatePanelRenderMode="Inline" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="chkISV">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="cboStratusLevel" 
                        LoadingPanelID="rplCAdmin" UpdatePanelRenderMode="Inline" />
                    <telerik:AjaxUpdatedControl ControlID="cboMinimumBilling" LoadingPanelID="rplCAdmin" 
                        UpdatePanelRenderMode="Inline" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="chkTerms">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="cmdUpdate" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>
    <telerik:RadAjaxLoadingPanel ID="rplCAdmin" Runat="server" Skin="Default">
    </telerik:RadAjaxLoadingPanel>
</div>
<div>
<div id="formContainerHalf">
<div id="label">
    <asp:Label ID="lblDomain" runat="server" Text="Domain Name"></asp:Label>
</div>
<div id="field" style="width:auto">
    http://
    <telerik:RadTextBox ID="txtURL" runat="server">
    </telerik:RadTextBox>
    </div>
<div id="validation">

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblSkin" runat="server" Text="Skin"></asp:Label>
    </div>
<div id="field">
            
    <telerik:RadComboBox ID="cboSkin" runat="server" DataTextField="Name" 
        DataValueField="ID">
        <Items>
            <telerik:RadComboBoxItem runat="server" Text="(Inherit)" Value="Inherit" />
            <telerik:RadComboBoxItem runat="server" Text="Black" Value="Black" />
            <telerik:RadComboBoxItem runat="server" Text="Default" Value="Default" />
            <telerik:RadComboBoxItem runat="server" Text="Default2006" 
                Value="Default2006" />
            <telerik:RadComboBoxItem runat="server" Text="Hay" Value="Hay" />
            <telerik:RadComboBoxItem runat="server" Text="Inox" Value="Inox" />
            <telerik:RadComboBoxItem runat="server" Text="Office2007" Value="Office2007" />
            <telerik:RadComboBoxItem runat="server" Text="Outlook" Value="Outlook" />
            <telerik:RadComboBoxItem runat="server" Text="Sunset" Value="Sunset" />
            <telerik:RadComboBoxItem runat="server" Text="Vista" Value="Vista" />
            <telerik:RadComboBoxItem runat="server" Text="Web20" Value="Web20" />
            <telerik:RadComboBoxItem runat="server" Text="WebBlue" Value="WebBlue" />
        </Items>
        <CollapseAnimation Duration="200" Type="OutQuint" />
    </telerik:RadComboBox>
            
    </div>
<div id="validation">
</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblServer" runat="server" Text="Server"></asp:Label>
</div>
<div id="field">
    <telerik:RadComboBox ID="cboServer" runat="server" DataSourceID="ldsServers" 
        DataTextField="Name" DataValueField="ID">
        <Items>
            <telerik:RadComboBoxItem runat="server" Text="(Inherit)" Value="Inherit" />
            <telerik:RadComboBoxItem runat="server" Text="Black" Value="Black" />
            <telerik:RadComboBoxItem runat="server" Text="Default" Value="Default" />
            <telerik:RadComboBoxItem runat="server" Text="Default2006" 
                Value="Default2006" />
            <telerik:RadComboBoxItem runat="server" Text="Hay" Value="Hay" />
            <telerik:RadComboBoxItem runat="server" Text="Inox" Value="Inox" />
            <telerik:RadComboBoxItem runat="server" Text="Office2007" Value="Office2007" />
            <telerik:RadComboBoxItem runat="server" Text="Outlook" Value="Outlook" />
            <telerik:RadComboBoxItem runat="server" Text="Sunset" Value="Sunset" />
            <telerik:RadComboBoxItem runat="server" Text="Vista" Value="Vista" />
            <telerik:RadComboBoxItem runat="server" Text="Web20" Value="Web20" />
            <telerik:RadComboBoxItem runat="server" Text="WebBlue" Value="WebBlue" />
        </Items>
        <CollapseAnimation Duration="200" Type="OutQuint" />
    </telerik:RadComboBox>
    </div>
<div id="validation">
    <asp:LinqDataSource ID="ldsServers" runat="server" 
        ContextTypeName="CUBE.DBDataContext" Select="new (ID, Name)" 
        TableName="Servers">
    </asp:LinqDataSource>
</div>
<div id="clear"></div>

<div id="label">
    <asp:Label ID="lblMaxImport" runat="server" Text="Max import records"></asp:Label>
    </div>
<div id="field" style="width:auto">
    <telerik:RadNumericTextBox ID="txtMaxImport" runat="server"></telerik:RadNumericTextBox>
    (<asp:Label ID="lblImportedRecords" runat="server" Text="0"></asp:Label>)</div>
<div id="validation">
</div>
<div id="clear"></div>
           <div id="label">
    </div>
    <div id="field" style="width:auto">
        <asp:Button ID="cmdViewTemplates" runat="server" Text="View Templates" />
        <asp:Button ID="cmdViewCoverpages" runat="server" Text="View Coverpages" />
    </div>
       <div id="clear"></div>
</div>
<div id="formContainerHalf">

<div id="label">
    <asp:Label ID="lblGC" runat="server" Text="Group Code"></asp:Label>
    </div>
<div id="field" style="width:200px!important">
    <div>
        <telerik:RadComboBox ID="cboGroupCode" runat="server" AllowCustomText="False" 
            DataSourceID="dsGroupCodes" DataTextField="groupcode" 
            DataValueField="groupcode" Height="109px" ValidationGroup="GC">
            <CollapseAnimation Duration="200" Type="OutQuint" />
        </telerik:RadComboBox>
    </div>
    <div><asp:CheckBox ID="chkSubCom" runat="server" Text="Apply to Sub Companies" /></div>
    <asp:Panel ID="panGC" runat="server" Visible="False">
    <asp:Label ID="lblTitle" runat="server" Text="Create Group Code" Font-Bold="True"></asp:Label>
    <div>
        <asp:TextBox ID="txtNewGC" runat="server" ValidationGroup="NewGrpCode">STL</asp:TextBox>
    <div>
    <div id="clear" class="validation">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
            ControlToValidate="txtNewGC" CssClass="validation" 
            ErrorMessage="Contact person is required" ValidationGroup="NewGrpCode">Group Code Required</asp:RequiredFieldValidator>
        <br />
        <asp:Literal ID="litNewGC" runat="server"></asp:Literal>
        </div>
        <div id="field" class="submitButton" style="width:auto!important">
            <asp:Button ID="cmdCreate" runat="server" Text="Create" 
            ValidationGroup="NewGrpCode" />
        </div>
        <div id="field" class="submitButton"style="width:auto!important">
            <asp:Button ID="cmdCancelGC" runat="server" Text="Cancel" 
            ValidationGroup="Cancel" />
        </div>
        
        </div>
    <div></div>
    </asp:Panel>
    
</div>
<div id="validation">
    <asp:SqlDataSource ID="dsGroupCodes" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        SelectCommand="select distinct ltrim(rtrim(groupcode)) as groupcode from company order by groupcode">
    </asp:SqlDataSource>
    <asp:Button ID="cmdCreateGC" runat="server" Text="New Group Code" 
        
        ToolTip="Sends user's welcome email with login details and the user fax number to users email address" 
        ValidationGroup="GC" />
    </div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblRoles" runat="server" Text="Status"></asp:Label>
    </div>
<div id="field" style="width:auto!Important">
    <div><asp:CheckBox ID="chkActive" runat="server" Checked="True" Text="Active" 
        ToolTip="Account is active" />
        </div>
    <div>
        <asp:CheckBox ID="chkAgent" runat="server" Text="Agent" 
        ToolTip="Is this an ordinary company or agent" AutoPostBack="True" />
        </div>
    <div>
        <asp:CheckBox ID="chkOutboundAllowed" runat="server" Text="Outbound" 
            ToolTip="Can have outbound users" Checked="True" />
            </div>
    <div> 
        <asp:CheckBox ID="chkSuspend" runat="server" 
        Text="Suspended" ToolTip="Suspend all outbound users (move to inbound)" 
            AutoPostBack="True" />
        </div>
    <div> 
        <asp:CheckBox ID="chkSendInvites" runat="server" Checked="true"
        Text="Send Invitations" ToolTip="Send emails out inviting people to get a fax number" />
        </div>
        <div> 
        <asp:CheckBox ID="chkBill087" runat="server" 
        Text="Billable Inbound 087" ToolTip="Set Inbound 087 to be Billable" />
        </div>
         <div> 
        <asp:CheckBox ID="chkBP" runat="server" 
        Text="Business Partner" ToolTip="Inbound pages will be billed" />
             <br />
             <asp:CheckBox ID="chkUseCoverpage" runat="server" Text="Use Standard Coverpage" 
                 ToolTip="Inbound pages will be billed" />
        </div>
    </div>
    <div id="validation" class="validation">
        <asp:Literal ID="litSuspend" runat="server"></asp:Literal>
    </div>
<div id="clear"></div>

</div>
  <div id="clear"></div>
  <hr />
<div id="formContainerHalf">
  <asp:Panel ID="GroupLimitPanel" runat="server" Height="0px" 
        BorderStyle="None" Visible="False">
          <h5>Group Code Limitation</h5>
    <div id="label">
        <asp:Label ID="lblGroupHeading" runat="server" ForeColor="#CC0000"></asp:Label></div>
    <div id="clear"></div>
      <div id="label">
        <asp:Label ID="Label2" runat="server" Text="Balance:"></asp:Label></div>
    <div id="field">
        <telerik:RadNumericTextBox ID="txtGBalance" Runat="server" Enabled="False">
        </telerik:RadNumericTextBox>
        </div>
    <div id="validation"></div>

     <div id="clear"></div>
    <div id="label">Payment:</div>
    <div id="field">
    <telerik:RadNumericTextBox ID="txtGPayment" Runat="server" MinValue="0" 
            AutoPostBack="True">
        </telerik:RadNumericTextBox>
    </div>
    <div id="validation">
    <asp:Label ID="lblGPayment" runat="server" ForeColor="Red"></asp:Label>
    </div>

    <div id="clear"></div>
      <div id="label">
        <asp:Label ID="Label1" runat="server" Text="Limit:"></asp:Label></div>
    <div id="field">
        <telerik:RadNumericTextBox ID="txtGLimit" Runat="server" MinValue="0">
        </telerik:RadNumericTextBox>
        </div>
    <div id="validation"></div>
   
    <div id="clear"></div>
    <div id="label">
        <asp:Label ID="Label3" runat="server" Text="Suspended:"></asp:Label></div>
    <div id="field">
        <asp:CheckBox ID="chkGSuspended" runat="server" AutoPostBack="True" /></div>
    <div id="validation"></div>

    <div id="clear"></div>
    <div id="label">
        <asp:Label ID="lblPercentage" runat="server" ForeColor="#CC0000"></asp:Label></div>
    <div id="clear"></div>
    <div id="field">
        <asp:Button ID="cmdATG" runat="server" Text="View GC Audit Trail" 
            ToolTip="View changes made to users account" />
        </div>
          
        <div id="clear"></div>
        <div id="label"></div>
        <div id="field"></div>
           <div id="validation">    
        <a id="Anchor" href="" title="Usage Graphs" 
                    rel="gb_page_center[1200, 581]" runat="server" >
               <asp:Image ID="imgVoxGraphs" runat="server" ImageUrl="~/Logo Images/VoxGraph.png" 
                style="border:none" Height="40px" Width="151px" />
        </a>
            </div>
            <div id="clear"></div>
    </asp:Panel>
</div>
      <div id="formContainerHalf">
       <asp:Panel ID="CompanyLimitPanel" runat="server">
        <h5>
            Company Limitation</h5>
        <div ID="label">
            <asp:Label ID="lblCreditNote" runat="server" ForeColor="Red"></asp:Label>
        </div>
        <div ID="clear">
        </div>
        <div ID="Div4">
        </div>
        <div ID="label">
            <asp:Label ID="lblBalance" runat="server" Text="Credit Balance"></asp:Label>
        </div>
        <div ID="field">
            <telerik:RadNumericTextBox ID="txtBalance" runat="server" Enabled="False">
            </telerik:RadNumericTextBox>
        </div>
        <div ID="validation">
        </div>
        <div ID="clear">
        </div>
        <div ID="label">
            Payment</div>
        <div ID="field">
            <telerik:RadNumericTextBox ID="txtCPayment" runat="server" AutoPostBack="True" 
                MinValue="0">
            </telerik:RadNumericTextBox>
        </div>
        <div ID="validation">
            <asp:Label ID="lblCPayment" runat="server" ForeColor="Red"></asp:Label>
        </div>
        <div ID="clear">
        </div>
        <div ID="label">
            <asp:Label ID="lblLimit" runat="server" Text="Credit Limit"></asp:Label>
        </div>
        <div ID="field">
            <telerik:RadNumericTextBox ID="txtLimit" runat="server" MinValue="0">
            </telerik:RadNumericTextBox>
        </div>
        <div ID="validation">
        </div>
        <div ID="clear">
        </div>
        <div ID="label">
            <asp:Label ID="lblPercentageC" runat="server" ForeColor="#CC0000"></asp:Label>
        </div>
        <div ID="clear">
        </div>
    </asp:Panel>
      </div>
      <div id="clear"></div>
      <hr />
     <div id="clear"></div>
<asp:Panel ID="panBill" visible="false" runat="server">
<div>
<div id="formContainerHalf">
    <div id="label">
        <asp:Label ID="lblChannels" runat="server" Text="Stratus Level"></asp:Label>
    </div>
    <div id="field" style="width:200px">
        <telerik:RadComboBox ID="cboStratusLevel" runat="server" 
            AutoPostBack="True" DataSourceID="sdsStartusConfig" 
            DataTextField="Level" DataValueField="ID" ClientIDMode="Inherit">
            <CollapseAnimation Duration="200" Type="OutQuint" />
            <CollapseAnimation Duration="200" Type="OutQuint" />
        </telerik:RadComboBox>
    </div>
     <div id="validation" style="width:auto">
         <asp:CheckBox ID="chkISV" runat="server" Checked="False" Text="ISV" 
             ToolTip="" AutoPostBack="True" />
    </div>
    <div id="clear"></div>
            <div id="label">
            <asp:Label ID="lblBusyHourPages" runat="server" Text="Busy Hour Pages"></asp:Label>
    </div>
    <div id="field" style="width:auto">
        <asp:Label ID="txtBusyPages" runat="server" Font-Bold="True"></asp:Label>
    </div>
    <div id="validation">
           <asp:Button ID="cmdRateSheet" runat="server" Text="Rate Sheet" />
    </div>
    
    <div id="clear"></div>
    <div ID="label">
        <asp:Label ID="lblTarget" runat="server" Text="Monthly target"></asp:Label>
    </div>
    <div ID="field">
        <telerik:RadNumericTextBox ID="txtMonthlyTarget" runat="server">
            <NumberFormat AllowRounding="True" DecimalDigits="0" />
        </telerik:RadNumericTextBox>
    </div>
    <div ID="validation">
    </div>
    <div ID="clear">
    </div>
    <div ID="label">
        <asp:Label ID="lblMinBilling" runat="server" Text="Minimum Billing"></asp:Label>
    </div>
    <div ID="field">
        <telerik:RadComboBox ID="cboMinimumBilling" runat="server" DataTextField="MinimumUseageFee" 
            DataValueField="ID" AutoPostBack="True" Enabled="False" 
            DataTextFormatString="{0:C}" Culture="(Default)" 
            DataSourceID="sdsStartusConfig">

            <CollapseAnimation Duration="200" Type="OutQuint" />
            <CollapseAnimation Duration="200" Type="OutQuint" />
        </telerik:RadComboBox>
        <asp:SqlDataSource ID="sdsStartusConfig" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Cube %>" 
            SelectCommand="GetStratusConfig" SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
    </div>
    <div ID="validation">
    </div>
    <div ID="clear">
    </div>
    <div ID="label">
        <asp:Label ID="lblBillingCode" runat="server" Text="Minimum Billing Code"></asp:Label>
    </div>
    <div ID="field">
        <telerik:RadTextBox ID="txtMinimumBillingCode" runat="server">
        </telerik:RadTextBox>
    </div>
    <div ID="validation">
    </div>
    <div id="clear"></div>
    <div id="label">MinimumPages</div>
    <div id="field">     
        <telerik:RadNumericTextBox ID="txtMinPages" Runat="server" Value="0">
            <NumberFormat DecimalDigits="0" />
        </telerik:RadNumericTextBox>
    </div>
    <div id="validation"></div>
    
    <div ID="clear">
    </div>
    <div ID="label">
        <asp:Label ID="lblID1" runat="server" Text="Sales Person" Visible="False"></asp:Label>
    </div>
    <div ID="field">
        <telerik:RadComboBox ID="cboSalesPerson" runat="server" DataTextField="Name" 
            DataValueField="ID" Width="150px" DataSourceID="ldsSalesPerson" 
            Visible="False">
            <CollapseAnimation Duration="200" Type="OutQuint" />
            <ExpandAnimation Type="OutQuart" />
        </telerik:RadComboBox>
    </div>
    <div ID="validation">
        <asp:LinqDataSource ID="ldsSalesPerson" runat="server" 
            ContextTypeName="CUBE.DBDataContext" EntityTypeName="" Select="new (ID, Name)" 
            TableName="SalesPersons">
        </asp:LinqDataSource>
    </div>
    <div ID="clear">
    </div>
    </div>
<div id="formContainerHalf">

    <div ID="label">
        <asp:Label ID="lblLivels" runat="server" Text="Company Level"></asp:Label>
    </div>
    <div ID="field">
        <telerik:RadComboBox ID="cboLevel" runat="server" DataSourceID="ldsLevels" 
            DataTextField="Name" DataValueField="ID" RadComboBoxImagePosition="Right">
            <CollapseAnimation Duration="200" Type="OutQuint" />
            <ExpandAnimation Type="OutQuart" />
        </telerik:RadComboBox>
    </div>
    <div ID="validation">
        <asp:LinqDataSource ID="ldsLevels" runat="server" 
            ContextTypeName="CUBE.DBDataContext" OrderBy="Name" Select="new (ID, Name)" 
            TableName="Levels" Where="Deleted == @Deleted">
            <WhereParameters>
                <asp:Parameter DefaultValue="false" Name="Deleted" Type="Boolean" />
            </WhereParameters>
        </asp:LinqDataSource>
        &nbsp;<asp:HiddenField ID="hfParentLevel" runat="server" />
    </div>
    <div id="clear"></div>
    <div ID="label">
        <asp:Label ID="lblComType" runat="server" Text="Inbound Com. Type"></asp:Label>
    </div>
    <div ID="field">
        <telerik:RadComboBox ID="cboICommissionType" runat="server" 
            DataSourceID="ldsCommissionTypes" DataTextField="Name" DataValueField="ID" 
            RadComboBoxImagePosition="Right" Width="150px">
            <CollapseAnimation Duration="200" Type="OutQuint" />
            <ExpandAnimation Type="OutQuart" />
        </telerik:RadComboBox>
    </div>
    <div ID="validation">
        <asp:LinqDataSource ID="ldsCommissionTypes" runat="server" 
            ContextTypeName="CUBE.DBDataContext" OrderBy="Name" Select="new (ID, Name)" 
            TableName="CommissionTypes" Where="Deleted == @Deleted">
            <WhereParameters>
                <asp:Parameter DefaultValue="False" Name="Deleted" Type="Boolean" />
            </WhereParameters>
        </asp:LinqDataSource>
    </div>
    <div ID="clear">
    </div>
    <div ID="label">
        <asp:Label ID="Commission" runat="server" Text="Inbound Commission"></asp:Label>
    </div>
    <div ID="field">
        <telerik:RadNumericTextBox ID="ICommission" runat="server" ValidationGroup="submit">
        </telerik:RadNumericTextBox>
        </div>
    <div ID="validation">
    </div>
    <div ID="clear">
    </div>
    <div ID="label">
        <asp:Label ID="lblComTypeOut" runat="server" Text="Outbound Com. Type"></asp:Label>
    </div>
    <div ID="field">
        <telerik:RadComboBox ID="cboOCommissionType" runat="server" 
            DataSourceID="ldsCommissionTypes0" DataTextField="Name" DataValueField="ID" 
            RadComboBoxImagePosition="Right" Width="150px">
            <CollapseAnimation Duration="200" Type="OutQuint" />
            <ExpandAnimation Type="OutQuart" />
        </telerik:RadComboBox>
    </div>
    <div ID="validation">
        <asp:LinqDataSource ID="ldsCommissionTypes0" runat="server" 
            ContextTypeName="CUBE.DBDataContext" OrderBy="Name" Select="new (ID, Name)" 
            TableName="CommissionTypes" Where="Deleted == @Deleted">
            <WhereParameters>
                <asp:Parameter DefaultValue="False" Name="Deleted" Type="Boolean" />
            </WhereParameters>
        </asp:LinqDataSource>
    </div>
    <div ID="clear">
    </div>
    <div ID="label">
        <asp:Label ID="lblOutCom" runat="server" Text="Outbound Commission"></asp:Label>
    </div>
    <div ID="field">
        <telerik:RadNumericTextBox ID="OCommission" Runat="server">
        </telerik:RadNumericTextBox>
    </div>
    <div ID="validation">
    </div>
    <div ID="clear">
    </div>
    </div>
</div>
</asp:Panel>

    </asp:Panel>
    
<div>
<div id="clear"></div>

<div id = "field"  class="submitButton" style="width:auto!important">
<asp:Button ID="cmdUpdate" runat="server" Text="Save" ValidationGroup="submit" 
        Enabled="False" />
</div>
<div id = "field" class="submitButton"  style="width:auto!important">
<asp:Button ID="cmdCancel" runat="server" Text="Cancel" />
</div>
<div id ="field">    <asp:Button ID="cmdAT" runat="server" Text="View Audit Trail" 
        ToolTip="View changes made to Company" />
      </div
      <div id ="field">    
      </div>
      <div id="field">  <asp:CheckBox ID="chkTerms" runat="server" AutoPostBack="True" 
        Text="Confirm Changes" /></div>
</div>
</asp:Content>
