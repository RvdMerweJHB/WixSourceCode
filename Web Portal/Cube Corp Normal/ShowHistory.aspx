<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ShowHistory.aspx.vb" Inherits="CUBE.ShowHistory" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Fax History</title>
    <link href="Styles.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">

        function GetRadWindow() {
            var oWindow = null;
            if (window.radWindow) oWindow = window.radWindow;
            else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow;
            return oWindow;
        }

</script>

</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 100%;">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
    </telerik:RadScriptManager>
    <table width="100%">
        <tr>
            <td>
    
    <div class="PaddedContainer">
   <asp:Repeater ID="rpHistory" runat="server">
   <ItemTemplate>
    <%#DataBinder.Eval(Container.DataItem, "Details")%>
    <br />
    </ItemTemplate>
    </asp:Repeater>
        <br />
        <br />
                <img alt="" src="images/cancel.gif" style="width: 16px; height: 16px" /><asp:LinkButton 
            ID="LinkButton1" runat="server" 
            onclientclick="var oWindow = GetRadWindow();oWindow.Close();" 
            ToolTip="Click here to cancel">Cancel</asp:LinkButton>
    <br />
    <br />
    </div>
            </td>
        </tr>
    </table>
    </div>
    <telerik:RadFormDecorator ID="RadFormDecorator1" Runat="server" />
    </form>
</body>
</html>


