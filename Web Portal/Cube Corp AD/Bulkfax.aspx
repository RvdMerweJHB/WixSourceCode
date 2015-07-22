<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Bulkfax.aspx.vb" Inherits="CUBE.Bulkfax" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="clear"> &nbsp;</div>
<div><table width="100%">
    <tr>
        <td>
            <div id="header" class="header">
                
                <h1>Bulk Faxing</h1></div>
                        <div class="PaddedContainer">
            <table>
    <tr>
        <td width="100px">
            <asp:Label ID="Label2" runat="server" Text="Select batch:"></asp:Label>
        </td>
        <td>
            <telerik:RadComboBox ID="cboProduct" runat="server" DataSourceID="ldsProducts" RadComboBoxImagePosition="Right"
                 AutoPostBack="True" DataTextField="Name" DataValueField="ID" 
                ToolTip="Select a product">
                <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                <ExpandAnimation Type="OutQuart"></ExpandAnimation>
            </telerik:RadComboBox>
            <asp:LinqDataSource ID="ldsProducts" runat="server" ContextTypeName="CUBE.DBDataContext"
                OrderBy="DateCreated desc" Select="new (ID, Name)" TableName="Batches" 
                Where="UserID == guid(@UserID)" EntityTypeName="">
                <WhereParameters>
                    <asp:Parameter DbType="Guid" Name="UserID" />
                </WhereParameters>
            </asp:LinqDataSource>
        </td>
        <td>
            &nbsp;&nbsp;<asp:Button ID="cmdNew" runat="server" Text="New Batch" />
            &nbsp; <asp:Button ID="cmdRefresh" runat="server" Text="Refresh" />
            &nbsp;
        </td>
    </tr>
