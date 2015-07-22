<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/NotAuthenticated.Master" CodeBehind="ExternalCampaign.aspx.vb" Inherits="CUBE.ExternalCampaign" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 536px;
        }
        .style2
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear">&nbsp;</div>
<div id="header" class="header">
   <h1>External Campaign Administration</h1>
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
        <ul>
            <li><strong style="text-decoration:underline; color:red"><span class="style2">Please Note The Following 
                CSV Structure!</span></strong><br /></li>
            <li>Column 1: Name</li>
            <li>Column 2: Surname</li>
            <li>Column 3: Email Address</li>
            <li>Column 4: Company Name</li>
        </ul>
        
    </div>
    
    <div id="clear"></div>
    <div>
        <div id = "field"  class="submitButton" style="width:auto!important">
        <asp:Button ID="cmdUpdate" runat="server" Text="Update" ValidationGroup="manual" />
        </div>
        <div id = "field" class="submitButton"  style="width:auto!important">
        </div>
    </div>
    <div id="clear"></div>
    <div style="text-align :center; ">
        <table class="style1">
            <tr>
                <td align="center" class="style1">
            
                    <telerik:RadGrid ID="rgData" runat="server" Skin="Hay">
                    </telerik:RadGrid>
                    <asp:Button ID="cmdExcel" runat="server" CommandName="Export" 
                                Text="Export to Excel" Visible="False" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center" class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style1">
                    <asp:Label ID="lblFailures" runat="server" ForeColor="Red" 
                        Text="Failures Below" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td align="center" class="style1">
            
                    <telerik:RadGrid ID="rgDataFailures" runat="server" Skin="Hay">
                    </telerik:RadGrid>
                    <asp:Button ID="cmdExcel2" runat="server" CommandName="Export" 
                                Text="Export to Excel" Visible="False" />
                    <br />
                    <br />
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
