<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AdministratorManager.aspx.vb" Inherits="CUBE.AdministratorManager" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
    function onLoad(sender, eventArgs) {
        sender.get_items(); //This is enough to force Items initialization.
    }

    function mngRequestStarted(sender, eventArgs) {
        if (eventArgs.EventTarget.indexOf("cmdExport") != -1) {
            eventArgs.EnableAjax = false;
        }
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear"> &nbsp;</div>

<div id="header" class="header">
 <h1>Administrator Manager</h1>
 </div>
  <telerik:RadAjaxLoadingPanel ID="ralpAdmins" runat="server" Skin="Default">
    </telerik:RadAjaxLoadingPanel>
    <telerik:RadAjaxPanel ID="rapAdmins" runat="server" Width="100%" 
        EnableAJAX="true" LoadingPanelID="ralpAdmins">
    <telerik:RadGrid ID="rgAdmins" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" GridLines="None">
        <ExportSettings ExportOnlyData="True" IgnorePaging="True" 
            OpenInNewWindow="True">
        </ExportSettings>
        <MasterTableView CommandItemDisplay="Top">
            <RowIndicatorColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </RowIndicatorColumn>
            <ExpandCollapseColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </ExpandCollapseColumn>
            <CommandItemTemplate>
           <table width="100%" cellpadding="5px" style="height:50px">
           <tr align="left">
                <td style="width:0px">
                    <asp:Label ID="lblCName" runat="server" Text="Company Name:"></asp:Label>
                     <telerik:RadComboBox ID="rcbCompanies" Runat="server" AllowCustomText="False" MarkFirstMatch="True" OnClientLoad="onLoad" ZIndex="50000">
                     </telerik:RadComboBox>
                </td>
                <td>
                    <asp:Label ID="lblType" runat="server" Text="View Type"></asp:Label>
                     <telerik:RadComboBox ID="rcbViewType" Runat="server" AllowCustomText="False" MarkFirstMatch="True" OnClientLoad="onLoad" ZIndex="50000">
                        <Items>
                            <telerik:RadComboBoxItem runat="server" Selected="True" Text="Administrators" Value="Administrators" />
                            <telerik:RadComboBoxItem runat="server" Text="Agents" Value="Agents" />
                        </Items>
                     </telerik:RadComboBox>
                     <asp:LinkButton ID="lbtSearch" runat="server" ToolTip="Click here to search" OnClick="Search_Click">
                     &nbsp; &nbsp;  <asp:CheckBox ID="chkSubCompanies" runat="server" Text="Include Sub-Companies"  tooltip="Check to include results from sub-companies"/>&nbsp; &nbsp; <asp:Image ID="imgGo" runat="server" ImageUrl="~/usercontent/default/searchone.gif" BorderStyle="None" BorderWidth="0px" ToolTip="Click to Search" />Go</asp:LinkButton>
                </td>
                <td>
                    <asp:Button ID="cmdExport" runat="server" Text="Export to Excel"  CommandName="Export" Visible="false"/></td>
           </tr>
           </table>
            </CommandItemTemplate>
            
            <Columns>
                <telerik:GridBoundColumn DataField="Firstname" HeaderText="First Name" 
                    UniqueName="cFName">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Surname" HeaderText="Surname" 
                    UniqueName="cLName">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Email" HeaderText="Email Address" 
                    UniqueName="cEmail">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Username" HeaderText="UserName" 
                    UniqueName="cUName">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Password" HeaderText="Password" 
                    UniqueName="cPassword">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Fax" HeaderText="Fax Number" 
                    UniqueName="cFax">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="CompanyName" HeaderText="Company Name" 
                    UniqueName="cCompany">
                </telerik:GridBoundColumn>
                <telerik:GridButtonColumn ButtonType="PushButton" CommandName="viewRoles" 
                    Text="Change Roles" UniqueName="cRoles" Visible="false">
                </telerik:GridButtonColumn>
            </Columns>
        </MasterTableView>
    </telerik:RadGrid>
    </telerik:RadAjaxPanel>
    <br />
    <div style="text-align:right; width:100%"><asp:Button ID="Button1" runat="server" Text="Export Data" 
        ToolTip="Click to export data to excel" /></div>
        <div id="Div1"></div>
</asp:Content>
