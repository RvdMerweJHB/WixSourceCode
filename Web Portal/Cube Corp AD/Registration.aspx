<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/NotAuthenticated.Master" CodeBehind="Registration.aspx.vb" Inherits="CUBE.registration1" %><%@ Register src="Controls/cRegistration.ascx" tagname="cRegistration" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear">&nbsp;</div>
    <uc1:cRegistration ID="Reg" runat="server" />
</asp:Content>
