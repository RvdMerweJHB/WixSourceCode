<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ShowHistory.aspx.vb" Inherits="CUBE.ShowHistory" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Fax History</title>
    <link href="Styles.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">

        function GetRadWindow() {
            var oWindow = null;
            if (window.radWindow) oWindow = window.radWindow;
            else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow;
            return oWindow;
        }

</script>

</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 100%;">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
    </telerik:RadScriptManager>
    <table width="100%">
        <tr><td>
            <h3>Select Criteria<asp:TextBox ID="TextBox1" runat="server" Height="1px" 
                    Visible="False" Width="1px"></asp:TextBox>
            </h3></td></tr>
        <tr><td>
            <asp:DropDownList ID="cboSelect" runat="server" AutoPostBack="True">
                <asp:ListItem Value="9999">Select Criteria</asp:ListItem>
                <asp:ListItem Value="0">Fax Server History</asp:ListItem>
                <asp:ListItem Value="1">Web Site History</asp:ListItem>
            </asp:DropDownList>
            </td></tr>
        <tr>
            <td>
    
    <div class="PaddedContainer">
   <asp:Repeater ID="rpHistory" runat="server">
   <ItemTemplate>
    <%#DataBinder.Eval(Container.DataItem, "Details")%>
    <br />
    </ItemTemplate>
    </asp:Repeater>
    </div>
            </td>
        </tr>
        <tr><td>
            <asp:Panel ID="CubePanel" runat="server">
                <telerik:RadGrid ID="GridCube" runat="server" GridLines="None" Width="412px" 
                    DataSourceID="CubeFaxHistory" Height="150px" Skin="Telerik">
                    <ClientSettings>
                        <Scrolling AllowScroll="True" />
                    </ClientSettings>
                    <MasterTableView AutoGenerateColumns="False" DataSourceID="CubeFaxHistory">
                        <CommandItemSettings ExportToPdfText="Export to Pdf" />
                        <RowIndicatorColumn FilterControlAltText="Filter RowIndicator column">
                            <HeaderStyle Width="20px" />
                        </RowIndicatorColumn>
                        <ExpandCollapseColumn FilterControlAltText="Filter ExpandColumn column">
                            <HeaderStyle Width="20px" />
                        </ExpandCollapseColumn>
                        <Columns>
                            <telerik:GridBoundColumn DataField="Username" 
                                FilterControlAltText="Filter Username column" HeaderText="Username" 
                                ReadOnly="True" SortExpression="Username" UniqueName="Username">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Firstname" 
                                FilterControlAltText="Filter Firstname column" HeaderText="Firstname" 
                                ReadOnly="True" SortExpression="Firstname" UniqueName="Firstname">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Surname" 
                                FilterControlAltText="Filter Surname column" HeaderText="Surname" ReadOnly="True" 
                                SortExpression="Surname" UniqueName="Surname">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Action" 
                                FilterControlAltText="Filter Action column" HeaderText="Action" 
                                ReadOnly="True" SortExpression="Action" UniqueName="Action">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Date_Time" 
                                FilterControlAltText="Filter Date_Time column" HeaderText="Date_Time" 
                                ReadOnly="True" SortExpression="Date_Time" UniqueName="Date_Time">
                            </telerik:GridBoundColumn>
                        </Columns>
                        <EditFormSettings>
                            <EditColumn FilterControlAltText="Filter EditCommandColumn column">
                            </EditColumn>
                        </EditFormSettings>
                    </MasterTableView>
                    <FilterMenu EnableImageSprites="False">
                    </FilterMenu>
                    <HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Default">
                    </HeaderContextMenu>
                </telerik:RadGrid>

                <asp:LinqDataSource ID="CubeFaxHistory" runat="server" 
                    ContextTypeName="CUBE.DBDataContext" EntityTypeName="" OrderBy="Date_Time desc" 
                    Select="new (Username, Firstname, Surname, Action, Date_Time)" 
                    TableName="Fax_AuditTrails" Where="FaxHandleID == @FaxHandleID1">
                    <WhereParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="FaxHandleID1" 
                            PropertyName="Text" Type="Int64" />
                    </WhereParameters>
                </asp:LinqDataSource>

            </asp:Panel>
        </td></tr>
        <tr><td>
            <img alt="" src="images/cancel.gif" style="width: 16px; height: 16px" /><asp:LinkButton 
                ID="LinkButton2" runat="server" 
                onclientclick="var oWindow = GetRadWindow();oWindow.Close();" 
                ToolTip="Click here to cancel">Cancel</asp:LinkButton>
        </td></tr>
    </table>
    </div>
    <telerik:RadFormDecorator ID="RadFormDecorator1" Runat="server" />
    </form>
</body>
</html>


