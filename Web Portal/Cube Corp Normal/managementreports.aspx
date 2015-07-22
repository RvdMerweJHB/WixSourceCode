<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="managementreports.aspx.vb" Inherits="CUBE.managementreports" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register assembly="DundasWebChart" namespace="Dundas.Charting.WebControl" tagprefix="DCWC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear">&nbsp;</div>
<div id="header" class="header">
    <h1>Usage Reports - <asp:Label ID="Label1" runat="server"></asp:Label></h1>
</div>
<div id="clear">&nbsp;</div>
   <div>
    
        <asp:LinqDataSource ID="ldsPeriodType" runat="server" 
            ContextTypeName="CUBE.DBDataContext" OrderBy="ID" Select="new (ID, Name)" 
            TableName="PeriodTypes" Where="Deleted == @Deleted">
            <WhereParameters>
                <asp:Parameter DefaultValue="False" Name="Deleted" Type="Boolean" />
            </WhereParameters>
        </asp:LinqDataSource>
        <div id="label">Time Period</div>
        <div id="field"><telerik:RadComboBox ID="cboPeriodType" Runat="server" 
            DataSourceID="ldsPeriodType" DataTextField="Name" DataValueField="ID" 
            AutoPostBack="True">
        </telerik:RadComboBox>
        </div>
        
        <div id="label" style ="margin-left:15px">Type Of Fax</div>
        <div id="field"><telerik:RadComboBox ID="cboProduct" Runat="server" AutoPostBack="True" 
            DataSourceID="ldsProducts" DataTextField="Name" DataValueField="ID">
        </telerik:RadComboBox></div>
        <div id="clear">&nbsp;</div>
        <div>
        <asp:LinqDataSource ID="ldsProducts" runat="server" 
            ContextTypeName="CUBE.DBDataContext" Select="new (ID, Name)" 
            TableName="Products" Where="Deleted == @Deleted">
            <WhereParameters>
                <asp:Parameter DefaultValue="False" Name="Deleted" Type="Boolean" />
            </WhereParameters>
        </asp:LinqDataSource>

        <dcwc:chart ID="Chart1" runat="server" BackGradientEndColor="LightSteelBlue" 
            BackGradientType="DiagonalLeft" BorderLineColor="LightSlateGray" 
            BorderLineStyle="Solid" Height="422px" Width="800px">
            <Legends>
            
                <DCWC:Legend BackColor="50, 255, 255, 255" BorderColor="LightSlateGray" 
                    Name="Default">
                </DCWC:Legend>
            </Legends>
            <BorderSkin FrameBackColor="SteelBlue" FrameBackGradientEndColor="LightBlue" />
            <Titles>
                <DCWC:Title Name="Title1">
                </DCWC:Title>
            </Titles>
            <series>
                <DCWC:Series BorderColor="120, 64, 64, 64" ChartType="Line" Name="Minimum" 
                    XValueType="Double" YValueType="Double" Color="DarkRed">
                </DCWC:Series>
                <DCWC:Series BorderColor="120, 64, 64, 64" ChartType="Line" Name="Maximum" 
                    XValueType="Double" YValueType="Double">
                </DCWC:Series>
                <DCWC:Series BorderColor="120, 64, 64, 64" ChartType="Line" Name="Average" 
                    XValueType="Double" YValueType="Double">
                </DCWC:Series>
                <DCWC:Series BorderColor="120, 64, 64, 64" ChartType="Line" Name="Current" 
                    XValueType="Double" YValueType="Double">
                </DCWC:Series>
            </series>
            <chartareas>
                <DCWC:ChartArea BackColor="White" BackGradientEndColor="White" 
                    BorderColor="LightSlateGray" BorderStyle="Solid" Name="Default">
                    <AxisY Title="Minutes">
                        <MajorGrid LineColor="65, 0, 0, 0" />
                        <MinorGrid LineColor="30, 0, 0, 0" />
                        <LabelStyle Format="G" />
                    </AxisY>
                    <AxisX Title="Period">
                        <MajorGrid LineColor="65, 0, 0, 0" />
                        <MinorGrid LineColor="30, 0, 0, 0" />
                        <LabelStyle Format="G" />
                    </AxisX>
                    <Area3DStyle Light="Realistic" />
                </DCWC:ChartArea>
            </chartareas>
        </dcwc:chart>
        </div>
        <div id="clear"><p>&nbsp;</p></div>
        <div>
        <telerik:RadGrid ID="RadGrid1" runat="server" AutoGenerateColumns="False" 
            GridLines="None">
<MasterTableView>
<RowIndicatorColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>
    <Columns>
        <telerik:GridBoundColumn DataField="Period" HeaderText="Period" 
            UniqueName="Period">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="ThisPeriod" HeaderText="Minutes" 
            UniqueName="Minutes">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="ActiveUsers" HeaderText="Active Users" 
            UniqueName="ActiveUsers">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="InActiveUsers" HeaderText="InActive Users" 
            UniqueName="InActiveUsers">
        </telerik:GridBoundColumn>
    </Columns>
</MasterTableView>
        </telerik:RadGrid>
        </div>
    </div>
</asp:Content>
