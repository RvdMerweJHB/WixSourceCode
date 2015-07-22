<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="UserUpdated.aspx.vb" Inherits="CUBE.UserUpdated" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Styles.css" rel="stylesheet" type="text/css" />
   <META HTTP-EQUIV="refresh" content="2;URL=dashboard.aspx">
 <script type="text/javascript">

function GetRadWindow()
{
    var oWindow = null;
    if (window.radWindow) oWindow = window.radWindow;
    else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow;
    return oWindow;
}

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="clear">&nbsp;</div>
    <div id="header" class="header">
    <h1>
        <asp:Label ID="txtTitle" runat="server"></asp:Label>
        </h1>
    </div>
    <div class="PaddedContainer">
        <asp:Label ID="lblStatus" runat="server"></asp:Label>
    </div>
</asp:Content>
