<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ReleaseNotes.aspx.vb" Inherits="CUBE.ReleaseNotes" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">


.RadComboBox_Default
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox
{
	vertical-align: middle;
}

.RadComboBox
{
	text-align: left;
}

.RadComboBox *
{
	margin: 0;
	padding: 0;
}

.RadComboBox_Default .rcbInputCellLeft
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2009.3.1208.20, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbInputCellLeft
{
	background-color: transparent;
	background-repeat: no-repeat;
}

.RadComboBox .rcbReadOnly .rcbInput
{
	cursor: default;
}

.RadComboBox_Default .rcbInput
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox .rcbInput
{
	text-align: left;
}

.RadComboBox_Default .rcbArrowCellRight
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2009.3.1208.20, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbArrowCellRight
{
	background-color: transparent;
	background-repeat: no-repeat;
}

        .style1
        {
            width: 100%;
            height: 20px;
            line-height: 20px;
            vertical-align: middle;
            border-style: none;
            border-color: inherit;
            border-width: 0;
            margin-top: -1px;
            margin-bottom: -1px;
            padding-left: 2px;
            padding-right: 0;
            padding-top: 0;
            padding-bottom: 0;
            background-position: 0 0;
        }
        .style2
        {
            width: 16px;
            border-style: none;
            border-color: inherit;
            border-width: 0;
            margin-top: -1px;
            margin-bottom: -1px;
            padding: 0;
            background-position: -2px -88px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear"> &nbsp;</div>

<div id="header" class="header">
 <h1>Release Notes Download</h1>
 </div>
    <br />
        <div id="Div1">
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
</asp:Content>
