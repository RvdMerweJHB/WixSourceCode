<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CreditAdministration.aspx.vb" Inherits="CUBE.CreditAdministration" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear">&nbsp;</div>
<div id="header" class="header">
   <h1>Credit Limit Administration</h1>
</div>
<div id="Div3">&nbsp;</div>
<div>

    <telerik:radajaxloadingpanel ID="rlpManuals" Runat="server" Skin="Default">
    </telerik:radajaxloadingpanel>
<div>
    <div id="label" style="width: auto!important; margin-right: 10px">
        <asp:Label ID="lblList" runat="server" 
            Text="CSV file to be imported should be in the following format"></asp:Label>
    </div>
    <div id="field" style="width:300px!important">       
        <asp:LinkButton ID="lbtDownload" runat="server" CssClass="hlbutton">Download CSV Template <img src="UserContent/default/download.gif" style="border:0px" />
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
            AllowedFileExtensions=".csv" Skin="Hay">
        </telerik:radupload>
        <div id="clear"></div>
    </div>
    <div id="validation" class="SearchBox" style="width:35%!important; padding:5px; margin-left:10px">
        <strong style="text-decoration:underline; color:red">Please Note The Following</strong><br />
        Please make sure that the template used is as the available download Template.
        
    </div>
    
    <div id="clear"></div>
    <div>
        <div id = "field"  class="submitButton" style="width:auto!important">
        <asp:Button ID="cmdUpdate" runat="server" Text="Update" ValidationGroup="manual" />
        </div>
        <div id = "field" class="submitButton"  style="width:auto!important">
        <asp:Button ID="cmdCancel" runat="server" Text="Cancel" />
        </div>
    </div>
    <div id="clear"></div>
    <div style="text-align :center; ">
        <table class="style1">
            <tr>
                <td align="center">
                    <telerik:RadGrid ID="rgData" runat="server" Width="534px" Skin="Hay">
                        <ClientSettings>
                            <Scrolling AllowScroll="True" />
                        </ClientSettings>
<MasterTableView>
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

<HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Hay"></HeaderContextMenu>
        </telerik:RadGrid>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label ID="lblFailures" runat="server" ForeColor="Red" 
                        Text="Failures Below" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td align="center">
                    <telerik:RadGrid ID="rgDataFailures" runat="server" Width="534px" Skin="Hay">
                        <ClientSettings>
                            <Scrolling AllowScroll="True" />
                        </ClientSettings>
<MasterTableView>
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

<HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Hay"></HeaderContextMenu>
        </telerik:RadGrid>
                </td>
            </tr>
        </table>
        </div>
    <div id="clear"></div>
    <div id="label">
        <asp:Label ID="lblImportError" runat="server" ForeColor="Red"></asp:Label></div>
        <div id="clear"></div>
    
</div>
<div id="clear"></div>
</asp:Content>
