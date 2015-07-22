<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="CUBE.Login" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="Styles/CUBE.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 299px;
        }
        .style2
        {
            width: 275px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="logincontainer_b">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
    <telerik:RadWindowManager ID="rwmLogin" runat="server"></telerik:RadWindowManager>
    
        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" 
            DefaultLoadingPanelID="rlpLogin">
            <AjaxSettings>
                <telerik:AjaxSetting AjaxControlID="lLoginTemplate">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="Panel1" LoadingPanelID="rlpLogin" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="SubmitButton">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="FailureText" LoadingPanelID="rlpLogin" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
            </AjaxSettings>
        </telerik:RadAjaxManager>
    
    <div class="pageheader">
        <asp:Literal ID="lHeader" runat="server"></asp:Literal>
        <telerik:RadAjaxLoadingPanel ID="rlpLogin" Runat="server" Skin="Default">
        </telerik:RadAjaxLoadingPanel>
    </div>
    <div id="clear"></div>
    <asp:Panel ID="panCubeAnnoucement" runat="server" Visible="false">
        <div>
        <table  border="0" cellspacing="0" cellpadding="0" 
                style="height:100px; width:1000px !important;" align="center">
            <tr>
            <td style="width:86px; background-image:url('UserContent/default/CubeNotification_icon.jpg'); background-repeat:no-repeat; background-position:left top; background-color:#234E03">
            &nbsp;
            </td> 
            <td style="padding:5px; vertical-align:text-top; background-image:url('UserContent/default/CubeNotificationBG.jpg'); background-repeat:no-repeat; background-position:right top; color:White; background-color:#234E03">
            <strong>Cube Notification</strong>
            <br />
            <asp:Literal ID="litCubeAnnouncement" runat="server"></asp:Literal>
            </td>   
            </tr>
        </table>
        </div>
    </asp:Panel>
    
    <div id="clear">&nbsp;</div>
    <asp:Panel ID="panAnnouncement" runat="server" Visible="false">
        <div>
            <table  border="0" cellspacing="0" cellpadding="0" 
                style="height:100px; width:1000px !important;" align="center">
                <tr>
                <td style="width:86px; background-image:url('UserContent/default/Notification_icon.jpg'); background-repeat:no-repeat; background-position:left top;; background-color:#AB8605">
                &nbsp;
                </td> 
                <td style="padding:5px; vertical-align:text-top; background-image:url('UserContent/default/NotificationBG.jpg'); background-repeat:no-repeat; background-position:right top; color:black; background-color:#AB8605">
                <strong>Notification</strong>
                <br />
                <asp:Literal ID="litAnnouncement" runat="server"></asp:Literal>
                </td>   
                </tr>
            </table>
        </div>
        <div id="clear">&nbsp;</div>

    </asp:Panel>
    <div id="clear" style="color:Red"></div> 
     <table border="0" cellpadding="0" cellspacing="0" width="100%">
     <tr>
     <td class="style2">
     <div style="border: 1px solid #CACACA; background-color: #F7F7F9; width:220px">
    <asp:Login ID="cLogin" runat="server" VisibleWhenLoggedIn="False" 
             FailureText="Incorrect username or password." Width="220px">
                        <LayoutTemplate>
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 214px">
                                <tr>
                                    <td>
                                        <table border="0" cellpadding="0" class="Pad5" width="100%">
                                            <tr align="right" valign="bottom">
                                                <td align="left" valign="top" class="style5">
                                                    <asp:Label ID="Label1" runat="server" 
                                                        style="font-weight: 700; font-size: small" Text="User Login"></asp:Label>
                                                &nbsp;</td>
                                                <td align="left" class="style1" style="color:Red">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr align="right" valign="bottom">
                                                <td align="left" colspan="2" style="color:Red">
                                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal></td>
                                            </tr>
                                            <tr align="right" valign="bottom">
                                                <td align="left" class="style6">
                                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Username:</asp:Label>
                                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                        ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                        ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                    <br />
                                                    <asp:TextBox ID="username" runat="server" Font-Size="11px" Width="150px"></asp:TextBox>
                                                </td>
                                                <td align="center"style="width:0px; padding-right: 5px; padding-left: 5px;">
                                                    <asp:ImageButton ID="ibtReg" runat="server" ImageUrl="~/usercontent/default/Edit_large.gif" 
                                                        onclick="ibtReg_Click" ToolTip="Click here to register for a fax number" />
                                                    <br />
                                                    </td>
                                            </tr>
                                            <tr align="right" valign="bottom">
                                                <td align="left" class="style6">
                                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                        ControlToValidate="Password" ErrorMessage="Password is required." 
                                                        ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                    <br />
                                                    <asp:TextBox ID="Password" runat="server" Font-Size="11px" TextMode="Password" 
                                                        Width="150px"></asp:TextBox>
                                                </td>
                                                <td align="center" style="padding-right: 5px; padding-left: 5px;">
                                                    Register</td>
                                            </tr>
                                            <tr align="right" valign="bottom">
                                                <td align="left" class="style6">
                                                   <asp:Button ID="LoginButton" runat="server" CommandName="Login" 
                                                        Font-Names="Tahoma" Font-Size="11px" Text="Log In" 
                                                        ToolTip="Click here to log in" ValidationGroup="Login1" Width="108px" />
                                                </td>
                                                <td align="center" style="padding-right: 5px; padding-left: 5px;">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>        
    </asp:Login>
    </div>
     </td>
     <td rowspan="2" style="padding: 5px 0px 0px 5px" valign="top">
    <asp:Literal ID="lLoginTemplate" runat="server"></asp:Literal>
         </td>
     </tr>
     <tr>
     <td class="style2"><asp:Panel ID="Panel1" runat="server" Width="220px">
    <div id="clear"><br /></div>
    <div style="border: 1px solid #CACACA; background-color: #F7F7F9;">
    <div style="color:#000; margin-left:5px; width: 215px;"><strong>Password Recovery Tool
    <div id="clear">&nbsp;</div>
    <div id="field" style="margin-left:2px">Email Address : 
        <br />
        <asp:TextBox ID="UserName" runat="server" ValidationGroup="PasswordRecovery1"></asp:TextBox>
        </div>
    <div id="validation" class="validation">*</div>
    <div id="clear">&nbsp;</div>
    <div id="field" style="margin-left:2px">
        <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Height="22px" OnClick="SubmitButton_Click"
            Text="Submit" ValidationGroup="PasswordRecovery1" />
    </div>
    <div id="clear">&nbsp;</div>
    <div class="validation" style="float:left; width:auto!Important;margin-left:8px"><asp:RegularExpressionValidator 
            ID="RegularExpressionValidator1" runat="server" ControlToValidate="UserName" 
            ErrorMessage="Invalid email format" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ValidationGroup="PasswordRecovery1"></asp:RegularExpressionValidator>&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email Required" 
            ControlToValidate="UserName" ValidationGroup="PasswordRecovery1">
            </asp:RequiredFieldValidator>
    </div>
    <div id="Div5"></div>
    <div class="validation" style="text-align:center; width:300">
        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
        </div>  
    </div>
         </asp:Panel></td>
     </tr>
     </table>
    
    
    
    <div id="clear">&nbsp;</div>
    </div>
     <div id="clear"><br /></div>
    <div class="footer" align="center">
     <div  style="width:1000px; margin-left:auto;margin-right:auto; float:inherit; text-align:right">
     CUBE 2007-2010 &copy; Vox Amvia Fax Solutions 
     </div>
    </div>
    <div class="footer" >
        
        <div align="center" style="width:50%; margin-left:auto;margin-right:auto;">
            This web application is best viewed with the following browsers Internet 
            Explorer 6.0 and above or in Mozilla Firefox 2.0 and above or Google Chrome and 
            above. Recommended resolution is 1280*1024 (minimal 1280*768).Please ensure that 
            you have javascript enabled on your browser.
        </div>
    </div>
    </form>
   
</body>
</html>
