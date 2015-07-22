<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="EmailedReports.aspx.vb" Inherits="CUBE.EmailedReports" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="clear">&nbsp;</div>
<div id="header" class="header">
    <h1>Emailed Reports</h1>    
    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy2" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="cboDateRange">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="panDateRange" 
                        LoadingPanelID="rlpReports" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>
    <telerik:RadAjaxLoadingPanel ID="rlpReports" Runat="server" Skin="Default">
    </telerik:RadAjaxLoadingPanel>
</div>
<div id="clear"></div>
<div>
<div id="formContainerHalf">
<div id="label">
    <asp:Label ID="lblReportType" runat="server" Text="Report Type"></asp:Label>
</div>
<div id="field">
    <span class="validation">
    <telerik:RadComboBox ID="rcbReport" Runat="server" Sort="Ascending">
    <Items>
        <telerik:RadComboBoxItem runat="server" Text="Usage by company" />
        <telerik:RadComboBoxItem runat="server" Text="User list" />
    </Items>
    <collapseanimation duration="200" type="OutQuint" />
    <expandanimation type="OutQuart" />
    </telerik:RadComboBox>
    </span></div>
<div id="validation">

</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblCompany" runat="server" Text="Company"></asp:Label>
    </div>
<div id="field">
    <span class="validation">
    <telerik:RadComboBox ID="rcbCompany" Runat="server" OnClientLoad ="onLoad" AllowCustomText="False" MarkFirstMatch="True">
    </telerik:RadComboBox>
    </span></div>
<div id="validation">
</div>
<div id="clear">
    <br />
    </div>
<div id="label">
    <asp:Label ID="lblemail" runat="server" Text="Timespan"></asp:Label>
</div>
<div id="field">
    <telerik:RadComboBox ID="cboDateRange" runat="server" AutoPostBack="true" Text="This Month" Width="100px">
        <Items>
          <telerik:RadComboBoxItem runat="server" Text="This month" Value="This month" />
          <telerik:RadComboBoxItem runat="server" Text="Last month" Value="Last month" />
          <telerik:RadComboBoxItem runat="server" Text="This Week" Value="This Week" />
          <telerik:RadComboBoxItem runat="server" Text="This Year" Value="This Year" />
          <telerik:RadComboBoxItem runat="server" Text="Custom" Value="Custom" />
        </Items>
        <collapseanimation duration="200" type="OutQuint" />
        <expandanimation type="OutQuart" />
    </telerik:RadComboBox>
</div>
<div id="clear"></div>
<div id="label"></div>
<div id="field" style="width:auto">
<asp:Panel ID="panDateRange" runat="server" CssClass="SearchBox" Visible="False" Width="220px">
                                                            <table cellpadding="3px">
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label12" runat="server" Text="Start:" Width="50px"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <telerik:RadDatePicker ID="rdpStartDate" runat="server" 
                                                                            Culture="English (South Africa)" Width="150px">
                                                                            <dateinput dateformat="dd/MM/yyyy">
                                                                            </dateinput>
                                                                            <calendar>
                                                                            </calendar>
                                                                            <datepopupbutton hoverimageurl="" imageurl="" />
                                                                        </telerik:RadDatePicker>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label13" runat="server" Text="End:" Width="50px"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <telerik:RadDatePicker ID="rdpEndDate" runat="server" 
                                                                            Culture="English (South Africa)" Width="150px">
                                                                            <dateinput dateformat="dd/MM/yyyy">
                                                                            </dateinput>
                                                                            <calendar>
                                                                            </calendar>
                                                                            <datepopupbutton hoverimageurl="" imageurl="" />
                                                                        </telerik:RadDatePicker>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
</div>
<div id="clear"></div>
<div id="label">
    </div>
<div id="field" style="width:auto">
    <asp:CheckBox ID="chkSubCompanies" Text="Include Sub-Companies" runat="server" />
</div>
<div id="clear"></div>
<div id="label">
    <asp:Label ID="lblrecur" runat="server" Text="Recurrence Pattern"></asp:Label>
</div>
<div id="field">
    <telerik:RadComboBox ID="rcbRecurrence" runat="server" 
        Width="100px" DataSourceID="sdsReccurence" DataTextField="Recurrence" 
        DataValueField="ID">
        <collapseanimation duration="200" type="OutQuint" />
        <expandanimation type="OutQuart" />
    </telerik:RadComboBox>
</div>
<div id="clear"></div>
<div id="label"></div>
<div id="field">
    <asp:Button ID="cmdSave" runat="server" Text="Execute Report" />
    </div>
<div id="validation"></div>
<div id="clear">
    <asp:SqlDataSource ID="sdsReccurence" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        SelectCommand="SELECT * FROM [RecurrenceDefinations]"></asp:SqlDataSource>
    </div>
</div>
<div id="formContainerHalf">
<div class="SearchBox" style="padding:5px">
<strong style="text-decoration:underline; width:auto!important">Recurrence Definations</strong>
<ul>
<li>Once - Happens Only Once</li> 
<li>Daily - Generated on a daily Basis</li> 
<li>Weekly - Generated every Sunday</li> 
<li>Monthly	- Generated on the last day of the month</li> 
</ul>
</div>
</div>
</div>
</asp:Content>
