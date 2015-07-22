<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cCoverPage.ascx.vb" Inherits="CUBE.cCoverPage" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<div id="clear"></div>
<div>
    <div id="label" style="width:auto; padding-right:10px">
        <asp:Label ID="lblLabel" runat="server">Title</asp:Label>
        <telerik:RadTextBox ID="txtTitle" Runat="server">
        </telerik:RadTextBox>
        <asp:CheckBox ID="chkDefault" runat="server" Text="Default" />
        <br />
    </div>
    <div id="field">
        <telerik:RadEditor ID="txtContent" Runat="server" AllowScripts="True">
        <ImageManager DeletePaths="~/UserContent" UploadPaths="~/UserContent" 
                ViewPaths="~/UserContent"/>
        </telerik:RadEditor>
    </div>
    <div id="clear"></div>
    <div class="validation">
    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label></div>
    <div id="clear"></div>
    <div id="label">
        <asp:Button ID="cmdSave" runat="server" Text="Save" />
    </div>
    <div id="clear"></div>
    <div id="label">
        <asp:Button ID="Button1" runat="server" Text="View Audit Trail" /></div>
</div>
<div id="clear"></div>