<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="StratusDestinations.aspx.vb" Inherits="CUBE.StratusDestinations" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear">&nbsp;</div>
<div class="header">
    <h1>Stratus Destination Setup</h1>
    <telerik:radajaxmanagerproxy ID="RadAjaxManagerProxy1" runat="server">
    </telerik:radajaxmanagerproxy>
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" Skin="Default">
    </telerik:RadAjaxLoadingPanel>
</div>
<div id="clear">
<p class="validation">
    <asp:Literal ID="litFeedback" runat="server"></asp:Literal>
</p>
</div>
<div id="formContainerHalf">
<div id="label">
    
    <asp:Label ID="lblFname" runat="server" Text="Name"></asp:Label>
</div>
<div id="field">
    <telerik:radtextbox ID="txtName" runat="server" ValidationGroup=""></telerik:radtextbox>
    <span class="validation">*</span></div>
<div id="validation">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtName" CssClass="validation" 
        ErrorMessage="The Name is required" ValidationGroup=""></asp:RequiredFieldValidator>

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblProduct" runat="server" Text="Product"></asp:Label>
    </div>
<div id="field">
    <telerik:radcombobox ID="rcbProducts" Runat="server" AllowCustomText="False" 
        MarkFirstMatch="True" onclientload="onLoad" DataSourceID="sdsProducts" 
        DataTextField="Name" DataValueField="ID"></telerik:radcombobox>
    </div>
<div id="validation">
        <asp:SqlDataSource ID="sdsProducts" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        SelectCommand="SELECT [ID], [Name] FROM [Product] WHERE ([Name] LIKE '%' + @Name + '%')">
        <SelectParameters>
            <asp:Parameter DefaultValue="Stratus" Name="Name" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblProductType" runat="server" Text="Product Rating"></asp:Label>
    </div>
<div id="field">
    <telerik:radcombobox ID="rcbProductRating" Runat="server" AllowCustomText="False" 
        MarkFirstMatch="True" onclientload="onLoad" DataSourceID="sdsRatingType" 
        DataTextField="Name" DataValueField="ID"></telerik:radcombobox>
</div>
<div id="validation">
    
    <asp:SqlDataSource ID="sdsRatingType" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        SelectCommand="SELECT [ID], [Name] FROM [ProductType] WHERE ([Deleted] = @Deleted)">
        <SelectParameters>
            <asp:Parameter DefaultValue="False" Name="Deleted" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblRegex" runat="server" Text="Regular expression"></asp:Label>
</div>
<div id="field">
    <telerik:radtextbox ID="txtRegex" runat="server" ValidationGroup=""></telerik:radtextbox></div>
<div id="validation">

</div>
<div id="clear"></div>
<div id="label">
</div>
<div id="field">
    <asp:CheckBox ID="chkDeleted" runat="server" Enabled="False" Text="Deleted" />
    </div>
<div id="validation">

</div>
<div id="clear"></div>

</div>
<div id="formContainerHalf">
    <telerik:RadGrid ID="rgDestinations" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataSourceID="sdsDestinations" 
        GridLines="None" CellSpacing="0">
<MasterTableView datakeynames="ID" datasourceid="sdsDestinations">
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
        <telerik:GridBoundColumn DataField="DestinationName" DefaultInsertValue="" 
            HeaderText="Destination Name" SortExpression="DestinationName" 
            UniqueName="DestinationName">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Product" DefaultInsertValue="" 
            HeaderText="Product" SortExpression="Product" UniqueName="Product">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="ProductRating" DefaultInsertValue="" 
            HeaderText="Product Rating" SortExpression="ProductRating" 
            UniqueName="ProductRating">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="RegularExpression" DefaultInsertValue="" 
            HeaderText="RegularExpression" SortExpression="RegularExpression" 
            UniqueName="RegularExpression">
        </telerik:GridBoundColumn>
        <telerik:GridCheckBoxColumn DataField="Deleted" DataType="System.Boolean" 
            DefaultInsertValue="" HeaderText="Deleted" SortExpression="Deleted" 
            UniqueName="Deleted">
        </telerik:GridCheckBoxColumn>
        <telerik:GridButtonColumn ButtonType="ImageButton" CommandName="edt" 
            ImageUrl="~/UserContent/default/edit.gif" UniqueName="edt">
        </telerik:GridButtonColumn>
        <telerik:GridButtonColumn ButtonType="ImageButton" 
            ConfirmText="Are you sure you wnat to delete this destination" 
            ConfirmTitle="Confirm Deletion" ImageUrl="~/UserContent/default/delete.gif" 
            UniqueName="del" CommandName="del">
        </telerik:GridButtonColumn>
    </Columns>
</MasterTableView>
    </telerik:RadGrid>
    <asp:SqlDataSource ID="sdsDestinations" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        SelectCommand="GetStratusDestinations" SelectCommandType="StoredProcedure">
    </asp:SqlDataSource>
    </div>
<div id="clear"></div>
<div>
<div id = "field"  class="submitButton">
    <asp:Button ID="cmdSave" runat="server" Text="Save" 
        ValidationGroup="" /> 
</div>
<div id = "field"  class="submitButton" style="width:auto!important">
<asp:Button ID="cmdCancel" runat="server" Text="Cancel" ValidationGroup="" />
</div>
</div>

</asp:Content>
