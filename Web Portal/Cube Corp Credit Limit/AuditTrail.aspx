<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AuditTrail.aspx.vb" Inherits="CUBE.AuditTrail1" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear">&nbsp;</div>
<div class="header">
    <h1>Audit Trail</h1>
    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="rgAuditTrail">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="rgTrail" LoadingPanelID="lpProfile" 
                        UpdatePanelRenderMode="Inline" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>
    <telerik:RadAjaxLoadingPanel ID="lpProfile" Runat="server" Skin="Default">
    </telerik:RadAjaxLoadingPanel>
</div>

<div>
<div id="label">
    <asp:Label ID="lblView" runat="server" Text="Username"></asp:Label>
</div>
<div id="field">
    <span class="validation">
        <asp:TextBox ID="txtUsername" runat="server" Enabled="False"></asp:TextBox>
    </span></div>
<div id="validation">

</div>
    <asp:TextBox ID="txtHiddenID" runat="server" Visible="False" Width="16px"></asp:TextBox>
<div id="clear"><br /></div>
<div>
    <div id="formContainerHalf">
        <telerik:RadGrid ID="rgAuditTrail" runat="server" DataSourceID="sdsAU" 
        AutoGenerateColumns="False" GridLines="None">
<MasterTableView DataKeyNames="ID" DataSourceID="sdsAU">
<RowIndicatorColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>
    <Columns>
        <telerik:GridBoundColumn DataField="ID" 
            DefaultInsertValue="" HeaderText="ID" SortExpression="ID" 
            UniqueName="ID" Visible="true">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Action" 
            DefaultInsertValue="" HeaderText="Action" SortExpression="Action" 
            UniqueName="Action">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="ActionBy" DefaultInsertValue="" 
            HeaderText="ActionBy" SortExpression="ActionBy" UniqueName="ActionBy">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Date" DefaultInsertValue="" 
            HeaderText="Date" SortExpression="Date" UniqueName="Date" 
            DataFormatString="{0:dd MMMMMMMM yyyy, HH:mm:ss}" DataType="System.DateTime">
        </telerik:GridBoundColumn>
        <telerik:GridButtonColumn ButtonType="ImageButton" 
            ImageUrl="~/usercontent/default/search.gif" UniqueName="view" CommandName="view">
        </telerik:GridButtonColumn>
    </Columns>
</MasterTableView>
    </telerik:RadGrid>

        <br />
        <telerik:RadGrid ID="rgTemplateAuditTrail" runat="server" CellSpacing="0" 
            DataSourceID="sdsTemplates" GridLines="None" Visible="False">
<MasterTableView DataSourceID="sdsTemplates">
<CommandItemSettings ExportToPdfText="Export to PDF"></CommandItemSettings>

<RowIndicatorColumn FilterControlAltText="Filter RowIndicator column">
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn FilterControlAltText="Filter ExpandColumn column">
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>

<EditFormSettings>
<EditColumn FilterControlAltText="Filter EditCommandColumn column"></EditColumn>
</EditFormSettings>
</MasterTableView>

<FilterMenu EnableImageSprites="False"></FilterMenu>

<HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Default"></HeaderContextMenu>
        </telerik:RadGrid>

        <asp:SqlDataSource ID="sdsAU" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        SelectCommand="GetUserAuditTrail" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtUsername" Name="UID" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
    <div id="formContainerHalf">
        <telerik:RadGrid ID="rgTrail" runat="server" AutoGenerateColumns="False" 
            GridLines="None">
<MasterTableView>
<RowIndicatorColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>
    <Columns>
        <telerik:GridBoundColumn DataField="Name" DefaultInsertValue="" 
            HeaderText="Name Field" UniqueName="Name">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="value" DefaultInsertValue="" 
            HeaderText="Field Value" UniqueName="Value" Resizable="false">
        </telerik:GridBoundColumn>
    </Columns>
</MasterTableView>
        </telerik:RadGrid>
        <br />
    </div>
    <asp:SqlDataSource ID="sdsComp" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        SelectCommand="GetCompanyAuditTrail" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtHiddenID" Name="CompanyID" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsGC" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        SelectCommand="GetGroupCodeAuditTrail" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtUsername" Name="GroupCode" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsTemplates" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        SelectCommand="GetTemplateAuditTrail" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtHiddenID" Name="CompanyID" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtUsername" Name="Template" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
</div>
</asp:Content>
