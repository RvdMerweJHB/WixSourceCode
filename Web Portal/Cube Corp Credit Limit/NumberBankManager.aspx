<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="NumberBankManager.aspx.vb" Inherits="CUBE.NumberBankManager" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
    function onLoad(sender, eventArgs) 
    {
        sender.get_items(); //This is enough to force Items initialization. 
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear">&nbsp;</div>
    <div class="header">
    <h1>Numberbank Manager</h1>
</div>
<div id="clear">
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" 
        Skin="Default">
    </telerik:RadAjaxLoadingPanel>
    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="chkUnassigned">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="cboCompany" 
                        LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>
    </div>
<div id="formContainer">
<div id="label">
    <asp:Label ID="lblNumberbankName" runat="server" Text="Numberbank Name"></asp:Label>
</div>
<div id="field">
    <telerik:RadTextBox ID="txtNName" runat="server"></telerik:RadTextBox>
    <span class="validation">*</span></div>
<div id="validation">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtNName" CssClass="validation" 
        ErrorMessage="The Name is required" ValidationGroup="Save"></asp:RequiredFieldValidator>

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblStart" runat="server" Text="Range Start"></asp:Label>
    </div>
<div id="field">
    <telerik:RadTextBox ID="txtStart" runat="server"></telerik:RadTextBox>
    <span class="validation">*</span></div>
<div id="validation">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtStart" CssClass="validation" 
        ErrorMessage="The range start is required" ValidationGroup="Save"></asp:RequiredFieldValidator>
</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblEnd" runat="server" Text="Range End"></asp:Label>
</div>
<div id="field">
    <telerik:RadTextBox ID="txtEnd" runat="server"></telerik:RadTextBox>
    <span class="validation">*</span></div>
<div id="validation">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtStart" CssClass="validation" 
        ErrorMessage="The range end is required" ValidationGroup="Save"></asp:RequiredFieldValidator>

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblCompanyName" runat="server" Text="Company Name" 
        Visible="False"></asp:Label>
    </div>
<div id="field">
    <telerik:RadComboBox ID="cboCompany" Runat="server" Enabled="False" 
        Visible="False">
    </telerik:RadComboBox>
</div>
<div id="validation">

</div>
<div id="clear"></div>
<div id="label"></div>
    
<div id="field">
    <asp:CheckBox ID="chkUnassigned" runat="server" AutoPostBack="True" 
        Checked="True" Text="Unassigned" Visible="False" />
</div>
<div id="validation">

</div>
<div id="clear"></div>
<div id ="button">
    
    <asp:Button ID="cmdCreate" runat="server" Text="Save" Width="87px" 
        ValidationGroup="Save" />
    
</div>
</div>
<div id="formgridcontainer">
    <telerik:RadGrid ID="rdgNumBank" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" GridLines="None">
        <MasterTableView DataKeyNames="id">
            <RowIndicatorColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </RowIndicatorColumn>
            <ExpandCollapseColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </ExpandCollapseColumn>
            <Columns>
                <telerik:GridBoundColumn DataField="companyid" DefaultInsertValue="" 
                    UniqueName="companyid" Visible="False">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="name" DefaultInsertValue="" 
                    HeaderText="Numberbank Name" UniqueName="name">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="startnumber" DefaultInsertValue="" 
                    HeaderText="Range Start" UniqueName="start">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="endnumber" DefaultInsertValue="" 
                    HeaderText="Range End" UniqueName="end">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="companyname" DefaultInsertValue="" 
                    HeaderText="Company Name" UniqueName="companyname">
                </telerik:GridBoundColumn>
                <telerik:GridCheckBoxColumn DataField="deleted" DefaultInsertValue="" 
                    HeaderText="Deleted" UniqueName="deleted">
                </telerik:GridCheckBoxColumn>
                <telerik:GridButtonColumn ButtonType="ImageButton" CommandName="Editnb" 
                    ImageUrl="~/usercontent/default/edit.gif" UniqueName="Editnb">
                </telerik:GridButtonColumn>
                <telerik:GridButtonColumn ButtonType="ImageButton" CommandName="Deletenb" 
                    ImageUrl="~/usercontent/default/delete.gif" UniqueName="Deletenb" ConfirmText="You are about to delete a numberbank. Are you sure you want to do this?">
                </telerik:GridButtonColumn>
            </Columns>
        </MasterTableView>
    </telerik:RadGrid>
</div>
</asp:Content>
