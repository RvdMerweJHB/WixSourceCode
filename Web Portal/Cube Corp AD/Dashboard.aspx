<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Dashboard.aspx.vb" Inherits="CUBE.dashboard" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
    function SelectAll(CheckBoxControl) {
        if (CheckBoxControl.checked == true) {
            var i;
            for (i = 0; i < document.forms[0].elements.length; i++) {
                if ((document.forms[0].elements[i].type == 'checkbox') &&
    (document.forms[0].elements[i].name.indexOf('chkUser') > -1)) {
                    document.forms[0].elements[i].checked = true;
                }
            }
        }
        else {
            var i;
            for (i = 0; i < document.forms[0].elements.length; i++) {
                if ((document.forms[0].elements[i].type == 'checkbox') &&
    (document.forms[0].elements[i].name.indexOf('chkUser') > -1)) {
                    document.forms[0].elements[i].checked = false;
                }
            }
        }
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="clear">&nbsp;</div>
<div id="header" class="header">
    <h1>Dashboard</h1>
</div>
<div id="quicklinkscontainer" style="padding-right:auto; padding-left:auto;">
    <div id="quicklinks">
        <div> 
            <table>
            <tr>
                <td align="left"><strong>Companies</strong></td>
            </tr>
            <tr>
                        <td align="left">
                        <telerik:RadComboBox ID="rcbCompnies" Runat="server"
                 AllowCustomText="False" MarkFirstMatch="True"
                  onclientload="onLoad">
                  </telerik:RadComboBox>
                    </td>
            </tr>
            </table>
        </div>
    </div>
    <div id="quicklinks">
        <div class="qlImage">
            <asp:ImageButton ID="ibtAddUser" runat="server"
             ImageUrl="~/usercontent/default/User_Add_Large.gif" AlternateText="Add User"
             style="width: 64px; height: 64px" />
        </div>
        <div> 
            <table>
            <tr>
                <td align="left">
                    <asp:Button ID="cmdAdduser" runat="server" Font-Bold="True" Text="Add User" />
                </td>
            </tr>
            <tr>
                <td align="left">to Company</td>
            </tr>

            </table>
        </div>
    </div>
    <div id="quicklinks">
        <div class="qlImage">
        <asp:ImageButton ID="ibtAddCompany" runat="server"
             ImageUrl="~/usercontent/default/Add_Company_Large.gif" AlternateText="Add Company"
             style="width: 64px; height: 64px" />
        </div>
        <div>
            <table>
                <tr>
                    <td align="left">
                        <asp:Button ID="AddCompany" runat="server" 
                            Font-Bold="True" Text="Add Company" />
                        </td>
                </tr>
                <tr>
                    <td align="left">under Company</td>
                </tr>

            </table>
        </div>
    </div>
    <!--div id="quicklinks">
        <div class="qlImage">
             <asp:ImageButton ID="ibtViewStats" runat="server"
             ImageUrl="~/usercontent/default/View_Report.gif" AlternateText="Reiw Statistics Report"
             style="width: 64px; height: 64px" />
        </div>
        <div>
            <table>
                    <tr>
                        <td align="left"><strong>
                            <asp:Button ID="cmdReport" runat="server" Font-Bold="True" 
                                Text="View Report" />
                            </strong></td>
                    </tr>
                    <tr>
                        <td align="left">for Company</td>
                    </tr>

            </table>
        </div>
    </div-->
    <asp:Panel ID="panStratus" runat="server" Visible="false">
    <div id="quicklinks">
                <div>
            <table>
                    <tr>
                        <td align="left">
                        <strong>Stratus</strong> 
                        <telerik:RadComboBox ID="rcbStratus" Runat="server"
                 AllowCustomText="False" MarkFirstMatch="True"
                  onclientload="onLoad">
                  </telerik:RadComboBox>
                        </td>
                    </tr>
                    <tr>
                    <td align="left">
                        <div>
                        <asp:LinkButton ID="ibtAddStratusCompany" runat="server" ToolTip="Click to add new stratus company under the selected company"> 
                        Add Company
                        </asp:LinkButton> | <asp:LinkButton ID="ibtEditStratusCompany" runat="server" ToolTip="Click to edit stratus company details">
                        Edit Company
                        </asp:LinkButton></div>
                        <div><asp:LinkButton ID="ibtNewUsers" runat="server" ToolTip="Click to create new user in selected Stratus Companany">
                        Create Users
                        </asp:LinkButton> | <asp:LinkButton ID="ibtViewUsers" runat="server" OnClick="Searching_StratusUsers" ToolTip="Click to view users in Stratus Companies">
                        View Users
                        </asp:LinkButton></div>
                    </td>
                    </tr>

            </table>
        </div>
    </div>
    </asp:Panel>
    
</div>
<div id="clear">&nbsp;
</div>
<div id="searchgrid">
    <telerik:RadGrid ID="rgUsers" runat="server" AllowAutomaticDeletes="True" AutoGenerateColumns="False"
                            BorderStyle="Solid" EnableAJAX="True" BorderWidth="1px" CellSpacing="3" 
                            EnableAJAXLoadingTemplate="True" ShowStatusBar="True" ShowFooter="True" 
                            GridLines="None" Style="z-index: 9999999"
                            Width="100%" AllowPaging="True" AllowSorting="True" >
        <HeaderContextMenu EnableTheming="True">
            <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
        </HeaderContextMenu>
        <ClientSettings EnableRowHoverStyle="True" AllowRowsDragDrop="False">
            <Resizing AllowColumnResize="false" />
            <Scrolling AllowScroll="True" ScrollHeight="" UseStaticHeaders="True" />
            <Resizing ClipCellContentOnResize="true" />
        </ClientSettings>
        <MasterTableView CommandItemDisplay="Top" DataKeyNames="Username" TableLayout="Fixed" CellSpacing="-1" Width="100%" EnableColumnsViewState="false">

<EditFormSettings>
<EditColumn FilterControlAltText="Filter EditCommandColumn column"></EditColumn>
</EditFormSettings>
        <CommandItemTemplate>
            <div style="padding: 10px;">
            <!---Table Here-->
            <table width="100%">
                <tr>
                    <td>
                        <asp:LinkButton ID="ibtEditCompany" runat="server" CommandName="EditCompany" ToolTip="Click to edit company details"> 
                        <img id="imgEditC" alt="" runat="server" src="~/usercontent/default/edit.gif" style="border:0px" />
                        Edit Company
                        </asp:LinkButton> 
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <asp:LinkButton ID="ibtTreeView" runat="server" CommandName="ViewDownLine" ToolTip="Click to view tree structure of selected company"> 
                        <img id="imgViewCTree" alt="" runat="server" src="~/usercontent/default/TreeView.gif" style="border:0px" />
                        View Tree Structure
                        </asp:LinkButton>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <asp:LinkButton ID="ibtMoveUsers" runat="server" CommandName="MassCompanyChange" ToolTip="Click to change checked users to selected company" 
                        OnClientClick="return confirm('Are you sure you want to bulk move the selected users to the currently selected company');">
                        <img id="imgMove" alt="" runat="server" src="~/usercontent/default/edit.gif" style="border:0px" />
                        Change User Company
                        </asp:LinkButton>
                   </td>
                   <td>
                        <asp:Label ID="Label6" runat="server" Text="Search:">
                        </asp:Label>
                        <telerik:RadTextBox ID="txtSearch" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="11px" 
                        ToolTip="Enter search string" Width="100px">
                        </telerik:RadTextBox>
                   </td>
                   <td>
                        <asp:Label ID="lblUType" runat="server" Text=" User Type:"></asp:Label>
                        <telerik:RadComboBox ID="cboType" runat="server" ToolTip="Select which user criteria you want to use to search"
                         Width="100px" OnClientLoad="onLoad" >
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Selected="True" Text="All Users" />
                                <telerik:RadComboBoxItem runat="server" Text="Active Users" />
                                <telerik:RadComboBoxItem runat="server" Text="Inactive Users" />
                                <telerik:RadComboBoxItem runat="server" Text="Deleted Users" />
                            </Items>
                            <CollapseAnimation Duration="200" Type="OutQuint" />
                        </telerik:RadComboBox>
                    </td>
                    <td>
                        <asp:Panel ID="Panel2" runat="server" DefaultButton="btnSearch">
                        <asp:Label ID="Label7" runat="server" Text=" in:"></asp:Label>
                        <telerik:RadComboBox ID="cboSearch" runat="server" ToolTip="Select field to search" Width="100px" OnClientLoad="onLoad">
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Selected="True" Text="Username" />
                                <telerik:RadComboBoxItem runat="server" Text="Fax number" />
                                <telerik:RadComboBoxItem runat="server" Text="Surname" />
                                <telerik:RadComboBoxItem runat="server" Text="Email" />
                            </Items>
                            <CollapseAnimation Duration="200" Type="OutQuint" />
                        </telerik:RadComboBox>
                        &nbsp;&nbsp;
                        <asp:LinkButton ID="btnSearch" runat="server" ToolTip="Click here to search" OnClick="Searching_Users" >
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/usercontent/default/searchone.gif" BorderStyle="None" BorderWidth="0px" />
                        Go
                        </asp:LinkButton>
                        </asp:Panel>
                    </td>
            </tr>
            <tr>
                    <td colspan="4">
                        <asp:LinkButton ID="btnAddUser" runat="server" CommandName="InitInsert" ToolTip="Click here to add a new user">
                        <img src="UserContent/default/adduser.gif" style="border:0px"/>
                        Add User
                        </asp:LinkButton>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <asp:LinkButton ID="btnUserImport" runat="server"  Visible=false ToolTip="Click here to import users" CommandName="Import">
                        <img src="UserContent/default/importusers.gif" style="border:0px"/>
                        Import User(s)
                        </asp:LinkButton>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <asp:LinkButton ID="btnDeleteUser" runat="server" CommandName="Delete" OnClientClick="javascript:return confirm('Are you sure you want to delete this user?')"> 
                        <img src="UserContent/default/delete.gif" style="border:0px" />
                        Delete User(s)
                        </asp:LinkButton>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <asp:LinkButton ID="btnRestore" runat="server" CommandName="Restore"> 
                        <img src="UserContent/default/insert.gif" style="border:0px" />
                        Restore User(s) 
                        </asp:LinkButton>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <asp:LinkButton ID="btnRefresh" runat="server" CommandName="RebindGrid"> 
                        <img src="UserContent/default/Refresh.gif" style="border:0px" />
                        Refresh Grid
                        </asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    </CommandItemTemplate>
    <CommandItemSettings AddNewRecordImageUrl="~/usercontent/default/AddRecord.gif" RefreshImageUrl="~/usercontent/default/Refresh.gif" />
    <RowIndicatorColumn Visible="False">
    <HeaderStyle Width="20px"></HeaderStyle>
    </RowIndicatorColumn>
    <ExpandCollapseColumn Visible="False" Resizable="False">
    <HeaderStyle Width="20px"></HeaderStyle>
    </ExpandCollapseColumn>
                            <Columns>
                                <telerik:GridTemplateColumn AllowFiltering="False" Groupable="False">
                                        <HeaderStyle HorizontalAlign="Center" Width="40px" />
                                        <HeaderTemplate>
                                        <input type="checkbox" name="SelectAllCheckBox" onclick="SelectAll(this)" />
                                        </HeaderTemplate>
                                        <ItemStyle Width="25px" BorderWidth="0px" HorizontalAlign="Center" Wrap="False" />                                    
                                        <ItemTemplate>
                                                        <asp:CheckBox ID="chkUser" runat="server" ToolTip="Select to perform an action" CssClass="chk" />
                                        </ItemTemplate>
                                        <FooterStyle Width="25px" BorderStyle="None" BorderWidth="0px" />
                                        <HeaderStyle Width="30px" HorizontalAlign="Center" />
                                        <ItemStyle Width="25px" HorizontalAlign="Center" BorderWidth="0px" />
                                    </telerik:GridTemplateColumn>
                                    <telerik:GridEditCommandColumn ButtonType="ImageButton" UniqueName="Edit" EditImageUrl="~/usercontent/default/edit.gif">
                                        <FooterStyle Width="25px" BorderStyle="None" BorderWidth="0px" />
                                        <HeaderStyle Width="25px" />
                                        <ItemStyle Width="25px" HorizontalAlign="Center" BorderWidth="0px" />
                                    </telerik:GridEditCommandColumn>
                                    <telerik:GridButtonColumn CommandName="ViewFaxes" Text="View Faxes" UniqueName="ViewFaxes"
                                        Visible="True" FilterImageUrl="~/Skins/Default2006/Filter.gif" SortAscImageUrl="~/Skins/Default2006/Grid/SortAsc.gif"
                                        SortDescImageUrl="~/Skins/Default2006/Grid/SortDesc.gif" ButtonType="ImageButton"
                                        ImageUrl="~/usercontent/default/fax.gif">
                                        <HeaderStyle Width="25px" />
                                        <FooterStyle Width="25px" BorderStyle="None" BorderWidth="0px" />
                                        <ItemStyle Width="25px" BorderWidth="0px" HorizontalAlign="Center" Wrap="False" />
                                    </telerik:GridButtonColumn>
                                    <telerik:GridTemplateColumn UniqueName="Status">
                                       <ItemStyle Width="95px" BorderWidth="0px" HorizontalAlign="Left" Wrap="False" />
                                       <HeaderStyle Width="95px" />
                                        <ItemTemplate>
                                            <asp:Image ID="imgInbound" runat="server" ToolTip="Inbound User"  ImageUrl="~/usercontent/default/inbound.gif" />
                                            <asp:Image ID="imgOutbound" runat="server" ToolTip="Outbound User"  ImageUrl="~/usercontent/default/outbound.gif" />
                                            <asp:Image ID="imgBulk" runat="server" ToolTip="Bulk Fax User"  ImageUrl="~/usercontent/default/bulk.gif" />
                                            <asp:Image ID="imgHPF" runat="server" ToolTip="Stratus User"  ImageUrl="~/usercontent/default/hpf.gif" />
                                        </ItemTemplate>
                                    </telerik:GridTemplateColumn>
                                    <telerik:GridBoundColumn DataField="FullName" HeaderText="Full Name" SortExpression="name"
                                        UniqueName="name" FilterImageUrl="~/Skins/Default2006/Filter.gif" SortAscImageUrl="~/Skins/Default2006/Grid/SortAsc.gif"
                                        SortDescImageUrl="~/Skins/Default2006/Grid/SortDesc.gif" 
                                    Aggregate="Count">
                                        <FooterStyle BorderStyle="None" BorderWidth="0px" />
                                        <HeaderStyle />
                                        <ItemStyle BorderWidth="0px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Username" FilterImageUrl="~/Skins/Default2006/Filter.gif"
                                        HeaderText="Username" SortAscImageUrl="~/Skins/Default2006/Grid/SortAsc.gif" SortDescImageUrl="~/Skins/Default2006/Grid/SortDesc.gif"
                                        SortExpression="Username" UniqueName="Username">
                                        <FooterStyle BorderStyle="None" BorderWidth="0px" />
                                        <ItemStyle BorderWidth="0px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Fax" HeaderText="Fax" SortExpression="Fax" UniqueName="Fax"
                                        FilterImageUrl="~/Skins/Default2006/Filter.gif" SortAscImageUrl="~/Skins/Default2006/Grid/SortAsc.gif"
                                        SortDescImageUrl="~/Skins/Default2006/Grid/SortDesc.gif">
                                        <FooterStyle BorderStyle="None" BorderWidth="0px" Width="60px" />
                                        <HeaderStyle Width="85px" />
                                        <ItemStyle BorderWidth="0px" Width="85px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridHyperLinkColumn DataNavigateUrlFields="Email" DataNavigateUrlFormatString="mailto://{0}"
                                        DataTextField="Email" HeaderText="Email" UniqueName="email">
                                        <FooterStyle BorderStyle="None" BorderWidth="0px" />
                                        <ItemStyle BorderWidth="0px" />
                                    </telerik:GridHyperLinkColumn>
                                    <telerik:GridBoundColumn DataField="Name" DataType="System.string" FilterImageUrl="~/Skins/Default2006/Filter.gif"
                                        HeaderText="Company" 
                                    SortAscImageUrl="~/Skins/Default2006/Grid/SortAsc.gif" SortDescImageUrl="~/Skins/Default2006/Grid/SortDesc.gif"
                                        SortExpression="Name" UniqueName="Company">
                                        <FooterStyle BorderStyle="None" BorderWidth="0px" />
                                        <ItemStyle BorderWidth="0px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="CompanyID" HeaderText="Company ID" SortExpression="CompanyID"
                                        UniqueName="CompanyID" Visible="false">
                                    </telerik:GridBoundColumn>
                                </Columns>                            
    </MasterTableView>
                            <FilterMenu EnableTheming="True">
                                <CollapseAnimation Duration="200" Type="OutQuint" />
                            </FilterMenu>
                        </telerik:RadGrid>
</div>
</asp:Content>
