<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FaxSent.aspx.vb" Inherits="CUBE.FaxSent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear">&nbsp;</div>
<div id="header" class="header">
    <h1>Create Fax</h1>
</div>
<div id="clear">&nbsp;</div>
<div>
    <div><h2>Your fax was sent successfully.</h2></div>
<div id="clear">&nbsp;</div>
<div>
<div id="field" class="submitButton" style="width:auto!important"><asp:Button ID="cmdInbox" runat="server" Text="Inbox" /></div>
<div id="field" class="submitButton" style="width:auto!important"><asp:Button ID="cmdSentItems" runat="server" Text="Sent Items" /></div>
<div id="field" class="submitButton" style="width:auto!important"><asp:Button ID="cmdCreateFax" runat="server" Text="Create Fax" /></div>
</div>
</div>

</asp:Content>
