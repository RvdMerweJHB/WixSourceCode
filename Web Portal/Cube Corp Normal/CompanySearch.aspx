<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CompanySearch.aspx.vb" Inherits="CUBE.CompanySearch" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="clear">
        &nbsp;</div>
    <div class="header">
        <h1>
            Company Groupcode Search</h1>
    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="rcbCompanies">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="rgCompanies" LoadingPanelID="lpComp" 
                        UpdatePanelRenderMode="Inline" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>
    <telerik:RadAjaxLoadingPanel ID="lpComp" Runat="server" Skin="Default">
    </telerik:RadAjaxLoadingPanel>
    </div>
        <div id="clear">
        &nbsp;</div>
    <div id="label">
    <asp:Label ID="lblParent" runat="server" Text="Group Codes"></asp:Label>
</div>
<div id="field">
    <span class="validation">
    <telerik:RadComboBox ID="rcbCompanies" Runat="server" 
        MarkFirstMatch="True" DataSourceID="sdsGC" AutoPostBack="True" 
        DataTextField="Group Code" DataValueField="Group Code">
    </telerik:RadComboBox>
    </span></div>
<div id="validation">

    <span class="validation">
    <asp:SqlDataSource ID="sdsGC" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        SelectCommand="GetAllGroupCodesByCompaniesByCompany" 
        SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter Name="CompanyID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </span>

</div>
<div id="clear"></div>
<div id="clear">
    <telerik:RadGrid ID="rgCompanies" runat="server" AutoGenerateColumns="False" 
        GridLines="None">
<MasterTableView DataKeyNames="id">
<RowIndicatorColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>
    <Columns>
        <telerik:GridButtonColumn ButtonType="ImageButton" CommandName="editcompany" 
            ImageUrl="~\usercontent\default\edit.gif" UniqueName="column">
        </telerik:GridButtonColumn>
        <telerik:GridBoundColumn DataField="Company Name" DefaultInsertValue="" 
            HeaderText="Company Name" ReadOnly="True" SortExpression="Company Name" 
            UniqueName="Company Name">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Contact Person" DefaultInsertValue="" 
            HeaderText="Contact Person" ReadOnly="True" SortExpression="Contact Person" 
            UniqueName="Contact Person">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Reference" DefaultInsertValue="" 
            HeaderText="Reference" ReadOnly="True" SortExpression="Reference" 
            UniqueName="Reference">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Group Code" DefaultInsertValue="" 
            HeaderText="Group Code" ReadOnly="True" SortExpression="Group Code" 
            UniqueName="Group Code">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Created By" DefaultInsertValue="" 
            HeaderText="Created By" ReadOnly="True" SortExpression="Created By" 
            UniqueName="Created By">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Date Created" 
             DataType="System.DateTime" 
            DefaultInsertValue="" HeaderText="Date Created" ReadOnly="True" 
            SortExpression="Date Created" UniqueName="Date Created">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Date Last Updated" DefaultInsertValue="" 
            HeaderText="Date Last Updated" ReadOnly="True" 
            SortExpression="Date Last Updated" UniqueName="Date Last Updated">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Last Updated"  
            DefaultInsertValue="" HeaderText="Last Updated" ReadOnly="True" 
            SortExpression="Last Updated" UniqueName="Last Updated">
        </telerik:GridBoundColumn>
        <telerik:GridCheckBoxColumn DataField="Suspended" 
            DefaultInsertValue="" HeaderText="Suspended" ReadOnly="True" 
            SortExpression="Suspended" UniqueName="Suspended">
        </telerik:GridCheckBoxColumn>
        <telerik:GridCheckBoxColumn DataField="Deleted" 
            DefaultInsertValue="" HeaderText="Deleted" ReadOnly="True" 
            SortExpression="Deleted" UniqueName="Deleted">
        </telerik:GridCheckBoxColumn>
    </Columns>
</MasterTableView>
    </telerik:RadGrid>
    </div>
</asp:Content>
