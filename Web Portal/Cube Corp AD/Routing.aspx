<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Routing.aspx.vb" Inherits="CUBE.Routing" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear">&nbsp;</div>
    <div class="header">
    <h1>Number Conversions &amp; Routing Manager</h1>
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
    <asp:Label ID="lblStart" runat="server" Text="Range Start"></asp:Label>
    </div>
<div id="field">
    <span class="validation">
    <telerik:RadNumericTextBox ID="txtStart" Runat="server" CausesValidation="True">
        <NumberFormat DecimalDigits="0" GroupSeparator="" />
    </telerik:RadNumericTextBox>
    *</span></div>
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
    <span class="validation">
    <telerik:RadNumericTextBox ID="txtEnd" Runat="server" CausesValidation="True">
        <NumberFormat DecimalDigits="0" GroupSeparator="" />
    </telerik:RadNumericTextBox>
    *</span></div>
<div id="validation">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtStart" CssClass="validation" 
        ErrorMessage="The range end is required" ValidationGroup="Save"></asp:RequiredFieldValidator>
</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblCode" runat="server" Text="Routing Code"></asp:Label>
</div>
<div id="field">
    <span class="validation">
    <telerik:RadNumericTextBox ID="txtCode" Runat="server" CausesValidation="True">
        <NumberFormat DecimalDigits="0" GroupSeparator="" />
    </telerik:RadNumericTextBox>
    *</span></div>
<div id="validation">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="txtCode" CssClass="validation" 
        ErrorMessage="The code is required" ValidationGroup="Save"></asp:RequiredFieldValidator>

</div>
<div id="clear"></div>
<div id="label">
    # of digits from telcom</div>
<div id="field">
    <span class="validation">
    <telerik:RadNumericTextBox ID="txtTelcom" Runat="server" 
        CausesValidation="True">
        <NumberFormat DecimalDigits="0" GroupSeparator="" />
    </telerik:RadNumericTextBox>
    *</span></div>
<div id="validation">

    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtStart" CssClass="validation" 
        ErrorMessage="The range end is required" ValidationGroup="Save"></asp:RequiredFieldValidator>

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblDigits" runat="server" Text="# of suffix digits"></asp:Label>
    </div>
<div id="field">
    <span class="validation">
    <telerik:RadNumericTextBox ID="txtDigits" Runat="server" 
        CausesValidation="True">
        <NumberFormat DecimalDigits="0" GroupSeparator="" />
    </telerik:RadNumericTextBox>
    *</span></div>
<div id="validation">

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtDigits" CssClass="validation" 
        ErrorMessage="The number of digits is required" ValidationGroup="Save"></asp:RequiredFieldValidator>

</div>
<div id="clear"></div>
<div id="clear"></div>
<div id ="button">
    
    <asp:Button ID="cmdCreate" runat="server" Text="Save" Width="87px" 
        ValidationGroup="Save" />
    
</div>
</div>
<div id="formgridcontainer">
    <telerik:RadGrid ID="rdgConversions" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" GridLines="None">
        <MasterTableView DataKeyNames="id">
            <RowIndicatorColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </RowIndicatorColumn>
            <ExpandCollapseColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </ExpandCollapseColumn>
            <Columns>
                <telerik:GridBoundColumn DataField="name" DefaultInsertValue="" 
                    HeaderText="Numberbank" UniqueName="name">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="startnumber" DefaultInsertValue="" 
                    HeaderText="Start" UniqueName="start">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="endnumber" DefaultInsertValue="" 
                    HeaderText="End" UniqueName="end">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="code" DefaultInsertValue="" 
                    HeaderText="Routing Code" UniqueName="code">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="routeddigits" DefaultInsertValue="" 
                    UniqueName="route" HeaderText="Telcom Provider Digits">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="NumberOfDigits" DefaultInsertValue="" 
                    HeaderText=" # of suffix digits" UniqueName="suffix">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="availablenumbers" DefaultInsertValue="" 
                    HeaderText="# of Available Numbers" UniqueName="available">
                </telerik:GridBoundColumn>
                <telerik:GridButtonColumn ButtonType="ImageButton" CommandName="Editc" 
                    ImageUrl="~/usercontent/default/edit.gif" UniqueName="Editc" >
                </telerik:GridButtonColumn>
                <telerik:GridButtonColumn ButtonType="ImageButton" CommandName="Deletec" 
                    ImageUrl="~/usercontent/default/delete.gif" UniqueName="Deletec" >
                </telerik:GridButtonColumn>
            </Columns>
        </MasterTableView>
    </telerik:RadGrid>
</div>
<div id="clear"><br /></div>
</asp:Content>
