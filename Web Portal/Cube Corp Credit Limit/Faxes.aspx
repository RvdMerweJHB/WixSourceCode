<%@ Page Title="Vox Amvia Vhost" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Faxes.aspx.vb" Inherits="CUBE.Faxes1" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>          
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">
        function ShowFax(id, rowIndex) {
            var grid = window["<%= rgFaxes.ClientID %>"];
            var rowControl = grid.MasterTableView.Rows[rowIndex].Control;
            grid.MasterTableView.SelectRow(rowControl, true);
            window.open("ShowFax.aspx?Fax=" + "<%= encString(id) %>");
            return false;
        }

        function ShowHistory(id, rowIndex) {
            var grid = window["<%= rgFaxes.ClientID %>"];
            var rowControl = grid.MasterTableView.Rows[rowIndex].Control;
            grid.MasterTableView.SelectRow(rowControl, true);
            window.radopen("ShowHistory.aspx?Fax=" + "<%= encString(id) %>", "ShowHistory");
            return false;
        }

        function Forward(id, rowIndex) {
            var grid = window["<%= rgFaxes.ClientID %>"];
            var rowControl = grid.MasterTableView.Rows[rowIndex].Control;
            grid.MasterTableView.SelectRow(rowControl, true);
            window.radopen("Forward.aspx?Fax=" + "<%= encString(id) %>", "Forward");
            return false;
        }

        function Resend(id, rowIndex) {
            var grid = window["<%= rgFaxes.ClientID %>"];
            var rowControl = grid.MasterTableView.Rows[rowIndex].Control;
            grid.MasterTableView.SelectRow(rowControl, true);
            window.radopen("Resend.aspx?Fax=" + "<%= encString(id) %>", "Resend");
            return false;
        }
    </script>

<div id="clear"> &nbsp;</div>
<div id="header" class="header">
 <h1>View Faxes</h1>
 </div>
 <div>
                        <div class="SearchBox" style="padding: 5px; vertical-align: middle; width:100%!important">
                            <div>
                                <h2><asp:Label ID="lblheader" runat="server" Text=""></asp:Label></h2>
                            </div>
                            <div id="clear">&nbsp;</div>
                            <div class"PaddedContainer">
                                    <div id = "field" class="submitButton"  style="width:auto!important">
                                        <asp:Button ID="cmdInbox" runat="server" Text="Inbox" />
                                    </div>
                                    <div id = "field" class="submitButton"  style="width:auto!important">
                                        <asp:Button ID="cmdSentItems" runat="server" Text="Sent Items" />
                                    </div>
                                    <div id = "field" class="submitButton"  style="width:auto!important">
                                        <asp:Button ID="cmdCreateFax" runat="server" Text="Create Fax" />
                                    </div>
                                    <div id = "field" class="submitButton"  style="width:auto!important">
                                        <asp:DropDownList ID="ddlFaxMove" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                    <div id = "field"  style="width:auto!important;">
                                    <strong>Select Action : </strong> 
                                    <asp:RadioButtonList ID="rblAction" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                        <asp:ListItem Text="Move Faxes" Value="0" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="Delete Folder" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="Rename Folder" Value="1"></asp:ListItem>
                                    </asp:RadioButtonList>
                                    </div>
                                    <div id = "field"  style="width:auto!important;margin-left:10px">
                                        <strong>Rename Folder Name : </strong><asp:TextBox ID="txtUpdateFolderName" runat="server"></asp:TextBox>
                                    </div>
                                    <div id = "field" class="submitButton"  style="width:auto!important">
                                        <asp:Button ID="cmdApplyActions" runat="server" Text="Execute" />
                                    </div>
                                    <div id="validation" class="validation" style="width:auto!important">
                                        <asp:Literal ID="literrmsg" runat="server"></asp:Literal>
                                    </div>
                                
                                <div id="clear"></div>
                                <div>
                                    <strong>How to use this section</strong>
                                    <ul>
                                    <li>Select the folder you want to perform an action on from the drop down</li>
                                    <li>Select the action</li>
                                    <li>If you want to rename the folder enter the new name you want for folder in the text box provided</li>
                                    <li>Click Execute</li>
                                    <li>To create a new folder us the section on the left hand side</li>
                                    </ul>
                                </div>
                            </div> 
                            <div id="clear"></div>
                        </div>
                        <div id="clear">&nbsp;</div>              
                       <div style="width:100%; float:left; clear:both">
                                    <div id="field"><strong>Key :</strong> </div>
                                    <div id="field"><img alt="" src="UserContent/default/fax.gif" style="width: 14px; height: 16px" /> - View fax</div>
                                    <div id="field"><img alt="" src="UserContent/default/resend.gif" style="width: 15px; height: 15px" /> - Resend fax</div>
                                    <div id="field"><img alt="" src="UserContent/default/forward.gif" style="width: 16px; height: 16px" /> - Forward fax</div>
                                    <div id="field"><img alt="" src="UserContent/default/time.gif" style="width: 16px; height: 16px" /> - View fax history</div>
                       </div>
                    <div id="clear">&nbsp;</div>
                    <table cellpadding="3px" width="98%">
                        <tr>
                        	<td valign="top">
                                
                                <div class="header" style="width:200px">
                                 <h3>Fax Folders</h3>                                   
                                </div>
                                <div>
                                <div id="field" style="width:120px!important">
                                    <asp:TextBox ID="txtNewFolder" runat="server" Text="-- Create Folder --" 
                                    Width="120px" onFocus="(this.value=='');" ValidationGroup="CreateFolder"></asp:TextBox>
                                </div>
                                <div id="field" style="margin-left:10px; width:20px!important">
                                    <asp:ImageButton ID="cmdCreateFolder" ImageUrl="~/usercontent/default/edit.gif" runat="server" />
                                </div>
                                <div id="clear" class="validation"><asp:Literal ID="litMsg" runat="server"></asp:Literal></div>
                                </div>
                                <div id="clear"><hr style="width:1px;"/></div>
                                
                                <div>
                                    <h2>Fax Folders</h2>
                                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                                    <br />
                                    <telerik:RadTreeView ID="rtvFolders" runat="server">
                                    </telerik:RadTreeView>
                                    <br />
                                    <telerik:RadAjaxLoadingPanel ID="AjaxLoadingPanel1" runat="server" Height="75px"
                                    Width="75px">
                                    <asp:Image ID="Image1" runat="server" AlternateText="Loading..."/>
                                </telerik:RadAjaxLoadingPanel>
                                </div>
                            </td>
                            <td width="100%">
                                <div style="padding-right: 8px;">
                                    <telerik:RadGrid ID="rgFaxes" runat="server" AllowFilteringByColumn="True" AllowSorting="True"
                                        AutoGenerateColumns="False" EnableAJAX="True" GridLines="None" EnableAJAXLoadingTemplate="True"
                                        BorderStyle="None" CellPadding="3" ShowGroupPanel="True" 
                                        AllowPaging="True" PageSize="20" Width="100%" 
                                        AllowMultiRowSelection="True">
                                        <ExportSettings FileName="FaxTransmissionReort">
                                            <Pdf PageWidth="8.5in" PageHeight="11in" PageTopMargin="" PageBottomMargin="" PageLeftMargin=""
                                                PageRightMargin="" PageHeaderMargin="" PageFooterMargin=""></Pdf>
                                        </ExportSettings>
                                        <ClientSettings AllowDragToGroup="false" AllowExpandCollapse="True" AllowGroupExpandCollapse="false"
                                            EnablePostBackOnRowClick="True" EnableRowHoverStyle="True" AllowRowsDragDrop="True">
                                            <Selecting AllowRowSelect="True" />
                                            <Scrolling AllowScroll="True" UseStaticHeaders="True" ScrollHeight="400px" />
                                        </ClientSettings>
                                        <GroupPanel Visible="false">
                                        </GroupPanel>
