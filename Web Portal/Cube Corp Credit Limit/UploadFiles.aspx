<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="UploadFiles.aspx.vb" Inherits="CUBE.UploadFiles" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="clear">&nbsp;</div>
<div id="header" class="header">
    <h1>Manuals Upload</h1>
    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
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
    </telerik:RadAjaxManagerProxy>
    <telerik:RadAjaxLoadingPanel ID="rlpManuals" Runat="server" Skin="Default">
    </telerik:RadAjaxLoadingPanel>
</div>
<div>
    <div id="clear" class="validation"><p>All files need to be in .pdf format</p></div>
    <div id="label"><asp:Label ID="lblList" runat="server" Text="Manuals List"></asp:Label>
    </div>
    <div id="field" style="width:300px!important">       
        <telerik:RadComboBox ID="rcbManuals" Runat="server" DataSourceID="ldsManuals" 
            DataTextField="Name" DataValueField="ID" AutoPostBack="True">
        </telerik:RadComboBox></div>
    <div id="field"><asp:CheckBox ID="chkNew" Text="New Manual" runat="server" AutoPostBack="True" /></div>
    <div id="clear"></div>
    <div id="label"><asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
    </div>
    <div id="field" style="margin-right:20px">
        <asp:TextBox ID="txtManualName" runat="server"></asp:TextBox></div>
    <div id="field" style="width:auto!important; margin-left">
        <telerik:RadUpload ID="rupUser" Runat="server" 
            MaxFileInputsCount="1" OverwriteExistingFiles="True" 
            ReadOnlyFileInputs="True" TargetFolder="~/Manuals" 
            AllowedFileExtensions=".pdf" Width="300px">
        </telerik:RadUpload>
    </div>
    <div id="validation">
        
        <asp:LinqDataSource ID="ldsManuals" runat="server" 
            ContextTypeName="CUBE.DBDataContext" EntityTypeName="" Select="new (ID, Name)" 
            TableName="Manuals">
        </asp:LinqDataSource>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtManualName" CssClass="validation" 
        ErrorMessage="The Name is required" ValidationGroup="manual"></asp:RequiredFieldValidator>

    </div>
    <div id="clear"></div>
    <div>
        <div id = "field"  class="submitButton" style="width:auto!important">
        <asp:Button ID="cmdUpdate" runat="server" Text="Save" ValidationGroup="manual" />
        </div>
        <div id = "field" class="submitButton"  style="width:auto!important">
        <asp:Button ID="cmdCancel" runat="server" Text="Cancel" />
        </div>
    </div>
</div>
<div id="clear"></div>
<div id="header" class="header">
    <h1>Realease Notes Upload</h1>
</div>
<div id="clear" class="validation"><p>All files need to be in .pdf format</p></div>
<div>
    <div id="formContainerHalf">
        <div id="label"><asp:Label ID="lblRNName" runat="server" Text="Release Version"></asp:Label>
        </div>
        <div id="field" style="width:300!important">
            <asp:TextBox ID="txtVersion" runat="server" ValidationGroup="RNUpload"></asp:TextBox>
        </div>
        <div id="validation">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtVersion" CssClass="validation" 
        ErrorMessage="The version number is required" ValidationGroup="RNUpload"></asp:RequiredFieldValidator>

        </div>
        <div id="clear"></div>
        <div id="label"><asp:Label ID="lblReleaseDate" runat="server" Text="Release Date"></asp:Label>
        </div>
        <div id="field" style="width:300!important">
            <telerik:RadDatePicker ID="rdpReleaseDate" Runat="server">
            </telerik:RadDatePicker></div>
        <div id="validation">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="rdpReleaseDate" CssClass="validation" 
        ErrorMessage="The release date is required" ValidationGroup="RNUpload"></asp:RequiredFieldValidator>

        </div>
        <div id="clear"></div>
        <div id="label"><asp:Label ID="lblRFile" runat="server" Text="Manuals List"></asp:Label>
        </div>
        <div id="field" style="width:auto!important">
        <telerik:RadUpload ID="rupRNotes" Runat="server" 
            MaxFileInputsCount="1" OverwriteExistingFiles="True" 
            ReadOnlyFileInputs="True" 
            AllowedFileExtensions=".pdf" Width="300px">
        </telerik:RadUpload>
        </div>
        <div id="clear"></div>
        <div>
        <div id = "field" class="submitButton"  style="width:auto!important">
            <asp:Button ID="cmdUpload" runat="server" Text="Upload" 
                ValidationGroup="RNUpload" /></div>
        <div id = "field"  class="submitButton"  style="width:auto!important"><asp:Button ID="cmdRNcancel" runat="server" Text="Cancel" /></div>
        </div>
    </div>
    <div id="formContainerHalf">
        <telerik:RadGrid ID="rgRNotes" runat="server" AutoGenerateColumns="False" 
            DataSourceID="sdsReleaseNotes" GridLines="None" AllowPaging="True">
<MasterTableView DataKeyNames="ID" DataSourceID="sdsReleaseNotes">
<RowIndicatorColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>
    <Columns>
        <telerik:GridBoundColumn DataField="ID" DataType="System.Int32" 
            DefaultInsertValue="" HeaderText="ID" ReadOnly="True" SortExpression="ID" 
            UniqueName="ID" Visible="False">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Version" DefaultInsertValue="" 
            HeaderText="Version" SortExpression="Version" UniqueName="Version">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="ReleaseDate" DataType="System.DateTime" 
            DefaultInsertValue="" HeaderText="Release Date" SortExpression="ReleaseDate" 
            UniqueName="ReleaseDate">
        </telerik:GridBoundColumn>
        <telerik:GridButtonColumn ButtonType="ImageButton" CommandArgument="filepath" 
            CommandName="download" ImageUrl="~/UserContent/default/download.gif" 
            Text="Download" UniqueName="download">
        </telerik:GridButtonColumn>
        <telerik:GridButtonColumn ButtonType="ImageButton" CommandName="del" 
            ConfirmText="Are you sure you want to delete these release notes?" 
            ConfirmTitle="Delete record and files" 
            ImageUrl="~/UserContent/default/delete.gif" UniqueName="column1">
        </telerik:GridButtonColumn>
    </Columns>
</MasterTableView>
        </telerik:RadGrid>
        <asp:SqlDataSource ID="sdsReleaseNotes" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
            SelectCommand="SELECT * FROM [ReleaseNotes] ORDER BY [ReleaseDate] DESC" 
            DeleteCommand="DELETE FROM ReleaseNotes WHERE (ID = @ID)">
            <DeleteParameters>
                <asp:Parameter Name="ID" />
            </DeleteParameters>
        </asp:SqlDataSource>
    </div>
</div>
<div id="clear"><br /></div>
</asp:Content>
