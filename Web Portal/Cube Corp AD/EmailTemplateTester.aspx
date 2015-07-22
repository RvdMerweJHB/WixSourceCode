<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="EmailTemplateTester.aspx.vb" Inherits="CUBE.EmailTemplateTester" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear">&nbsp;</div>
<div id="header" class="header">
    <h1>Email Template Testing</h1>
</div>
<div id="clear">&nbsp;</div>
    <table cellpadding="3px">
        <tr>
            <td valign="top">
                <asp:Label ID="Label2" runat="server" Text="Username : " Width="150px"></asp:Label>
            </td>
            <td>
                <telerik:radtextbox ID="txtFax" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtFax" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td valign="top">
                <asp:Label ID="Label4" runat="server" Text="Template Name :"></asp:Label>
            </td>
            <td>
                <telerik:radcombobox ID="cboTemplates" runat="server" 
                    CausesValidation="False" 
                    DataTextField="name" DataValueField="columnname" EmptyMessage="(None)">
                        <collapseanimation duration="200" type="OutQuint"></collapseanimation>
                    </telerik:radcombobox>
            </td>
        </tr>
        <tr>
            <td valign="top">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="cmdSendFax" runat="server" Text="Send Test Email" />
            </td>
        </tr>
    </table>
</asp:Content>
