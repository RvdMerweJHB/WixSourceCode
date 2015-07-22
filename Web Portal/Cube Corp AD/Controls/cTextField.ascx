<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cTextField.ascx.vb" Inherits="CUBE.cTextField" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<div id="clear"></div>
<div>
    <div id="label" style="width:auto; padding-right:10px">
        <asp:Label ID="lblLabel" runat="server"></asp:Label>
    </div>
    <div id="field">
        <telerik:RadTextBox ID="txtContent" Runat="server" ValidationGroup="email">
        </telerik:RadTextBox>
    </div>
    <div id="clear"></div>
    <div class="validation">
    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label></div>
    <div id="clear"></div>
    <div id="label">
        <asp:Button ID="cmdSave" runat="server" Text="Save" ValidationGroup="email" />
    </div>
</div>
<div id="clear"></div>