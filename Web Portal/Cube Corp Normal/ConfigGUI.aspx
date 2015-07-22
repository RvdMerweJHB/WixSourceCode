<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ConfigGUI.aspx.vb" Inherits="CUBE.configGUI" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear">&nbsp;</div>
<div class="header">
    <h1>Application Configuration Settings</h1>
    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
    </telerik:RadAjaxManagerProxy>
    <telerik:RadAjaxLoadingPanel ID="lpConfig" Runat="server" Skin="Default">
    </telerik:RadAjaxLoadingPanel>
</div>
<div id="clear">&nbsp;</div>
<div>
    <telerik:RadGrid ID="rdgConfig" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" GridLines="None" PageSize="25">
        <MasterTableView>
            <RowIndicatorColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </RowIndicatorColumn>
            <ExpandCollapseColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </ExpandCollapseColumn>
            <Columns>
                <telerik:GridBoundColumn DataField="index" DefaultInsertValue="" 
                    UniqueName="index">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="name" DefaultInsertValue="" 
                    HeaderText="Setting Name" UniqueName="name">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="SerializeAs" DefaultInsertValue="" 
                    HeaderText="Data Type" UniqueName="SerializeAs">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="value" DefaultInsertValue="" 
                    HeaderText="Setting Value" UniqueName="value">
                </telerik:GridBoundColumn>
                <telerik:GridEditCommandColumn ButtonType="ImageButton" 
                    EditImageUrl="~/usercontent/default/edit.gif" Visible="False">
                </telerik:GridEditCommandColumn>
            </Columns>
<EditFormSettings>
<EditColumn UniqueName="EditCommandColumn1"></EditColumn>
</EditFormSettings>
        </MasterTableView>
    </telerik:RadGrid>
</div>
<div id="clear">&nbsp;</div>
<div class="header">
    <h1>Connections Strings</h1>
</div>
<div id="clear">&nbsp;</div>
<div>
<telerik:RadGrid ID="rgConnectionsStrings" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" GridLines="None">
        <MasterTableView>
            <RowIndicatorColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </RowIndicatorColumn>
            <ExpandCollapseColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </ExpandCollapseColumn>
            <Columns>
                <telerik:GridBoundColumn DataField="index" DefaultInsertValue="" 
                    UniqueName="index">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="name" DefaultInsertValue="" 
                    HeaderText="Connection String Name" UniqueName="name">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="value" DefaultInsertValue="" 
                    HeaderText="Connection String" UniqueName="value">
                </telerik:GridBoundColumn>
            </Columns>
<EditFormSettings>
<EditColumn UniqueName="EditCommandColumn1"></EditColumn>
</EditFormSettings>
        </MasterTableView>
    </telerik:RadGrid>
</div>
</asp:Content>
