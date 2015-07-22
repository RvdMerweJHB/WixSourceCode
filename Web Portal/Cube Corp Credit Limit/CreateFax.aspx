<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CreateFax.aspx.vb" Inherits="CUBE.CreateFax" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear">&nbsp;</div>
<div id="header" class="header">
    <h1>Create Fax</h1>
</div>
<div id="clear">&nbsp;</div>
    <table cellpadding="3px">
        <tr>
            <td valign="top">
                <asp:Label ID="Label2" runat="server" Text="Fax number:" Width="150px"></asp:Label>
            </td>
            <td>
                <telerik:RadTextBox ID="txtFax" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtFax" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td valign="top">
                <asp:Label ID="Label4" runat="server" Text="Recipient name:"></asp:Label>
            </td>
            <td>
                <telerik:RadTextBox ID="txtRecipientName" Runat="server">
                    </telerik:RadTextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtRecipientName" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td valign="top">
                <asp:Label ID="Label3" runat="server" Text="Body text:"></asp:Label>
            </td>
            <td>
                <telerik:RadTextBox ID="txtBodyText" runat="server" Height="100px" 
                    TextMode="MultiLine" Width="400px">
                    </telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td valign="top">
                <asp:Label ID="Label7" runat="server" Text="Cover page:" Visible="False"></asp:Label>
            </td>
            <td>
                <telerik:RadComboBox ID="cboCoverPage" runat="server" AutoPostBack="True" 
                    CausesValidation="False" 
                    DataTextField="CoverPage" DataValueField="CoverPageID" 
                    EmptyMessage="(None)" Visible="False">
                        <collapseanimation duration="200" type="OutQuint"></collapseanimation>
                    </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td valign="top">
                <asp:Label ID="Label5" runat="server" Text="Attachments:"></asp:Label>
            </td>
            <td>
                <telerik:RadUpload ID="RadUpload2" runat="server" 
                    AllowedFileExtensions=".PDF,.TIF,.TIFF,.DOC,.DOCX,.XLS,.XLSX,.PPT,.PPTX,.WPS,.COD,.OBD,.TXT,.RTF,.HTM,.HTML,.WPD,.QPW,.WB,.ODP,.ODS,.ODT,.SAM,.WK,.PRZ,.CDR,.BMP,.JPG,.GIF,.PCX,.ICO,.CUR,.DIB,.EPS" 
                    ControlObjectsVisibility="RemoveButtons, ClearButtons, AddButton" 
                    EnableTheming="True" InitialFileInputsCount="0" Width="100%" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="cmdSendFax" runat="server" Text="Send Fax" />
            </td>
        </tr>
    </table>
</asp:Content>
