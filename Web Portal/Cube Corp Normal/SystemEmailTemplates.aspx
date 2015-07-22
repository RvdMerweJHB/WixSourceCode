<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="SystemEmailTemplates.aspx.vb" Inherits="CUBE.SystemEmailTemplates" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="clear">&nbsp;</div>
    <div class="header">
    <h1>System Email Templates</h1>
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
    <asp:Label ID="lblName" runat="server" Text="Template Content"></asp:Label>
    </div>
<div id="clear"></div>
<div id="clear">
        <telerik:RadEditor ID="txtContent" Runat="server" AllowScripts="True" 
        Width="100%">
        <ImageManager DeletePaths="~/UserContent" UploadPaths="~/UserContent" 
                ViewPaths="~/UserContent"/>
        </telerik:RadEditor>
    </div>
<div id ="button">
    
    <asp:Button ID="cmdCreate" runat="server" Text="Save" Width="87px" 
        ValidationGroup="Save" />
    
</div>
</div>
<div id="formgridcontainer">
    <telerik:RadGrid ID="rdgSysTemplates" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" GridLines="None" 
        DataSourceID="sdsSystemEmails">
        <MasterTableView DataKeyNames="id" DataSourceID="sdsSystemEmails">
            <RowIndicatorColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </RowIndicatorColumn>
            <ExpandCollapseColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </ExpandCollapseColumn>
            <Columns>
                <telerik:GridButtonColumn ButtonType="ImageButton" CommandName="edittemp" 
                    ImageUrl="~\usercontent\default\edit.gif" UniqueName="column">
                </telerik:GridButtonColumn>
                <telerik:GridBoundColumn DataField="TemplateName" DefaultInsertValue="" 
                    HeaderText="TemplateName" UniqueName="TemplateName" 
                    SortExpression="TemplateName">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Template" DefaultInsertValue="" 
                    HeaderText="Template" UniqueName="Template" SortExpression="Template">
                </telerik:GridBoundColumn>
            </Columns>
        </MasterTableView>
    </telerik:RadGrid>
    <asp:SqlDataSource ID="sdsSystemEmails" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        SelectCommand="SELECT * FROM [SystemEmailTemplates]"></asp:SqlDataSource>
</div>
<div id="clear"><br /></div>
</asp:Content>
