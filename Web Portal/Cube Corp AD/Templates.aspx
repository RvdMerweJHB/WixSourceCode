<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Templates.aspx.vb" Inherits="CUBE.Templates" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="Controls/cEmail.ascx" tagname="cEmail" tagprefix="uc1" %>
<%@ Register src="Controls/cHTML.ascx" tagname="cHTML" tagprefix="uc2" %>
<%@ Register src="Controls/cDates.ascx" tagname="cDates" tagprefix="uc3" %>
<%@ Register src="Controls/cTextField.ascx" tagname="cTextField" tagprefix="uc4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="clear">&nbsp;</div>
<div class="header">
    <h1>Template &amp; Email Settings</h1>
    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="rgTemplates">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="panContent" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="cmdEdit">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="litContent" LoadingPanelID="rlpTemps" />
                    <telerik:AjaxUpdatedControl ControlID="panEmail" LoadingPanelID="rlpTemps" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>
    <telerik:RadAjaxLoadingPanel ID="rlpTemps" Runat="server" Skin="Default">
    </telerik:RadAjaxLoadingPanel>
</div>
<div id="clear"></div>
<div style="height:auto">
<div id="sidebarleft">
    <telerik:RadGrid ID="rgTemplates" runat="server" AutoGenerateColumns="False" 
        GridLines="None">
        <ClientSettings>
            <Selecting EnableDragToSelectRows="False" AllowRowSelect="True" />
        </ClientSettings>
<MasterTableView DataKeyNames="id">
<RowIndicatorColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>
    <Columns>
        <telerik:GridBoundColumn DataField="columnname" DefaultInsertValue="" 
            UniqueName="columnname" Visible="False" EmptyDataText="">
            
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="content" DefaultInsertValue="" 
            HeaderText="Content" UniqueName="content" Visible="False" 
            FilterListOptions="VaryByDataTypeAllowCustom">
            
        </telerik:GridBoundColumn>
        
        <telerik:GridButtonColumn CommandName="ViewTemp" HeaderButtonType="None" HeaderText="Setting Name" 
            UniqueName="name" DataTextField="name">
            <ItemStyle Font-Bold="True" Font-Size="1.2em" Height="20px" 
                VerticalAlign="Middle" Font-Underline="false" />
        </telerik:GridButtonColumn>
        
    </Columns>
</MasterTableView>
        <HeaderStyle Font-Bold="True" Font-Size="1.5em" Height="30px" />
    </telerik:RadGrid>
    </div>
<div id="sidebarright">
    <div class="SearchBox" style="min-height:450px; padding:5px">
        <asp:Panel ID="panContent" runat="server">
            <div style="width:auto"><asp:Literal ID="litHeader" runat="server"></asp:Literal></div>
            <div id="clear" class="validation">
                <asp:Literal ID="litSuccess" runat="server"></asp:Literal>
            </div>
            <div style="width:auto"><asp:Literal ID="litContent" runat="server"></asp:Literal>
                                 
                     <uc1:cEmail ID="cEmail1" runat="server" Visible="false" />
                     <uc2:cHTML ID="cHTML1" runat="server" Visible="False" />
                     <uc3:cDates ID="cDates1" runat="server" Visible="False" />
                     <uc4:cTextField ID="cTextField1" runat="server" Visible="False" />
                    
            </div>
            <div id="clear" style="margin-bottom:20px">&nbsp;
                
            </div>
            <div style="text-align:right"><asp:Button ID="cmdEdit" runat="server" 
                    Text="Edit Setting" Visible="False" /></div>
            <div id="clear"></div>
        </asp:Panel>
    </div>
    <div id="clear"></div>
</div>
<div id="clear"></div>
</div>
<div id="clear"></div>
</asp:Content>