<HeaderContextMenu EnableTheming="True">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
</HeaderContextMenu>

                                        <MasterTableView DataKeyNames="UniqueID" CommandItemDisplay="Top">
                                            <EditFormSettings>
                                                <PopUpSettings ScrollBars="None"></PopUpSettings>
<EditColumn FilterControlAltText="Filter EditCommandColumn column"></EditColumn>
                                            </EditFormSettings>
                                            <CommandItemTemplate>
                                                <div style="padding: 10px;">
                                                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="RebindGrid">  
                      <img alt="" src="Usercontent/default/Refresh.gif" style="border:0px" /> Refresh</asp:LinkButton>&nbsp;|&nbsp;
<asp:LinkButton ID="LinkButton1" runat="server" CommandName="ResendSelected">  
                      <img alt="" src="Usercontent/default/resend.gif" style="border:0px" /> Resend Selected</asp:LinkButton>&nbsp;|&nbsp;
<asp:LinkButton ID="LinkButton2" runat="server" CommandName="Export">  
                      <img alt="" src="Usercontent/default/excel.gif" style="border:0px" /> Export Transmission Report to Excel</asp:LinkButton>
                                                                      </div>
                                            </CommandItemTemplate>
<CommandItemSettings ExportToPdfText="Export to PDF"></CommandItemSettings>

                                            <RowIndicatorColumn Visible="False">
                                                <HeaderStyle Width="20px"></HeaderStyle>
                                            </RowIndicatorColumn>
                                            <ExpandCollapseColumn Visible="False" Resizable="False">
                                                <HeaderStyle Width="20px"></HeaderStyle>
                                            </ExpandCollapseColumn>
                                            
                                            <Columns>
                                                <telerik:GridTemplateColumn AllowFiltering="False" Groupable="False">
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="chkMoveFax" runat="server" ToolTip="Select to Move Fax" />
                                                    </ItemTemplate>
                                                    <ItemStyle Width="25px" />
                                                </telerik:GridTemplateColumn>
                                                <telerik:GridButtonColumn UniqueName="column" ButtonType="ImageButton" ImageUrl="~/Usercontent/default/Fax.gif"
                                                    CommandName="ViewFax">
                                                    <ItemStyle Width="25px" />
                                                </telerik:GridButtonColumn>
                                                <telerik:GridButtonColumn UniqueName="Resend" ButtonType="ImageButton" ImageUrl="~/Usercontent/default/resend.gif"
                                                    CommandName="Resend">
                                                    <%--<FooterStyle Width="28px" BorderStyle="None" />
                                                    <HeaderStyle Width="28px" BorderStyle="None" />
                                                    <ItemStyle Width="28px" HorizontalAlign="Center" BorderStyle="None" />--%><ItemStyle 
                                                        Width="25px" />
                                                </telerik:GridButtonColumn>
                                                <telerik:GridButtonColumn UniqueName="Forward" ButtonType="ImageButton" ImageUrl="~/Usercontent/default/forward.gif"
                                                    CommandName="Forward">
                                                    <%-- <FooterStyle Width="28px" BorderStyle="None" />
                                                    <HeaderStyle Width="28px" BorderStyle="None" />
                                                    <ItemStyle Width="28px" HorizontalAlign="Center" BorderStyle="None" />--%><ItemStyle 
                                                        Width="25px" />
                                                </telerik:GridButtonColumn>
                                                <telerik:GridButtonColumn UniqueName="History" ButtonType="ImageButton" ImageUrl="~/Usercontent/default/time.gif"
                                                    CommandName="History">
                                                    <%--<FooterStyle Width="28px" BorderStyle="None" />
                                                    <HeaderStyle Width="28px" BorderStyle="None" />
                                                    <ItemStyle Width="28px" HorizontalAlign="Center" BorderStyle="None" />--%><ItemStyle 
                                                        Width="25px" />
                                                </telerik:GridButtonColumn>
                                                <%--<telerik:GridBoundColumn DataField="DateSent" DataType="System.DateTime" HeaderText="Date Received"
                                                    UniqueName="cDateReceived" Aggregate="Count">
                                                </telerik:GridBoundColumn>--%>
                                                <telerik:GridDateTimeColumn PickerType="DatePicker" dataField="DateSent" DataType="System.DateTime" HeaderText="Date Received" 
                                                UniqueName="cDateReceived"  FilterControlWidth="150px" DataFormatString="{0:dd/MM/yyyy HH:mm}" HtmlEncode = "false"></telerik:GridDateTimeColumn>
                                           
                                                <telerik:GridBoundColumn DataField="FromFaxNumber" HeaderText="From" UniqueName="cFromFaxNumber">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="FaxNumber" HeaderText="To" UniqueName="cFaxNumber">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Pages" DataType="System.UInt32" HeaderText="Pages"
                                                    UniqueName="cPages">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Status" HeaderText="Status" UniqueName="cStatus">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Minutes" HeaderText="Minutes" UniqueName="column2">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="UserID" HeaderText="UserID" UniqueName="column1"
                                                    Visible="False">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="History" HeaderText="History" UniqueName="column3"
                                                    Visible="False">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Image" HeaderText="Image" UniqueName="column4"
                                                    Visible="False">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="UniqueID" HeaderText="UniqueID" UniqueName="column5"
                                                    Visible="False">
                                                </telerik:GridBoundColumn>
                                               <telerik:GridBoundColumn DataField="FID" HeaderText="FaxID" UniqueName="cFID"
                                                    Visible="False">
                                                </telerik:GridBoundColumn>
                                            </Columns>
                                        </MasterTableView>

<FilterMenu EnableTheming="True">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
</FilterMenu>
                                    </telerik:RadGrid>
                                </div>
                                
                            </td>
                        </tr>
                        </table>
                </div>
    <telerik:RadWindowManager ID="RadWindowManager1" runat="server" Behavior="Close"
        Modal="True" VisibleStatusbar="False" DestroyOnClose="True" Height="500px" 
        Width="440px" Behaviors="Close">
        <Windows>
            <telerik:RadWindow ID="ShowHistory" Title="Fax History" Height="400px" Width="440px"
                runat="server" Left="150px" ReloadOnShow="True" Modal="true" />
            <telerik:RadWindow ID="Forward" Title="Forward Fax" Height="233px" Width="440px"
                runat="server" Left="150px" ReloadOnShow="True" Modal="true" />
            <telerik:RadWindow ID="Resend" Title="Resend Fax" Height="178px" Width="440px" runat="server"
                Left="150px" ReloadOnShow="True" Modal="true" />
        </Windows>
    </telerik:RadWindowManager>
</asp:Content>
