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
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
    </span></div>
<div id="validation">

</div>
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
</div>
</div>
</asp:Content>
