<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Forward.aspx.vb" Inherits="CUBE.Forward" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Forward Fax</title>
    <link href="Styles.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">

function GetRadWindow()
{
    var oWindow = null;
    if (window.radWindow) oWindow = window.radWindow;
    else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow;
    return oWindow;
}

</script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
    </telerik:RadScriptManager>
    <table width="100%">
        <tr>
            <td>
    
                <div class="PaddedContainer">
<%--    <table cellpadding="3px">
        <tr>
            <td width="100px">
                <asp:Label ID="lblHistory" runat="server">Email address:</asp:Label>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="*">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="*" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
            <td>
                <telerik:RadTextBox ID="txtEmail" Runat="server">
                </telerik:RadTextBox>
            </td>
            <td>
                <img alt="" src="images/forward.gif" style="width: 16px; height: 16px" />
                <asp:LinkButton ID="LinkButton1" runat="server">Forward to email</asp:LinkButton>
            </td>
        </tr>
    </table>
--%>    <asp:Panel ID="panOutbound" runat="server" Visible="True">
        <table cellpadding="3px">
        <tr>
            <td colspan="3" style="color: #FF0000">
                Note : All fields must be filled.</td>
        </tr>
            <tr>
                <td width="100px">
                    <asp:Label ID="Label2" runat="server">Fax number:</asp:Label>
                    &nbsp;</td>
                <td>
                    <telerik:RadTextBox ID="txtFax" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtFax" ErrorMessage="The Fax Number is Required">The Fax Number is Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="100px">
                    Receipient Name :
                </td>
                <td>
                    <telerik:RadTextBox ID="txtName" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="The Receipient Name is Required">The Receipient Name is Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <img alt="" src="UserContent/default/forward.gif" style="width: 16px; height: 16px" />&nbsp;<asp:LinkButton 
                        ID="LinkButton2" runat="server" 
                        ToolTip="Click here to forward the fax to the specified number">Forward</asp:LinkButton>
                </td>
                <td>
                    <img alt="" src="UserContent/default/cancel.gif" style="width: 16px; height: 16px" />&nbsp;<asp:LinkButton 
                        ID="LinkButton3" runat="server" CausesValidation="False" 
                        onclientclick="var oWindow = GetRadWindow();oWindow.Close();" 
                        ToolTip="Click here to cancel">Cancel</asp:LinkButton>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
    </table>        
    </asp:Panel>
        
        <br />
                &nbsp;</div>
            </td>
        </tr>
    </table>
    <asp:Label ID="InjectScript" runat="server" ></asp:Label>
    </div>
    </form>
</body>
</html>
