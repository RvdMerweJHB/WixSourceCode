<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ImportUsers.aspx.vb" Inherits="CUBE.ImportUsers" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="clear">&nbsp;</div>
<div id="header" class="header">
    <h1>User Imports</h1>
    <telerik:radajaxmanagerproxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="rcbManuals">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtManualName" 
                        LoadingPanelID="rlpManuals" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="chkNew">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtManualName" 
                        LoadingPanelID="rlpManuals" />
                    <telerik:AjaxUpdatedControl ControlID="rcbManuals" 
                        LoadingPanelID="rlpManuals" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:radajaxmanagerproxy>
    <telerik:radajaxloadingpanel ID="rlpManuals" Runat="server" Skin="Default">
    </telerik:radajaxloadingpanel>
</div>
<div>
    <div id="label" style="width: auto!important; margin-right: 10px">
        <asp:Label ID="lblList" runat="server" 
            Text="CSV file to be imported should be in the following format"></asp:Label>
    </div>
    <div id="field" style="width:300px!important">       
        <asp:LinkButton ID="lbtDownload" runat="server" CssClass="hlbutton">Download CSV Template <img src="UserContent/default/download.gif" style="border:0px" />
        </asp:LinkButton>
        <br />
        <asp:LinkButton ID="lbtDownload2" runat="server" CssClass="hlbutton" 
            Visible="False">Download Ported CSV Template <img src="UserContent/default/download.gif" style="border:0px" />
        </asp:LinkButton>
    </div>
    <div id="clear" class="validation">
        <asp:Literal ID="litMsg" runat="server"></asp:Literal>
    </div>
    <div id="clear">&nbsp;</div>
    <div id="label" style="width: auto!important; margin-right: 10px">
        <asp:Label ID="lblName" runat="server" Text="Select file to upload"></asp:Label>
    </div>
    <div id="field" style="width:auto!important">
        <telerik:radupload ID="rupUserImport" Runat="server" 
            MaxFileInputsCount="1" OverwriteExistingFiles="True" 
            ReadOnlyFileInputs="True" TargetFolder="~/userimports" 
            AllowedFileExtensions=".csv">
        </telerik:radupload>
        <div id="clear"></div>
        <div id="Field">
            <asp:CheckBox ID="ChkPorted" runat="server" Text="Ported/Geographic CSV?" 
                Visible="False" /></div>
    </div>
    <div id="validation" class="SearchBox" style="width:35%!important; padding:5px; margin-left:10px">
        <strong style="text-decoration:underline">Please Note The Following</strong><br />
        Please be advised that all user imports will take a minimum of 24 hours to be created.You will be informed via email when your users have been created.
    </div>
    
    <div id="clear"></div>
    <div>
        <div id = "field"  class="submitButton" style="width:auto!important">
        <asp:Button ID="cmdUpdate" runat="server" Text="Import" ValidationGroup="manual" />
        </div>
        <div id = "field" class="submitButton"  style="width:auto!important">
        <asp:Button ID="cmdCancel" runat="server" Text="Cancel" />
        </div>
    </div>
</div>
<div id="clear"></div>
</asp:Content>
