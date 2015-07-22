<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Products.aspx.vb" Inherits="CUBE.Products" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear">&nbsp;</div>
<div id="header" class="header">
   <h1>Faxing Products</h1>
</div>
<div id="clear">&nbsp;</div>
<div>
<telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server"  
        HorizontalAlign="NotSet" LoadingPanelID="RadAjaxLoadingPanel1">
            <table>
    <tr>
        <td width="100px">
            <asp:Label ID="Label2" runat="server" Text="Select product:"></asp:Label>
        </td>
        <td>
            <telerik:RadComboBox ID="cboProduct" runat="server" DataSourceID="ldsProducts" RadComboBoxImagePosition="Right"
                 AutoPostBack="True" DataTextField="Name" DataValueField="ID" 
                ToolTip="Select a product">
                <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                <ExpandAnimation Type="OutQuart"></ExpandAnimation>
            </telerik:RadComboBox>
            <asp:LinqDataSource ID="ldsProducts" runat="server" ContextTypeName="CUBE.DBDataContext"
                OrderBy="Name" Select="new (ID, Name)" TableName="Products" Where="Deleted == @Deleted">
                <WhereParameters>
                    <asp:Parameter DefaultValue="false" Name="Deleted" Type="Boolean" />
                </WhereParameters>
            </asp:LinqDataSource>
        </td>
        <td>
            &nbsp;<img alt="" src="UserContent/default/AddRecord.gif"
                style="width: 16px; height: 16px" />
            <asp:LinkButton ID="LinkButton1" runat="server" 
                ToolTip="Click here to add a new product">New</asp:LinkButton>
            &nbsp;|
            <img alt="" src="UserContent/default/Delete.gif" style="width: 16px; height: 16px" />
            <asp:LinkButton ID="LinkButton2" runat="server" 
                ToolTip="Click here to delete the selected product">Delete</asp:LinkButton>
        </td>
    </tr>
