<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="TreeView.aspx.vb" Inherits="CUBE.TreeView" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">


.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="clear"> &nbsp;</div>
<div id="header" class="header">
    <h1>Company Hierarchy</h1>
</div>
<!--div id="label">
    <asp:Label ID="lblSearch" runat="server" Text="Tree Search"></asp:Label>
    </div>
<div id="field">
    <telerik:RadTextBox ID="txtSearch" runat="server"></telerik:RadTextBox>
</div>
<div id="validation">
    <asp:Button ID="cmdGo" Text="Search" 
        ToolTip="Click to search tree structure" runat="server" />
</div>
<div id="clear" style="color: red">
    <asp:Literal ID="litFaxF" runat="server"></asp:Literal>
</div>
<div id="clear" style="color: red"></div>
    <br /-->
 <telerik:RadTreeView ID="RadTreeView1" Runat="server">
    <NodeTemplate>
        <div>
             <%#DataBinder.Eval(Container.DataItem, "Name")%> - (<img src="UserContent/default/group_of_users32.gif" />&nbsp Users : <%#DataBinder.Eval(Container.DataItem, "Users")%>)
        </div>
    </NodeTemplate>
    </telerik:RadTreeView>

</asp:Content>