</table>
<br />
<asp:Panel ID="Panel1" runat="server">
    <table cellpadding="3px">
        <tr>
            <td colspan="3">
                <asp:Label ID="Label27" runat="server" Text="Please specify the following information."
                    CssClass="Heading2"></asp:Label>
                <br />
                <asp:HiddenField ID="hfProductID" runat="server" />
                <br />
            </td>
            <td align="left" rowspan="18" valign="top" style="width:55%">
                <asp:Panel ID="panInfo" runat="server" cssClass="SearchBox" 
                    Style="padding:10px !important; min-height:237px !important" Visible="True" 
                    Width="90%">
                    <b style="text-decoration:underline">Creating a new Batch</b>
                    <ul>
                    <li>Click on the New Batch button</li>
                        <li>Enter details for your batch in the spaces provided</li>
                            <ul>
                                <li>Name - Name of the Batch you are creating</li>
                                <li>Name of Fax Field - Name field with the fax number in your CSV file</li>
                                <li>Fax Document - The document on your computer that needs to be uploaded that will 
                                    have the merge fields or that you want to send unmerged</li>
                                <li>Fax List - CSV file with information for the merge (i.e. FaxNo, FirstName, 
                                    Surname...) <span class="style1">
                                    <br />
                                    NB</span><b> </b><i>The First row in the CSV file should have the column 
                                    headings that correspond to the merge fields in your word document. Take special 
                                    note of spaces and case.</i></li>
                            </ul>
                        <li>Click Update</li>
                        <li>Click view sample button to view a sample merged document</li>
                        <li>Approve the batch</li>
                    </ul>
           
                    <font color="red"><b>Please note unless otherwise requested, and 
                    subject to load on the system, each batch will be sent during the next 48 hour 
                    period<br />
                    </b></font><br />
                    
                    <b style="text-decoration:underline">Viewing &amp; Updating batch progress</b>
                    <ul>
                        <li>
                            Select the batch you want to view from the drop down
                        </li>
                        <li>You can change the parameters of the batch if you have made a mistake in the 
                            creation of the batch.</li>
                        <li>You also can view a summary of each item in the batch by fax number to assess if 
                            the faxes where sent and their respective status.</li>
                    </ul>
           
                    
                    </asp:Panel>
            </td>
        </tr>
        <tr>
            <td width="150">
                <asp:Label ID="Label4" runat="server" Text="Name:"></asp:Label>
            </td>
            <td class="style3" >
                <telerik:RadTextBox ID="txtName" runat="server"  Width="150px">
                </telerik:RadTextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="Batch Name Required" 
                    ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="150">
                <asp:Label ID="Label34" runat="server" Text="Contact Name :"></asp:Label>
            </td>
            <td class="style3">
                <telerik:RadTextBox ID="txtContactName" runat="server" Width="150px">
                </telerik:RadTextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtContactName" ErrorMessage="Contact Name Required" 
                    ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="150">
                <asp:Label ID="Label35" runat="server" Text="Contact Email :"></asp:Label>
            </td>
            <td class="style3">
                <telerik:RadTextBox ID="txtContactEmail" runat="server" Width="150px">
                </telerik:RadTextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtContactEmail" ErrorMessage="Contact Email Required" 
                    ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="150">
                <asp:Label ID="Label33" runat="server" Text="Name Of Fax Field:"></asp:Label>
            </td>
            <td class="style3">
                <telerik:RadTextBox ID="txtFaxNoField" runat="server" Width="150px">
                </telerik:RadTextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtFaxNoField" ErrorMessage="Fax No. Field Required" 
                    ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="150">
                Name of Subject/Ref Field :</td>
            <td class="style3">
                <telerik:RadTextBox ID="txtSubject" runat="server" Width="150px">
                </telerik:RadTextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Special Requests:"></asp:Label>
            </td>
            <td class="style3">
                <telerik:RadTextBox ID="txtValue" runat="server"  Width="150px" Rows="4" 
                    TextMode="MultiLine">
                </telerik:RadTextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label31" runat="server" Text="Fax Document:"></asp:Label>
            </td>
            <td class="style3">
                                <telerik:RadUpload ID="ruDoc" Runat="server" InitialFileInputsCount="1" 
                    ControlObjectsVisibility="None" Width="285px"/>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label32" runat="server" Text="Fax List:"></asp:Label>
            </td>
            <td class="style3">
                                <telerik:RadUpload ID="ruList" Runat="server" InitialFileInputsCount="1" 
                    ControlObjectsVisibility="None" Width="276px"/>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblUPages" runat="server" Text="Pages in Attachment :"></asp:Label>
            </td>
            <td class="style3">
                <telerik:RadTextBox ID="txtPages" runat="server" Width="50px">
                </telerik:RadTextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtPages" ErrorMessage="Pages in attachment Required" 
                    ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblUGC" runat="server" Text="User Group Code :"></asp:Label>
            </td>
            <td class="style3">
                <asp:Label ID="lblUGCview" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Date Created:"></asp:Label>
            </td>
            <td class="style3">
                <asp:Label ID="lblCreateDate" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label29" runat="server" Text="Date Approved:"></asp:Label>
            </td>
            <td class="style3">
                <asp:Label ID="lblApproveDate" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label36" runat="server" Text="Date Authorised:"></asp:Label>
            </td>
            <td class="style3">
                <asp:Label ID="lblAuthorisedDate" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label30" runat="server" Text="Date Dispatched:"></asp:Label>
            </td>
            <td class="style3">
                <asp:Label ID="lblDispatchDate" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;
                <asp:Button ID="btnSample" runat="server" Text="View Sample" 
                    ToolTip="This sample is for documents with mearge fields." />
                <asp:Button ID="btnApprove" runat="server" Text="Approve Batch" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label28" runat="server" Text="Faxes:"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="3">
            
                <asp:Label ID="lblNotes" runat="server" Visible="False" 
                    Width="100%" CssClass="SearchBox"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblDeclined" runat="server" CssClass="SearchBox" Visible="False" 
                    Width="100%"></asp:Label>
                <br />
                <br />
            
                <telerik:RadGrid ID="RadGrid1" runat="server" 
                    DataMember="DefaultView" DataSourceID="SqlDataSource1"
                    EnableAJAX="True" EnableAJAXLoadingTemplate="True" EnableTheming="False" GridLines="None"
                    LoadingTemplateTransparency="50" 
                    Visible="False" AutoGenerateColumns="False">
                    
                    <HeaderStyle HorizontalAlign="Left" />
                    
                    <ExportSettings FileName="BatchFaxTransmissionReort">
                    </ExportSettings>
                    
                    <PagerStyle Mode="Slider" />
                    
                    <ClientSettings>
                        <Selecting AllowRowSelect="True" />
                    </ClientSettings>
                    
                    <MasterTableView DataMember="DefaultView"
                        DataSourceID="SqlDataSource1" EditMode="EditForms" 
                        CommandItemDisplay="Top">
                        
                        <Columns>
                            <telerik:GridBoundColumn DataField="FaxNumber" DataType="System.Int64" 
                                HeaderText="FaxNumber" ReadOnly="True" SortExpression="FaxNumber" 
                                UniqueName="FaxNumber">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="DateSent" DataType="System.DateTime" 
                                HeaderText="DateSent" ReadOnly="True" SortExpression="DateSent" 
                                UniqueName="DateSent">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ErrorMessage" HeaderText="ErrorMessage" 
                                ReadOnly="True" SortExpression="ErrorMessage" UniqueName="ErrorMessage">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="DateFailed" DataType="System.DateTime" 
                                HeaderText="DateFailed" ReadOnly="True" SortExpression="DateFailed" 
                                UniqueName="DateFailed">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Status" HeaderText="Status" 
                                SortExpression="Status" UniqueName="Status">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="subject" HeaderText="Subject/Ref" 
                                SortExpression="subject" UniqueName="subject">
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
                       <asp:Button ID="cmdExport" runat="server" Text="Export to Excel"  CommandName="Export" Visible="true"/>
                       <asp:Button ID="cmdResend" runat="server" Text="Resend Failures"  CommandName="Resend" Visible="true"/>
                        </CommandItemTemplate>
                    </MasterTableView>
                    <EditItemStyle Font-Names="Tahoma" Font-Size="11px" />
                </telerik:RadGrid>
                <asp:LinqDataSource ID="ldsFaxes" runat="server" 
                    ContextTypeName="CUBE.DBDataContext" 
                    Select="new (FaxNumber, DateSent, ErrorMessage, DateFailed, Subject)" 
                    TableName="BatchFaxes" Where="BatchID == @BatchID">
                    <WhereParameters>
                        <asp:ControlParameter ControlID="cboProduct" Name="BatchID" 
                            PropertyName="SelectedValue" Type="Int64" />
                    </WhereParameters>
                </asp:LinqDataSource>
            </td>
        </tr>
    </table>
</asp:Panel>

                            <br />
                            <asp:Button ID="cmdUpdate" runat="server" Text="Update" 
                                ToolTip="Click here to update changes" ValidationGroup="1" />
&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="cmdCancel" runat="server" Text="Cancel" ToolTip="Click here to cancel"/>

                &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
                                SelectCommand="select bf.*, s.Status from batchfax bf left outer join rightfax..documents d on d.handle = bf.FaxID left outer join Status s on d.TermStat = s.ID where bf.BatchID = @BatchID">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="cboProduct" Name="BatchID" 
                                        PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
</div>

        </td>
    </tr>
</table>
</div>
<div id="clear"></div>

    
    
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" 
        height="75px" width="75px">
        <img alt="Loading..." 
            src='<%= RadAjaxLoadingPanel.GetWebResourceUrl(Page, "Telerik.Web.UI.Skins.Default.Ajax.loading.gif") %>' 
            style="border:0px;" />
    </telerik:RadAjaxLoadingPanel>

</asp:Content>
