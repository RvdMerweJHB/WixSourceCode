<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ChangePassword.aspx.vb" Inherits="CUBE.ChangePassword" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="Styles/CUBE.css" rel="stylesheet" type="text/css" />
    <title>Change Password</title>
<style type="text/css">
.PaddedContainer
{
	margin: auto;
}
</style>
<script type="text/javascript">
        function GetRadWindow() {
            var oWindow = null;
            if (window.radWindow) oWindow = window.radWindow;
            else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow;
            return oWindow;
        }

        function closeWin() {
            var oWnd = GetRadWindow();
            oWnd.close();
        }

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-19189378-1']);
        _gaq.push(['_setDomainName', '.voxamvia.co.za']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
     
</script>
</head>

<body class="PaddedContainer">
    <form id="form1" runat="server">
    <div>
    
        <div>
        <div id="clear">
                            <telerik:RadScriptManager ID="RadScriptManager1" Runat="server">
                </telerik:RadScriptManager>
                            </div>
        <div id="header" class="header"><h1>Change Password</h1></div>
        <div id="clear"></div>
        <div>
            <asp:Label ID="Label1" runat="server" 
                Text="NB: Note window will close when successful" ForeColor="Red"></asp:Label>
            </div>
        <div id="clear"></div>
        <div id="label">
                                                    <asp:Label ID="CurrentPasswordLabel" runat="server" 
                                                        AssociatedControlID="CurrentPassword">Password:</asp:Label>
                                                </div>
        <div id="field">
                                                    <asp:TextBox ID="CurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                    </div>
        <div id="validation">
                                                    <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" 
                                                        
                ControlToValidate="CurrentPassword" ErrorMessage="Password is required." 
                                                        ToolTip="Password is required." 
                ValidationGroup="ChangePassword1" CssClass="validation">*</asp:RequiredFieldValidator>
                                                </div>          
        <div id="clear"></div> 
        <div id="label">
                                                    <asp:Label ID="NewPasswordLabel" runat="server" 
                                                        AssociatedControlID="NewPassword">New Password:</asp:Label>
                                                </div>
        <div id="field">
                                                    <asp:TextBox ID="NewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                    </div>
        <div id="validation">
                                                    <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" 
                                                        ControlToValidate="NewPassword" ErrorMessage="New Password is required." 
                                                        
                ToolTip="New Password is required." ValidationGroup="ChangePassword1" 
                CssClass="validation" InitialValue="*"></asp:RequiredFieldValidator>
                                                </div>          
        <div id="clear"></div> 
        <div id="label">
                                                    <asp:Label ID="ConfirmNewPasswordLabel" runat="server" 
                                                        AssociatedControlID="ConfirmNewPassword">Confirm New Password:</asp:Label>
                                                </div>
        <div id="field">
                                                    <asp:TextBox ID="ConfirmNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                    </div>
        <div id="validation">
                                                    <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" 
                                                        ControlToValidate="ConfirmNewPassword" 
                                                        ErrorMessage="Confirm New Password is required." 
                                                        
                ToolTip="Confirm New Password is required." ValidationGroup="ChangePassword1" 
                CssClass="validation">*</asp:RequiredFieldValidator>
                                                </div>          
        <div id="clear"></div> 
        <div id="label" class="validation" style="width: auto!Important">
                                                    <asp:CompareValidator ID="NewPasswordCompare" runat="server" 
                                                        ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" 
                                                        Display="Dynamic" 
                                                        ErrorMessage="The Confirm New Password must match the New Password entry." 
                                                        ValidationGroup="ChangePassword1"></asp:CompareValidator>
        
        </div>  
          
        <div id="clear" class="validation">
            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
        </div> 
        <div id="clear">
            <div id="field" style="width:auto!Important" class="submitButton" >
            <asp:Button ID="ChangePasswordPushButton" runat="server" 
            CommandName="ChangePassword" Text="Change Password"
            ValidationGroup="ChangePassword1" />
            </div>
             <div id="field" style="width:auto!Important" class="submitButton" >
             <input id="Button2" onclick="closeWin();" type="button" value="Cancel" />
             </div>
             </div> 
        </div>
        
    
    </div>
    <div>
    <telerik:RadNotification ID="RadNotification1" runat="server" Animation="Fade" 
        AnimationDuration="1000" ContentIcon="none" EnableRoundedCorners="True" 
        EnableShadow="True" Height="120px" Opacity="70" Skin="Hay" Width="200px" 
            Position="Center">
        <ContentTemplate>
            <asp:Label ID="lblText" runat="server"></asp:Label>
        </ContentTemplate>
<NotificationMenu ID="TitleMenu"></NotificationMenu>
    </telerik:RadNotification>
        <telerik:RadFormDecorator ID="RadFormDecorator1" Runat="server" />
    </div>
    </form>
</body>
</html>
