<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cHTML.ascx.vb" Inherits="CUBE.cHTML" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<div id="clear"></div>
<asp:Panel ID="panLoginTemplates" runat="server" Visible="false">
    <div id="label" style="width:auto; padding-right:10px">
         <table border="0" cellpadding="0" cellspacing="0" width="600">
            <tr>
             <td colspan="4"><b>Login Template Style</b></td>
                <td>
                    <b>Key</b></td>
           </tr>
             
           <tr>
             <td><asp:ImageButton ID="Image1" runat="server" 
                     ImageUrl="~/UserContent/default/login.jpg" /></td>
             <td>
                 <asp:ImageButton ID="Image2" runat="server" 
                     ImageUrl="~/UserContent/default/login_h.jpg" />
               </td>
             <td>
                 <asp:ImageButton ID="Image3" runat="server" 
                     ImageUrl="~/UserContent/default/login_b.jpg" />
               </td>
             <td>
                 <asp:ImageButton ID="Image4" runat="server" 
                     ImageUrl="~/UserContent/default/login_b_h.jpg" />
               </td>
               <td>
                   <b>Green</b> : Header<br /> <b>Grey</b> : Login Area
                   <br />
                   <b>Purple</b> : Login Template Content</td>
           </tr>
         </table>
    </div>
</asp:Panel>
<div id="clear"></div>
<div>
    <div id="label" style="width:auto; padding-right:10px">
        <asp:Label ID="lblLabel" runat="server"></asp:Label>
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