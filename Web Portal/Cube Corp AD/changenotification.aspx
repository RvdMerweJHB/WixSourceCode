<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="changenotification.aspx.vb" Inherits="CUBE.changenotification" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>User Maintenance</title>
    <link href="Styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <script type="text/javascript">  
   function GetRadWindow()  
   {  
       var oWindow = null;  
       if (window.radWindow) oWindow = window.radWindow;  
       else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow;  
       return oWindow;  
   }

   function closeWin() {
       var oWnd = GetRadWindow();
       oWnd.close();
   }  
     
function Button2_onclick() {

}

    </script>
<div>
        <table width="100%" border="solid 1px lightgray">
        <tr>
            <td>
            <div >
                <telerik:radscriptmanager ID="RadScriptManager1" Runat="server">
                </telerik:radscriptmanager>
                <table border="0" cellpadding="1" cellspacing="0" 
                    style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0">
                                <tr>
                                    <td align="left" colspan="3">
                                        <div class="ContentHeader">Notification Details</div> </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3" style="color: Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label18" runat="server" Text="Alternative Notification Email :" 
                                            Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <telerik:RadTextBox ID="txtNotifications" runat="server" ValidationGroup="1" 
                                        Width="120px">
                                        </telerik:RadTextBox>
                                    &nbsp;</td>
                                    <td>
                                        <asp:CheckBox ID="chkNotifications" runat="server" 
                                        Text="Send Email Notifications" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="3">
                                        <div class="SearchBox" style="padding:10px;text-align:left; width:95%">
                                            <i><strong style="text-decoration:underline">Important</strong></i> <b>
                                            <br />Each time you send a fax, you will receive an email notifying you of the success 
                                        or failure of that fax.</b><br />
                                            <ul>
                                                <li>Select the Send Email Notifications option above to enable these notifications.</li>
                                                <li>Email notifications will be sent to the email address specified under User 
                                                Settings. This is the email address that belongs to the fax account holder.</li>
                                                <li>To send the notifications to a different email address, enter an Alternative 
                                                Notification Email address above.</li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr valign="top">
                                    <td align="left">
                                        <asp:Button ID="ChangePasswordPushButton" runat="server" 
                                            CommandName="ChangePassword" 
                                            Text="Save" ValidationGroup="ChangePassword1" />
                                    &nbsp; <input id="Button2" onclick="closeWin();" type="button" value="Cancel" onclick="return Button2_onclick()" /></td>
                                    <td colspan="2" class="validation">
                                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                        ControlToValidate="txtNotifications" ErrorMessage="Incorrect Email Format" 
                                        Font-Size="8pt" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                        ValidationGroup="1">Incorrect Email Format</asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            </td>
        </tr>
        </table>
    </div>
    
    <telerik:radformdecorator ID="RadFormDecorator1" Runat="server" />
    </form>
    
    </body>
</html>
