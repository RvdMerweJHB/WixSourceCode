<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Coverpages.aspx.vb" Inherits="CUBE.Coverpages" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="Controls/cCoverPage.ascx" tagname="cCoverPage" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="clear">&nbsp;</div>
<div class="header">
    <h1>COVERPAGEs</h1>
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
        GridLines="None" Height="460px" CellSpacing="0">
        <ClientSettings>
            <Selecting EnableDragToSelectRows="False" AllowRowSelect="True" />
            <Scrolling AllowScroll="True" />
        </ClientSettings>
<MasterTableView DataKeyNames="CoverPageid">
<CommandItemSettings ExportToPdfText="Export to Pdf"></CommandItemSettings>

<RowIndicatorColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>
    <Columns>
        <telerik:GridBoundColumn DataField="CoverpageID" DefaultInsertValue="" 
            UniqueName="CoverpageID" Visible="False" EmptyDataText="">
            
        </telerik:GridBoundColumn>

        <telerik:GridBoundColumn DataField="HTMLContent" DefaultInsertValue="" 
            UniqueName="HTMLContent" Visible="False" EmptyDataText="">
            
        </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="IsDefault" DefaultInsertValue="" 
            UniqueName="IsDefault" Visible="False" EmptyDataText="">
            
        </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="cp" DefaultInsertValue="" 
            UniqueName="cp" Visible="False" EmptyDataText="">
            
        </telerik:GridBoundColumn>
                        <telerik:GridButtonColumn CommandName="ViewTemp" HeaderButtonType="None" HeaderText="Coverpage Name" 
            UniqueName="Coverpage" DataTextField="Coverpage">
            <ItemStyle Font-Bold="True" Font-Size="1.2em" Height="20px" 
                VerticalAlign="Middle" Font-Underline="false" />
        </telerik:GridButtonColumn>
        
    </Columns>

<EditFormSettings>
<EditColumn FilterControlAltText="Filter EditCommandColumn column"></EditColumn>
</EditFormSettings>
</MasterTableView>
        <HeaderStyle Font-Bold="True" Font-Size="1.5em" Height="30px" />

<FilterMenu EnableImageSprites="False"></FilterMenu>

<HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Default"></HeaderContextMenu>
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
                                 
                     <uc2:cCoverPage ID="cHTML1" runat="server" Visible="False" />
                    
            </div>
            <div id="clear" style="margin-bottom:20px">&nbsp;
                
            </div>
            <div style="text-align:right">
                <asp:Button ID="cmdDelete" runat="server" 
                    Text="Delete Coverpage" Visible="False" />
                <asp:Button ID="cmdEdit" runat="server" Text="Edit Coverpage" Visible="False" />
            </div>
            <div id="clear"></div>
        </asp:Panel>
    </div>
    <div id="clear">
        <telerik:RadWindowManager ID="RadWindowManager1" runat="server">
        </telerik:RadWindowManager>
    </div>
</div>
<div id="clear"></div>
</div>
<div id="clear">
                <asp:Button ID="cmdAdd" runat="server" 
                    Text="Add Coverpage" /></div>
                      <div id="clear">
                        <asp:LinkButton ID="LinkButton1" runat="server">View Demo</asp:LinkButton></div>
</asp:Content>
