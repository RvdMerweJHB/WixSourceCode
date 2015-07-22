<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ContactsImport.aspx.vb" Inherits="CUBE.ContactsImport" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     </head>
       <script type="text/javascript">
           function SelectAll(CheckBoxControl) {
               if (CheckBoxControl.checked == true) {
                   var i;
                   for (i = 0; i < document.forms[0].elements.length; i++) {
                       if ((document.forms[0].elements[i].type == 'checkbox') &&
    (document.forms[0].elements[i].name.indexOf('chkselected') > -1)) {
                           document.forms[0].elements[i].checked = true;
                       }
                   }
               }
               else {
                   var i;
                   for (i = 0; i < document.forms[0].elements.length; i++) {
                       if ((document.forms[0].elements[i].type == 'checkbox') &&
    (document.forms[0].elements[i].name.indexOf('chkselected') > -1)) {
                           document.forms[0].elements[i].checked = false;
                       }
                   }
               }
           }
</script>
<body>
      <form id="form1" runat="server">
      <div>
    
          <telerik:RadScriptManager ID="RadScriptManager1" Runat="server">
          </telerik:RadScriptManager>
        
    </div>
    <div id="clear">
        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
      </div>
    <div>
    <table class="style1">
            <tr>
                <td style="width:50%;">
                      <asp:Panel ID="PanelLogin" runat="server">
            <table cellpadding="0" cellspacing="1">
                <tr>
                    <td colspan="2">
                         <h5 style="color:red">NB:Failed Login Attempts will affect your Account</h5></td>
                </tr>
                <tr>
                    <td style="width:150px;">
                        <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
                    </td>
                    <td style="width:150px;">
                        <asp:TextBox ID="txtUser" runat="server" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style12">
                        </td>
                    <td class="style5">
                        </td>
                </tr>
                <tr>
                    <td class="style11">
                        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtPass" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        <asp:Button ID="btnGrab" runat="server" BackColor="White" BorderColor="#009933" 
                            BorderStyle="Outset" ForeColor="Black" Text="Retrieve Contacts" />
                    </td>
                    <td class="style3">
                        <asp:Button ID="btnredirect0" runat="server" Height="26px" Text="Button" 
                            Width="56px" />
                    </td>
                </tr>
                <tr>
                    <td class="style11" colspan="2">
                        <asp:Label ID="lblGrabResult" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="2">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        </td>
                <td rowspan="3" align="right" valign="top">
                        <asp:Image ID="Logo" runat="server" />
                    </td>
            </tr>
            <tr>
                <td style="width:50%;">
                     <asp:Panel ID="PanelOutlook" runat="server">
                         &nbsp;<table>
                             <tr>
                                 <td colspan="3">Please Select the CSV Provider format <br />
                                     <asp:RadioButtonList ID="rdo_uploadtype" runat="server" Width="450px">
                                         <asp:ListItem Selected="True" Text="" Value="0">Outlook & Express</asp:ListItem>
                                         <asp:ListItem Text="" Value="1">Gmail</asp:ListItem>
                                         <asp:ListItem Text="" Value="2">Yahoo </asp:ListItem>                                          
                                         <asp:ListItem Text="" Value="3">Windows Live</asp:ListItem>
                                    </asp:RadioButtonList>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:LinkButton ID="lnkHelp" runat="server" PostBackUrl="~/CSVHelper.aspx">Help</asp:LinkButton>
                                 </td>
                                 <td>
                                     &nbsp;</td>
                                 <td align="left">
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td>
                                     Select file</td>
                                 <td>
                                     <div ID="loading" style="display:none">
                                         <img alt="" 
                    src="http://localhost:1978/VB_Stescodes_grabber_whole/images/sload.gif" />
                                     </div>
                                     <asp:FileUpload ID="file_upload" runat="server" onchange="showloading();" />
                                 </td>
                                 <td align="left">
                                     <table cellpadding="0" cellspacing="0">
                                         <tr>
                                             <td>
                                             </td>
                                         </tr>
                                         <tr>
                                             <td align="left">
                                                 <div style="font-family:Arial;font-size:11px">
                                                     Note: Please select file of type *.csv</div>
                                             </td>
                                         </tr>
                                     </table>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:Button ID="btnGrabCSV" runat="server" BackColor="White" 
                                         BorderColor="#009933" BorderStyle="Outset" ForeColor="Black" 
                                         Text="Retrieve Contacts" />
                                 </td>
                                 <td>
                                     &nbsp;</td>
                                 <td align="left">
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td colspan="2">
                                     <asp:Label ID="lblGrabResultOutlook" runat="server" ForeColor="Red"></asp:Label>
                                 </td>
                                 <td align="left">
                                     &nbsp;</td>
                             </tr>
                         </table>
                                   </asp:Panel></td>
            </tr>
            <tr>
                <td style="width:50%;">
                   <asp:Panel ID="PanelResults" runat="server">
          <table cellpadding="0">
                <tr>
                    <td style="width:150px;">
                        <asp:Button ID="btnSendEmails" runat="server" BackColor="White" 
                            BorderColor="#009933" BorderStyle="Outset" ForeColor="Black" 
                            Text="Send Emails" Width="150px" />
                    </td>
                    <td style="width:150px;">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4" colspan="2">
                        <asp:Label ID="lblSendResult" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style3">
                        &nbsp;</td>
                </tr>
            </table>
          </asp:Panel></td>
            </tr>
        </table>
          
      
         
        
      </div>
      <div id="formcenter">
           <telerik:RadGrid ID="rgContacts" runat="server" AutoGenerateColumns="False"
                            BorderStyle="Solid" EnableAJAX="True" 
        BorderWidth="1px" 
                            EnableAJAXLoadingTemplate="True" ShowStatusBar="True" ShowFooter="True" 
                            GridLines="None" Style="z-index: 9999999" Skin="Vista" 
        CellPadding="0" ViewStateMode="Enabled" EnableHeaderContextMenu="True" >
        <HeaderContextMenu EnableTheming="True">
            <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
        </HeaderContextMenu>
        <ClientSettings EnableRowHoverStyle="True" AllowRowsDragDrop="False">
            <Resizing AllowColumnResize="false" />
            <Scrolling AllowScroll="True" ScrollHeight="320px" UseStaticHeaders="True" />
            <Resizing ClipCellContentOnResize="true" />
        </ClientSettings>
        <MasterTableView CommandItemDisplay="Top" TableLayout="Fixed" CellSpacing="-1" 
            Width="" PageSize="20">
        <CommandItemTemplate>
            <div style="padding: 10px;">
            <!---Table Here-->
        </div>
    </CommandItemTemplate>
    <RowIndicatorColumn Visible="False">
    <HeaderStyle Width="20px"></HeaderStyle>
    </RowIndicatorColumn>
    <ExpandCollapseColumn Visible="False" Resizable="False">
    <HeaderStyle Width="20px"></HeaderStyle>
    </ExpandCollapseColumn>
                            <NoRecordsTemplate>
                                No Records to display.
            </NoRecordsTemplate>
                            <Columns>
                                <telerik:GridTemplateColumn AllowFiltering="False" Groupable="False" 
                                    UniqueName="TemplateColumn1">
                                        <HeaderStyle HorizontalAlign="Center" Width="40px" />
                                        <HeaderTemplate>
                                        <input type="checkbox" name="SelectAllCheckBox" onclick="SelectAll(this)" />
                                        </HeaderTemplate>
                                        <ItemStyle Width="25px" BorderWidth="0px" HorizontalAlign="Center" Wrap="False" />                                    
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkselected" runat="server" />
                                        </ItemTemplate>
                                        <FooterStyle Width="25px" BorderStyle="None" BorderWidth="0px" />
                                    </telerik:GridTemplateColumn>
                                    <telerik:GridBoundColumn DataField="Name" HeaderText="Name" 
                                    UniqueName="Name">
                                        <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                                            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" 
                                            Wrap="True" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="Email" DefaultInsertValue="" 
                                    HeaderText="Email Address" UniqueName="Email Address">
                                    <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                                        Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" 
                                        Wrap="True" />
                                    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                                        Font-Strikeout="False" Font-Underline="False" Wrap="True" />
                                </telerik:GridBoundColumn>
                                </Columns>                            
    </MasterTableView>
                            <SelectedItemStyle Font-Bold="True" />
                            <FilterMenu EnableTheming="True">
                                <CollapseAnimation Duration="200" Type="OutQuint" />
                            </FilterMenu>
                        </telerik:RadGrid>
      </div>

      </form>
  </body>
</html>
