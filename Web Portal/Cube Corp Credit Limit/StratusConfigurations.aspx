<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="StratusConfigurations.aspx.vb" Inherits="CUBE.StratusConfigurations" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear">&nbsp;</div>
<div class="header">
    <h1>Stratus Configuration</h1>
    <telerik:radajaxmanagerproxy ID="RadAjaxManagerProxy1" runat="server">
    </telerik:radajaxmanagerproxy>
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" Skin="Default">
    </telerik:RadAjaxLoadingPanel>
</div>
<div id="clear">
<p class="validation">
    <asp:Literal ID="litFeedback" runat="server"></asp:Literal>
</p>
</div>
<div id="formContainerHalf">
<div id="label">
    <asp:Label ID="lblChannels" runat="server" Text="Level"></asp:Label>
    </div>
<div id="field">
    <telerik:RadNumericTextBox ID="txtLevel" Runat="server" 
        ValidationGroup="statconfig" DataType="System.Int64">
        <NumberFormat DecimalDigits="0" />
    </telerik:RadNumericTextBox>
    <span class="validation">*</span></div>
<div id="validation">
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtLevel" CssClass="validation" 
        ErrorMessage="Level Number is required" ValidationGroup="statconfig"></asp:RequiredFieldValidator>

</div>
<div id="clear"></div>
<div id="label">
    
    <asp:Label ID="lblPages" runat="server" Text="Busy Hour pages"></asp:Label>
</div>
<div id="field">
    <telerik:radtextbox ID="txtPages" runat="server" ValidationGroup="statconfig"></telerik:radtextbox>
    <span class="validation">*</span></div>
<div id="validation">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtPages" CssClass="validation" 
        ErrorMessage="Busy  required" ValidationGroup="statconfig"></asp:RequiredFieldValidator>

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblMInUsage" runat="server" Text="Minimum Usage Fee"></asp:Label>
    </div>
<div id="field">
    <telerik:RadNumericTextBox ID="txtMinFee" Runat="server" Type="Currency" 
        ValidationGroup="statconfig" Culture="en-ZA">
    </telerik:RadNumericTextBox>
    <span class="validation">*</span></div>
<div id="validation">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtMinFee" CssClass="validation" 
        ErrorMessage="Minimum fee is required" ValidationGroup="statconfig"></asp:RequiredFieldValidator>

</div>

</div>
<div id="formContainerHalf">
    <telerik:RadGrid ID="rgStratusConfig" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataSourceID="sdsStratusConfig" 
        GridLines="None" CellSpacing="0">
<MasterTableView datakeynames="ID" datasourceid="sdsStratusConfig">
<CommandItemSettings ExportToPdfText="Export to Pdf"></CommandItemSettings>

<RowIndicatorColumn>
</RowIndicatorColumn>

<ExpandCollapseColumn>
</ExpandCollapseColumn>
    <Columns>
        <telerik:GridBoundColumn DataField="ID" DataType="System.Int32" 
            DefaultInsertValue="" HeaderText="ID" ReadOnly="True" SortExpression="ID" 
            UniqueName="ID">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Level" 
            FilterControlAltText="Filter Level column" HeaderText="Level" 
            SortExpression="Level" UniqueName="Level">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="BusyHourPages" DefaultInsertValue="" 
            HeaderText="BusyHourPages" SortExpression="BusyHourPages" 
            UniqueName="BusyHourPages" DataType="System.Int64" 
            FilterControlAltText="Filter BusyHourPages column">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Minimum Usage Fee" DataType="System.Decimal" 
            FilterControlAltText="Filter Minimum Usage Fee column" HeaderText="Minimum Usage Fee" 
            SortExpression="Minimum Usage Fee" UniqueName="Minimum Usage Fee" 
            ReadOnly="True">
        </telerik:GridBoundColumn>
    </Columns>

<EditFormSettings>
<EditColumn FilterControlAltText="Filter EditCommandColumn column"></EditColumn>
</EditFormSettings>
</MasterTableView>

<FilterMenu EnableImageSprites="False"></FilterMenu>

<HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Default"></HeaderContextMenu>
    </telerik:RadGrid>
    <asp:SqlDataSource ID="sdsStratusConfig" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        
        
        SelectCommand="SELECT ID,Level,BusyHourPages, round(MinimumUseageFee,2,2) as 'Minimum Usage Fee' FROM [StratusConfiguration]">
    </asp:SqlDataSource>
    </div>
  
    <div id="clear"></div>
<div>
<div id = "field"  class="submitButton">
    <asp:Button ID="cmdSave" runat="server" Text="Save" 
        ValidationGroup="statconfig" /> 
</div>
<div id = "field"  class="submitButton" style="width:auto!important">
<asp:Button ID="cmdCancel" runat="server" Text="Cancel" ValidationGroup="" />
</div>
</div>

</asp:Content>
