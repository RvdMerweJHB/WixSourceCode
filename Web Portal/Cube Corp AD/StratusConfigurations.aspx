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
    
    <asp:Label ID="lblPages" runat="server" Text="Busy Hour pages"></asp:Label>
</div>
<div id="field">
    <telerik:radtextbox ID="txtPages" runat="server" ValidationGroup="statconfig"></telerik:radtextbox>
    <span class="validation">*</span></div>
<div id="validation">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtPages" CssClass="validation" 
        ErrorMessage="The Name is required" ValidationGroup="statconfig"></asp:RequiredFieldValidator>

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
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblChannels" runat="server" Text="Channels Purchased"></asp:Label>
    </div>
<div id="field">
    <telerik:RadNumericTextBox ID="txtChannelsPurchased" Runat="server" 
        ValidationGroup="statconfig" DataType="System.Int64">
        <NumberFormat DecimalDigits="0" />
    </telerik:RadNumericTextBox>
    <span class="validation">*</span></div>
<div id="validation">
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtChannelsPurchased" CssClass="validation" 
        ErrorMessage="Channels purchased is required" ValidationGroup="statconfig"></asp:RequiredFieldValidator>

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblChannelsAllocated" runat="server" Text="Channels Allocated"></asp:Label>
</div>
<div id="field">
    <telerik:RadNumericTextBox ID="txtChannelsAllocated" Runat="server" 
        ValidationGroup="statconfig" DataType="System.Int64">
        <NumberFormat DecimalDigits="0" />
    </telerik:RadNumericTextBox>
    <span class="validation">*</span></div>
<div id="validation">

    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtChannelsAllocated" CssClass="validation" 
        ErrorMessage="Channels allocated is required" ValidationGroup="statconfig"></asp:RequiredFieldValidator>

</div>
<div id="clear"></div>

</div>
<div id="formContainerHalf">
    <telerik:RadGrid ID="rgStratusConfig" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataSourceID="sdsStratusConfig" 
        GridLines="None">
<MasterTableView datakeynames="ID" datasourceid="sdsStratusConfig">
<RowIndicatorColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>
    <Columns>
        <telerik:GridBoundColumn DataField="ID" DataType="System.Int32" 
            DefaultInsertValue="" HeaderText="ID" ReadOnly="True" SortExpression="ID" 
            UniqueName="ID" Visible="false">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="BusyHourPages" DefaultInsertValue="" 
            HeaderText="BusyHourPages" SortExpression="BusyHourPages" 
            UniqueName="BusyHourPages" DataType="System.Int64">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="MinimumUseageFee" DefaultInsertValue="" 
            HeaderText="MinimumUseageFee" SortExpression="MinimumUseageFee" 
            UniqueName="MinimumUseageFee" DataType="System.Int64" DataFormatString="{0:C}">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="ChannelsPurchased" DefaultInsertValue="" 
            HeaderText="ChannelsPurchased" SortExpression="ChannelsPurchased" 
            UniqueName="ChannelsPurchased" DataType="System.Int32">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="ChannelsAllocated" DefaultInsertValue="" 
            HeaderText="ChannelsAllocated" SortExpression="ChannelsAllocated" 
            UniqueName="ChannelsAllocated" DataType="System.Int32">
        </telerik:GridBoundColumn>
        <telerik:GridButtonColumn ButtonType="ImageButton" CommandName="edt" 
            ImageUrl="~/UserContent/default/edit.gif" UniqueName="edt">
        </telerik:GridButtonColumn>
        <telerik:GridButtonColumn ButtonType="ImageButton" 
            ConfirmText="Are you sure you wnat to delete this destination" 
            ConfirmTitle="Confirm Deletion" ImageUrl="~/UserContent/default/delete.gif" 
            UniqueName="del" CommandName="del">
        </telerik:GridButtonColumn>
    </Columns>
</MasterTableView>
    </telerik:RadGrid>
    <asp:SqlDataSource ID="sdsStratusConfig" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        SelectCommand="SELECT ID, BusyHourPages, round(MinimumUseageFee,2,2) as MinimumUseageFee, ChannelsPurchased, ChannelsAllocated FROM [StratusConfiguration]">
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
