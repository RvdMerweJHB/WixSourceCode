<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Online Reports.aspx.vb" Inherits="CUBE.Online_Reports" %>
<%@ Register assembly="Telerik.ReportViewer.WebForms, Version=5.1.11.928, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" namespace="Telerik.ReportViewer.WebForms" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <telerik:ReportViewer ID="ReportViewer1" runat="server" Width="859px">
    </telerik:ReportViewer>
</asp:Content>