</table>
<br />
<asp:Panel ID="Panel1" runat="server">
    <table cellpadding="3px">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label27" runat="server" Text="Please specify the following information."
                    CssClass="Heading2"></asp:Label>
                <br />
                <asp:HiddenField ID="hfProductID" runat="server" />
                <br />
            </td>
        </tr>
        <tr>
            <td width="150">
                <asp:Label ID="Label4" runat="server" Text="Name:"></asp:Label>
            </td>
            <td>
                <telerik:RadTextBox ID="txtName" runat="server"  Width="150px">
                </telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Direction"></asp:Label>
            </td>
            <td>
                <telerik:RadComboBox ID="cboDirection" runat="server" DataSourceID="ldsDirections"
                    RadComboBoxImagePosition="Right"  DataTextField="Name" DataValueField="ID" 
                    Width="150px">
                    <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                    <ExpandAnimation Type="OutQuart"></ExpandAnimation>
                </telerik:RadComboBox>
                <asp:LinqDataSource ID="ldsDirections" runat="server" ContextTypeName="CUBE.DBDataContext"
                    OrderBy="Name" Select="new (ID, Name)" TableName="Directions" Where="Deleted == @Deleted">
                    <WhereParameters>
                        <asp:Parameter DefaultValue="False" Name="Deleted" Type="Boolean" />
                    </WhereParameters>
                </asp:LinqDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Commission type:"></asp:Label>
            </td>
            <td>
                <telerik:RadComboBox ID="cboCommissionType" runat="server" DataSourceID="ldsCommissionTypes"
                    RadComboBoxImagePosition="Right"  DataTextField="Name" DataValueField="ID" 
                    Width="150px">
                    <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                    <ExpandAnimation Type="OutQuart"></ExpandAnimation>
                </telerik:RadComboBox>
                <asp:LinqDataSource ID="ldsCommissionTypes" runat="server" ContextTypeName="CUBE.DBDataContext"
                    OrderBy="Name" Select="new (ID, Name)" TableName="CommissionTypes" Where="Deleted == @Deleted">
                    <WhereParameters>
                        <asp:Parameter DefaultValue="False" Name="Deleted" Type="Boolean" />
                    </WhereParameters>
                </asp:LinqDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Value:"></asp:Label>
            </td>
            <td>
                <telerik:RadTextBox ID="txtValue" runat="server"  Width="150px">
                </telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Regular expression:"></asp:Label>
            </td>
            <td>
                <telerik:RadTextBox ID="txtRegExp" runat="server"  Width="150px">
                </telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label28" runat="server" Text="Levels:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
            
                <telerik:RadGrid ID="RadGrid1" runat="server" AllowAutomaticDeletes="True" AllowAutomaticInserts="True"
                    AllowAutomaticUpdates="True" AllowMultiRowEdit="True"
                    AllowPaging="False" DataMember="DefaultView" DataSourceID="sdsProductLevels"
                    EnableAJAX="True" EnableAJAXLoadingTemplate="True" EnableTheming="False" GridLines="None"
                    LoadingTemplateTransparency="50" PageSize="10" ShowStatusBar="False" 
                    Visible="False" AutoGenerateDeleteColumn="True" 
                    AutoGenerateEditColumn="True">
                    
                    <HeaderStyle HorizontalAlign="Left" />
                    
                    <PagerStyle Mode="Slider" />
                    
                    <ClientSettings>
                        <Selecting AllowRowSelect="True" />
                    </ClientSettings>
                    
                    <MasterTableView CommandItemDisplay="Top" DataMember="DefaultView"
                        DataSourceID="sdsProductLevels" EditMode="EditForms" 
                        AutoGenerateColumns="False" DataKeyNames="ID">
                        
                        <RowIndicatorColumn Visible="False">
                            <HeaderStyle Width="20px" />
                        </RowIndicatorColumn>
                        <ExpandCollapseColumn Visible="False">
                            <HeaderStyle Width="19px" />
                        </ExpandCollapseColumn>
                        <Columns>
                        <telerik:GridEditCommandColumn UniqueName="AutoGeneratedEditColumn" 
                                ButtonType="ImageButton" >
                                <HeaderStyle Width="25px" />
                                <HeaderStyle HorizontalAlign="Center" />
                                
                            </telerik:GridEditCommandColumn>
                        <telerik:GridButtonColumn CommandName="Delete" Display="True" Text="Delete" 
                                UniqueName="AutoGeneratedDeleteColumn" ButtonType="ImageButton" ConfirmText="Are you sure you want to delete this product level?">
                                <HeaderStyle Width="25px" />
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </telerik:GridButtonColumn>
                            
                            <telerik:GridDropDownColumn DataField="LevelID" DataSourceID="sdsLevels"
                                                HeaderText="Level" ListTextField="Name" ListValueField="LevelID"
                                                UniqueName="Level">
                            </telerik:GridDropDownColumn>
                            
                            <telerik:GridBoundColumn DataField="ID" DataType="System.Int32" Display="False" 
                                HeaderText="ID" ReadOnly="True" SortExpression="ID" UniqueName="ID">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Commission" 
                                DataType="System.Double" HeaderText="Commission" SortExpression="Commission" DataFormatString="{0:###,###.##}" 
                                UniqueName="Commission">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="SubCommission"  DataFormatString="{0:###,###.##}"
                                DataType="System.Double" HeaderText="SubCommission" 
                                SortExpression="SubCommission" UniqueName="SubCommission">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Target" DataType="System.Double" 
                                HeaderText="Target" SortExpression="Target" UniqueName="Target">
                            </telerik:GridBoundColumn>
                            
                        </Columns>
                        <EditFormSettings ColumnNumber="2">
                            <EditColumn UniqueName="EditCommandColumn1">
                            </EditColumn>
                        </EditFormSettings>
                        <AlternatingItemStyle BackColor="Gainsboro" />
                        
                        <EditItemStyle Font-Names="Tahoma" Font-Size="11px" />
                        
                        <CommandItemStyle BackColor="White" BorderWidth="1px" Font-Size="11px" Height="30px"
                            VerticalAlign="Middle" />
                            
                        <CommandItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="InitInsert">
                            <img alt="" src="UserContent/default/AddRecord.gif"
                                style="border:0px; vertical-align: bottom;" /> Add new product level</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton4" runat="server" CommandName="RebindGrid">
                            <img src="UserContent/default/Refresh.gif" style="border:0px" /> Refresh</asp:LinkButton>
                        </CommandItemTemplate>
                    </MasterTableView>
                    <EditItemStyle Font-Names="Tahoma" Font-Size="11px" />
                </telerik:RadGrid>
                <asp:SqlDataSource ID="sdsProductLevels" runat="server" ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>"
                    DeleteCommand="update ProductLevel set Deleted = 1 where ID = @ID" InsertCommand="insert into ProductLevel (LevelID, Commission, SubCommission, Target, ProductID) VALUES (@LevelID, @Commission, @SubCommission, @Target, @ProductID)"
                    SelectCommand="SELECT LevelID, ID, Commission, SubCommission, Target FROM ProductLevel WHERE (ProductID = @ProductID) AND (Deleted = 0)"
                    
                    UpdateCommand="update ProductLevel set LevelID = @LevelID, Commission = @Commission, SubCommission = @SubCommission, Target = @Target where ID = @ID">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="cboProduct" Name="ProductID" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="ID" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="LevelID" />
                        <asp:Parameter Name="Commission" />
                        <asp:Parameter Name="SubCommission" />
                        <asp:Parameter Name="Target" />
                        <asp:Parameter Name="ID" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="LevelID" />
                        <asp:Parameter Name="Commission" />
                        <asp:Parameter Name="SubCommission" />
                        <asp:Parameter Name="Target" />
                        <asp:Parameter Name="ProductID" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="sdsLevels" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
                    SelectCommand="Select ID as LevelID, Name from Level where Deleted = '0'"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Panel>

                <br />

                <img alt="" src="UserContent/default/Update.gif" style="width: 16px; height: 16px" /><asp:LinkButton 
                    ID="LinkButton5" runat="server" ToolTip="Click here to update changes">Update</asp:LinkButton>
                &nbsp;|&nbsp;<img alt="" src="UserContent/default/cancel.gif" style="width: 16px; height: 16px" /><asp:LinkButton 
                    ID="LinkButton6" runat="server" ToolTip="Click here to cancel">Cancel</asp:LinkButton>
                &nbsp;</telerik:RadAjaxPanel>
</div>
</asp:Content>
