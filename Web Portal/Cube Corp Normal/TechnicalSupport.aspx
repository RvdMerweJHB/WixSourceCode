<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="TechnicalSupport.aspx.vb" Inherits="CUBE.TechnicalSupport" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <div id="clear">&nbsp;</div>
     <div id="header" class="header"> 
                <h1>Technical Support</h1></div>
                        <div class="PaddedContainer">
    <table width="100%">
        <tr>
            <td>
              <div class="PaddedContainer">
                    <asp:Literal ID="lTechicalSupport" runat="server"></asp:Literal>
                    <br />
                    <br />
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
