<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Pastelfax.Master" CodeBehind="PastelUserRegFeedback.aspx.vb" Inherits="CUBE.PastelUserRegFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">    
    .Infomation
{
    padding:10px;
    background-color:#ADCBE9;
    border-color:#1B4065;
    color:#000000;
    border-width:1px;
    border-style:solid;
    width:100%;
}
    </style>
    <script type="text/javascript">
        function onLoad(sender, eventArgs) {
            sender.get_items(); //This is enough to force Items initialization. 
      
        } </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear">&nbsp;</div>
<div id="header" class="header">
    <h1>Pastel User Registration Feedback</h1> 
</div>
    <div align="center">
        <asp:Panel ID="Panel1" runat="server" CssClass="Infomation" Visible="False">
            The user account has been successfully created.<br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Login" />
        </asp:Panel>
    </div>
&nbsp;<div>
        <asp:Panel ID="Panel2" runat="server" CssClass="Infomation" Visible="False">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </asp:Panel>
    </div>
</asp:Content>
