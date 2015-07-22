<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="StratusRateSheet.aspx.vb" Inherits="CUBE.StartusRateSheet" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear">&nbsp;</div>
<div class="header">
    <h1>Stratus Company Rate Sheet</h1>
    <telerik:radajaxmanagerproxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="rcbCompnies">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="rgRateSheet" 
                        LoadingPanelID="RadAjaxLoadingPanel1" UpdatePanelRenderMode="Inline" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
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
    
    <asp:Label ID="lblCompany" runat="server" Text="Company Name"></asp:Label>
</div>
<div id="field">
                        <telerik:RadComboBox ID="rcbCompnies" Runat="server"
                 AllowCustomText="False" MarkFirstMatch="True"
                  onclientload="onLoad" DataSourceID="sdsStratusCompanies" DataTextField="Name" 
                            DataValueField="ID" AutoPostBack="True">
                  </telerik:RadComboBox>
                  </div>
<div id="validation">
    <asp:SqlDataSource ID="sdsStratusCompanies" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        SelectCommand="SELECT [ID], [Name] FROM [Company] WHERE ([GroupCode] LIKE @GroupCode + '%')">
        <SelectParameters>
            <asp:Parameter DefaultValue="STL" Name="GroupCode" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</div>

<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblProduct" runat="server" Text="Product"></asp:Label>
    </div>
<div id="field">
                        <telerik:RadComboBox ID="rcbProduct" Runat="server"
                 AllowCustomText="False" MarkFirstMatch="True"
                  onclientload="onLoad" DataSourceID="sdsProducts" DataTextField="Name" 
                            DataValueField="ID">
                  </telerik:RadComboBox>
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
    <asp:Label ID="lblDestination" runat="server" Text="Destination"></asp:Label>
    </div>
<div id="field">
                        <telerik:RadComboBox ID="rcbDestination" Runat="server"
                 AllowCustomText="False" MarkFirstMatch="True"
                  onclientload="onLoad" DataSourceID="sdsDestinations" DataTextField="DestinationName" 
                            DataValueField="ID">
                  </telerik:RadComboBox>
                  </div>
<div id="validation">
    <asp:SqlDataSource ID="sdsDestinations" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        SelectCommand="SELECT [DestinationName], [ID], [Deleted] FROM [StratusDestinations] WHERE ([Deleted] = @Deleted)">
        <SelectParameters>
            <asp:Parameter DefaultValue="False" Name="Deleted" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblPrice" runat="server" Text="Price"></asp:Label>
</div>
<div id="field">
    <telerik:RadNumericTextBox ID="txtPrice" Runat="server" 
        ValidationGroup="statconfig" DataType="System.Int64" Type="Currency">
    </telerik:RadNumericTextBox>
    <span class="validation">*</span></div>
<div id="validation">

    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtPrice" CssClass="validation" 
        ErrorMessage="Price is required" ValidationGroup="statconfig"></asp:RequiredFieldValidator>

</div>
<div id="clear"></div>

</div>
<div id="formContainerHalf">
    <telerik:RadGrid ID="rgRateSheet" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" 
        GridLines="None">
        <MasterTableView>
            <Columns>
                <telerik:GridBoundColumn DataField="ProductName" DefaultInsertValue="" 
                    HeaderText="Product Name" UniqueName="ProductName">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="DestinationName" DefaultInsertValue="" 
                    HeaderText="Destination Name" UniqueName="DestinationName">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Price" DefaultInsertValue="" 
                    HeaderText="Price" UniqueName="Price" DataType="System.Int64" DataFormatString="{0:C}">
                </telerik:GridBoundColumn>
                <telerik:GridCheckBoxColumn DataField="deleted" DefaultInsertValue="" 
                    HeaderText="Deleted?" UniqueName="deleted">
                </telerik:GridCheckBoxColumn>
            </Columns>
        </MasterTableView>
    </telerik:RadGrid>
    </div>
    <div id="clear"></div>
<div>
<div id = "field"  class="submitButton">
    <asp:Button ID="cmdSave" runat="server" Text="Save" 
        ValidationGroup="statconfig" /> 
</div>
<div id = "field"  class="submitButton" style="width:auto!important">
<asp:Button ID="cmdCancel" runat="server" Text="Cancel" ValidationGroup="" />
</div>
</div>

</asp:Content>

