<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TandC.aspx.vb" Inherits="CUBE.TandC" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Terms & Conditions</title>
    <link href="Styles/CUBE.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="clear">
        <telerik:RadScriptManager ID="RadScriptManager1" Runat="server">
        </telerik:RadScriptManager>
        <telerik:RadFormDecorator ID="RadFormDecorator1" Runat="server" />
    </div>
    <div class="page" >
        <div class="header">
            <h1>Terms & Conditions</h1>
        </div>
        <div id="clear"></div>
        <div id="label" style="width:auto!important">
        <asp:Literal ID="litTerms" Text=""  runat="server"></asp:Literal>
        </div>
    </div>
    <div id="clear"></div>
    </form>
</body>
</html>
