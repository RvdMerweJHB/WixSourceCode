<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ChannelUsage.aspx.vb" Inherits="CUBE.ChannelUsage" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Charting" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />
<h1>Channel Usage</h1>
<br />
<telerik:RadChart ID="RadChart1" runat="server" 
        DefaultType="Spline" Skin="DeepGreen" Height="400px" Width="1200px">
        <Appearance>
            <FillStyle FillType="ComplexGradient">
                <FillSettings>
                    <ComplexGradient>
                        <telerik:GradientElement Color="61, 113, 0" />
                        <telerik:GradientElement Color="125, 208, 36" Position="0.5" />
                        <telerik:GradientElement Color="61, 113, 0" Position="1" />
                    </ComplexGradient>
                </FillSettings>
            </FillStyle>
            <Border Color="63, 87, 53" Width="5" />
        </Appearance>
        <Series>
            <telerik:ChartSeries Name="Percentage" Type="Spline">
                <Appearance>
                    <FillStyle FillType="ComplexGradient" MainColor="213, 247, 255">
                        <FillSettings>
                            <ComplexGradient>
                                <telerik:GradientElement Color="213, 247, 255" />
                                <telerik:GradientElement Color="193, 239, 252" Position="0.5" />
                                <telerik:GradientElement Color="157, 217, 238" Position="1" />
                            </ComplexGradient>
                        </FillSettings>
                    </FillStyle>
                    <TextAppearance TextProperties-Color="White">
                    </TextAppearance>
                </Appearance>
            </telerik:ChartSeries>
        </Series>
        <Legend>
            <Appearance Dimensions-Margins="1px, 2%, 12%, 1px">
                <ItemTextAppearance TextProperties-Color="White">
                </ItemTextAppearance>
                <FillStyle MainColor="37, 255, 255, 255">
                </FillStyle>
                <Border Color="76, 255, 255, 255" />
            </Appearance>
            <TextBlock>
                <Appearance Position-AlignedPosition="Top" TextProperties-Color="163, 208, 114">
                </Appearance>
            </TextBlock>
        </Legend>
        <PlotArea>
            <XAxis DataLabelsColumn="Column1">
                <Appearance Color="76, 255, 255, 255" MajorTick-Color="179, 255, 255, 255">
                    <MajorGridLines Color="179, 255, 255, 255" Width="0" />
                    <TextAppearance TextProperties-Color="White">
                    </TextAppearance>
                </Appearance>
                <AxisLabel>
                    <Appearance Dimensions-Paddings="1px, 1px, 10%, 1px">
                    </Appearance>
                    <TextBlock>
                        <Appearance TextProperties-Color="163, 208, 114">
                        </Appearance>
                    </TextBlock>
                </AxisLabel>
            </XAxis>
            <YAxis>
                <Appearance Color="76, 255, 255, 255" MajorTick-Color="179, 255, 255, 255" 
                    MinorTick-Color="179, 255, 255, 255">
                    <MajorGridLines Color="179, 255, 255, 255" />
                    <MinorGridLines Color="179, 255, 255, 255" Width="0" />
                    <TextAppearance TextProperties-Color="White">
                    </TextAppearance>
                </Appearance>
                <AxisLabel>
                    <TextBlock>
                        <Appearance TextProperties-Color="163, 208, 114">
                        </Appearance>
                    </TextBlock>
                </AxisLabel>
            </YAxis>
            <Appearance Dimensions-Margins="19%, 90px, 12%, 9%">
                <FillStyle MainColor="50, 255, 255, 255" SecondColor="Transparent">
                </FillStyle>
                <Border Color="76, 255, 255, 255" />
            </Appearance>
        </PlotArea>
        <ChartTitle>
            <Appearance Dimensions-Margins="4%, 10px, 14px, 6%">
                <FillStyle MainColor="">
                </FillStyle>
            </Appearance>
            <TextBlock Text="Channel % Usage">
                <Appearance TextProperties-Color="White" TextProperties-Font="Verdana, 14pt">
                </Appearance>
            </TextBlock>
        </ChartTitle>
    </telerik:RadChart>
 
    <br />
    <h1>Faxes</h1>
    <br />
    <telerik:RadChart ID="RadChart2" runat="server" 
        DefaultType="Spline" Skin="DeepBlue" Height="400px" Width="1200px">
        <Appearance>
            <FillStyle FillType="ComplexGradient">
                <FillSettings>
                    <ComplexGradient>
                        <telerik:GradientElement Color="26, 120, 179" />
                        <telerik:GradientElement Color="35, 189, 254" Position="0.5" />
                        <telerik:GradientElement Color="26, 120, 179" Position="1" />
                    </ComplexGradient>
                </FillSettings>
            </FillStyle>
            <Border Color="0, 66, 110" Width="5" />
        </Appearance>
        <Series>
            <telerik:ChartSeries Name="Percentage" Type="Spline">
                <Appearance>
                    <FillStyle FillType="ComplexGradient" MainColor="213, 247, 255">
                        <FillSettings>
                            <ComplexGradient>
                                <telerik:GradientElement Color="213, 247, 255" />
                                <telerik:GradientElement Color="193, 239, 252" Position="0.5" />
                                <telerik:GradientElement Color="157, 217, 238" Position="1" />
                            </ComplexGradient>
                        </FillSettings>
                    </FillStyle>
                    <TextAppearance TextProperties-Color="White">
                    </TextAppearance>
                </Appearance>
            </telerik:ChartSeries>
        </Series>
        <Legend>
            <Appearance Dimensions-Margins="1px, 2%, 12%, 1px">
                <ItemTextAppearance TextProperties-Color="White">
                </ItemTextAppearance>
                <FillStyle MainColor="37, 255, 255, 255" GammaCorrection="False">
                </FillStyle>
                <Border Color="76, 255, 255, 255" />
            </Appearance>
            <TextBlock>
                <Appearance Position-AlignedPosition="Top" TextProperties-Color="LightSkyBlue">
                </Appearance>
            </TextBlock>
        </Legend>
        <PlotArea>
            <XAxis DataLabelsColumn="Column1">
                <Appearance Color="98, 183, 226" MajorTick-Color="98, 183, 226">
                    <MajorGridLines Color="98, 183, 226" Width="0" />
                    <TextAppearance TextProperties-Color="White">
                    </TextAppearance>
                </Appearance>
                <AxisLabel>
                    <Appearance Dimensions-Paddings="1px, 1px, 10%, 1px">
                    </Appearance>
                    <TextBlock>
                        <Appearance TextProperties-Color="LightSkyBlue">
                        </Appearance>
                    </TextBlock>
                </AxisLabel>
<Items>
<telerik:ChartAxisItem></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="1"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="2"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="3"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="4"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="5"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="6"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="7"></telerik:ChartAxisItem>
</Items>
            </XAxis>
            <YAxis>
                <Appearance Color="98, 183, 226" MajorTick-Color="98, 183, 226" 
                    MinorTick-Color="98, 183, 226">
                    <MajorGridLines Color="120, 209, 248" />
                    <MinorGridLines Color="120, 209, 248" Width="0" />
                    <TextAppearance TextProperties-Color="White">
                    </TextAppearance>
                </Appearance>
                <AxisLabel>
                    <TextBlock>
                        <Appearance TextProperties-Color="LightSkyBlue">
                        </Appearance>
                    </TextBlock>
                </AxisLabel>
            </YAxis>
            <Appearance Dimensions-Margins="19%, 90px, 12%, 9%">
                <FillStyle MainColor="50, 255, 255, 255" SecondColor="Transparent">
                </FillStyle>
                <Border Color="97, 180, 223" />
            </Appearance>
        </PlotArea>
        <ChartTitle>
            <Appearance Dimensions-Margins="4%, 10px, 14px, 6%">
                <FillStyle MainColor="">
                </FillStyle>
            </Appearance>
            <TextBlock Text="Number Of Faxes">
                <Appearance TextProperties-Color="White" TextProperties-Font="Verdana, 14pt">
                </Appearance>
            </TextBlock>
        </ChartTitle>
    </telerik:RadChart>
   <br />
   <h1>Server Usage</h1>
    <table class="style1">
        <tr>
            <td>

    <telerik:RadChart ID="RadChart5" runat="server" 
        DataSourceID="ServerInboundUsage" DefaultType="Pie" Skin="DeepRed">
        <Appearance>
            <FillStyle FillType="ComplexGradient">
                <FillSettings>
                    <ComplexGradient>
                        <telerik:GradientElement Color="179, 37, 26" />
                        <telerik:GradientElement Color="253, 153, 66" Position="0.5" />
                        <telerik:GradientElement Color="179, 37, 26" Position="1" />
                    </ComplexGradient>
                </FillSettings>
            </FillStyle>
            <Border Color="141, 50, 0" Width="5" />
        </Appearance>
        <Series>
            <telerik:ChartSeries DataYColumn="Current Total" Name="Total" 
                Type="Pie" DataLabelsColumn="RemoteServer">
                <Appearance>
                    <FillStyle FillType="ComplexGradient">
                        <FillSettings>
                            <ComplexGradient>
                                <telerik:GradientElement Color="213, 247, 255" />
                                <telerik:GradientElement Color="193, 239, 252" Position="0.5" />
                                <telerik:GradientElement Color="157, 217, 238" Position="1" />
                            </ComplexGradient>
                        </FillSettings>
                    </FillStyle>
                    <TextAppearance TextProperties-Color="White">
                    </TextAppearance>
                </Appearance>
            </telerik:ChartSeries>
        </Series>
        <Legend>
            <Appearance Dimensions-Margins="1px, 2%, 12%, 1px">
                <ItemTextAppearance TextProperties-Color="White">
                </ItemTextAppearance>
                <FillStyle MainColor="37, 255, 255, 255">
                </FillStyle>
                <Border Color="76, 255, 255, 255" />
            </Appearance>
            <TextBlock>
                <Appearance Position-AlignedPosition="Top" TextProperties-Color="220, 158, 119">
                </Appearance>
            </TextBlock>
        </Legend>
        <PlotArea>
            <XAxis DataLabelsColumn="RemoteServer">
                <Appearance Color="76, 255, 255, 255" MajorTick-Color="179, 255, 255, 255">
                    <MajorGridLines Color="179, 255, 255, 255" Width="0" />
                    <TextAppearance TextProperties-Color="White">
                    </TextAppearance>
                </Appearance>
                <AxisLabel>
                    <Appearance Dimensions-Paddings="1px, 1px, 10%, 1px">
                    </Appearance>
                    <TextBlock>
                        <Appearance TextProperties-Color="254, 178, 112">
                        </Appearance>
                    </TextBlock>
                </AxisLabel>
            </XAxis>
            <YAxis>
                <Appearance Color="76, 255, 255, 255" MajorTick-Color="179, 255, 255, 255" 
                    MinorTick-Color="179, 255, 255, 255">
                    <MajorGridLines Color="179, 255, 255, 255" />
                    <MinorGridLines Color="179, 255, 255, 255" Width="0" />
                    <TextAppearance TextProperties-Color="White">
                    </TextAppearance>
                </Appearance>
                <AxisLabel>
                    <TextBlock>
                        <Appearance TextProperties-Color="220, 158, 119">
                        </Appearance>
                    </TextBlock>
                </AxisLabel>
            </YAxis>
            <Appearance Dimensions-Margins="19%, 90px, 12%, 9%">
                <FillStyle MainColor="50, 255, 255, 255" SecondColor="Transparent">
                </FillStyle>
                <Border Color="76, 255, 255, 255" />
            </Appearance>
        </PlotArea>
        <ChartTitle>
            <Appearance Dimensions-Margins="4%, 10px, 14px, 6%">
                <FillStyle MainColor="">
                </FillStyle>
            </Appearance>
            <TextBlock Text="Inbound">
                <Appearance TextProperties-Color="White" TextProperties-Font="Verdana, 14pt">
                </Appearance>
            </TextBlock>
        </ChartTitle>
    </telerik:RadChart>
            </td>
            <td>
    <telerik:RadChart ID="RadChart4" runat="server" 
        DataSourceID="ServerOutboundUsage" DefaultType="Pie" Skin="DeepRed">
        <Appearance>
            <FillStyle FillType="ComplexGradient">
                <FillSettings>
                    <ComplexGradient>
                        <telerik:GradientElement Color="179, 37, 26" />
                        <telerik:GradientElement Color="253, 153, 66" Position="0.5" />
                        <telerik:GradientElement Color="179, 37, 26" Position="1" />
                    </ComplexGradient>
                </FillSettings>
            </FillStyle>
            <Border Color="141, 50, 0" Width="5" />
        </Appearance>
        <Series>
            <telerik:ChartSeries DataYColumn="Current Total" Name="Total" 
                Type="Pie" DataLabelsColumn="RemoteServer">
                <Appearance>
                    <FillStyle FillType="ComplexGradient">
                        <FillSettings>
                            <ComplexGradient>
                                <telerik:GradientElement Color="213, 247, 255" />
                                <telerik:GradientElement Color="193, 239, 252" Position="0.5" />
                                <telerik:GradientElement Color="157, 217, 238" Position="1" />
                            </ComplexGradient>
                        </FillSettings>
                    </FillStyle>
                    <TextAppearance TextProperties-Color="White">
                    </TextAppearance>
                </Appearance>
            </telerik:ChartSeries>
        </Series>
        <Legend>
            <Appearance Dimensions-Margins="1px, 2%, 12%, 1px">
                <ItemTextAppearance TextProperties-Color="White">
                </ItemTextAppearance>
                <FillStyle MainColor="37, 255, 255, 255">
                </FillStyle>
                <Border Color="76, 255, 255, 255" />
            </Appearance>
            <TextBlock>
                <Appearance Position-AlignedPosition="Top" TextProperties-Color="220, 158, 119">
                </Appearance>
            </TextBlock>
        </Legend>
        <PlotArea>
            <XAxis AutoScale="False" DataLabelsColumn="RemoteServer" MaxValue="1" 
                MinValue="1" Step="1">
                <Appearance Color="76, 255, 255, 255" MajorTick-Color="179, 255, 255, 255">
                    <MajorGridLines Color="179, 255, 255, 255" Width="0" />
                    <TextAppearance TextProperties-Color="White">
                    </TextAppearance>
                </Appearance>
                <AxisLabel>
                    <Appearance Dimensions-Paddings="1px, 1px, 10%, 1px">
                    </Appearance>
                    <TextBlock>
                        <Appearance TextProperties-Color="254, 178, 112">
                        </Appearance>
                    </TextBlock>
                </AxisLabel>
                <Items>
                    <telerik:ChartAxisItem Value="1">
                    </telerik:ChartAxisItem>
                </Items>
            </XAxis>
            <YAxis>
                <Appearance Color="76, 255, 255, 255" MajorTick-Color="179, 255, 255, 255" 
                    MinorTick-Color="179, 255, 255, 255">
                    <MajorGridLines Color="179, 255, 255, 255" />
                    <MinorGridLines Color="179, 255, 255, 255" Width="0" />
                    <TextAppearance TextProperties-Color="White">
                    </TextAppearance>
                </Appearance>
                <AxisLabel>
                    <TextBlock>
                        <Appearance TextProperties-Color="220, 158, 119">
                        </Appearance>
                    </TextBlock>
                </AxisLabel>
            </YAxis>
            <Appearance Dimensions-Margins="19%, 90px, 12%, 9%">
                <FillStyle MainColor="50, 255, 255, 255" SecondColor="Transparent">
                </FillStyle>
                <Border Color="76, 255, 255, 255" />
            </Appearance>
        </PlotArea>
        <ChartTitle>
            <Appearance Dimensions-Margins="4%, 10px, 14px, 6%">
                <FillStyle MainColor="">
                </FillStyle>
            </Appearance>
            <TextBlock Text="Outbound">
                <Appearance TextProperties-Color="White" TextProperties-Font="Verdana, 14pt">
                </Appearance>
            </TextBlock>
        </ChartTitle>
    </telerik:RadChart>
            </td>
        </tr>
    </table>
   <br />
   <h1>Status Statistics</h1>
   <br />
    <telerik:RadGrid ID="RadGrid1" runat="server" DataSourceID="StatusStats" 
        GridLines="None" Skin="Vista" Width="598px">
<MasterTableView AutoGenerateColumns="False" DataSourceID="StatusStats">
<CommandItemSettings ExportToPdfText="Export to Pdf"></CommandItemSettings>

<RowIndicatorColumn FilterControlAltText="Filter RowIndicator column">
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn FilterControlAltText="Filter ExpandColumn column">
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>

    <Columns>
        <telerik:GridBoundColumn DataField="Status" 
            FilterControlAltText="Filter Status column" HeaderText="Status" 
            SortExpression="Status" UniqueName="Status">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Amount" DataType="System.Int32" 
            FilterControlAltText="Filter Amount column" HeaderText="Amount" ReadOnly="True" 
            SortExpression="Amount" UniqueName="Amount">
            <HeaderStyle Width="20%" />
        </telerik:GridBoundColumn>
    </Columns>


<EditFormSettings>
<EditColumn FilterControlAltText="Filter EditCommandColumn column"></EditColumn>
</EditFormSettings>
</MasterTableView>

<FilterMenu EnableImageSprites="False"></FilterMenu>

<HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Default"></HeaderContextMenu>
    </telerik:RadGrid>
    <br />
    <h1>Object Counts</h1>
    <br />
    <telerik:RadGrid ID="RadGrid2" runat="server" DataSourceID="ObjectCounts" 
        GridLines="None" Skin="Vista" Width="598px">
<MasterTableView AutoGenerateColumns="False" DataSourceID="ObjectCounts">
<CommandItemSettings ExportToPdfText="Export to Pdf"></CommandItemSettings>

<RowIndicatorColumn FilterControlAltText="Filter RowIndicator column">
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn FilterControlAltText="Filter ExpandColumn column">
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>

    <Columns>
        <telerik:GridBoundColumn DataField="Object" 
            FilterControlAltText="Filter Object column" HeaderText="Object" 
            SortExpression="Object" UniqueName="Object">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Total" DataType="System.Int32" 
            FilterControlAltText="Filter Total column" HeaderText="Total" 
            SortExpression="Total" UniqueName="Total">
            <HeaderStyle Width="20%" />
        </telerik:GridBoundColumn>
    </Columns>


<EditFormSettings>
<EditColumn FilterControlAltText="Filter EditCommandColumn column"></EditColumn>
</EditFormSettings>
</MasterTableView>

<FilterMenu EnableImageSprites="False"></FilterMenu>

<HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Default"></HeaderContextMenu>
    </telerik:RadGrid>
    <br />
    <h1>Work Requests</h1>
    <br />

    <telerik:RadGrid ID="RadGrid3" runat="server" DataSourceID="WorkRequests" 
        GridLines="None" Skin="Vista">
<MasterTableView AutoGenerateColumns="False" DataSourceID="WorkRequests">
<CommandItemSettings ExportToPdfText="Export to Pdf"></CommandItemSettings>

<RowIndicatorColumn FilterControlAltText="Filter RowIndicator column">
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn FilterControlAltText="Filter ExpandColumn column">
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>

    <Columns>
        <telerik:GridBoundColumn DataField="Server" 
            FilterControlAltText="Filter Server column" HeaderText="Server" ReadOnly="True" 
            SortExpression="Server" UniqueName="Server">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="CONVERTPCL5" DataType="System.Int64" 
            FilterControlAltText="Filter CONVERTPCL5 column" HeaderText="CONVERTPCL5" 
            SortExpression="CONVERTPCL5" UniqueName="CONVERTPCL5">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="DELETEFILES" DataType="System.Int64" 
            FilterControlAltText="Filter DELETEFILES column" HeaderText="DELETEFILES" 
            SortExpression="DELETEFILES" UniqueName="DELETEFILES">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="PRINTFAX" DataType="System.Int64" 
            FilterControlAltText="Filter PRINTFAX column" HeaderText="PRINTFAX" 
            SortExpression="PRINTFAX" UniqueName="PRINTFAX">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="OVERLAY" DataType="System.Int64" 
            FilterControlAltText="Filter OVERLAY column" HeaderText="OVERLAY" 
            SortExpression="OVERLAY" UniqueName="OVERLAY">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="CONVERTPS" DataType="System.Int64" 
            FilterControlAltText="Filter CONVERTPS column" HeaderText="CONVERTPS" 
            SortExpression="CONVERTPS" UniqueName="CONVERTPS">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="MSMAILROUTE" DataType="System.Int64" 
            FilterControlAltText="Filter MSMAILROUTE column" HeaderText="MSMAILROUTE" 
            SortExpression="MSMAILROUTE" UniqueName="MSMAILROUTE">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="MSMAILMSG" DataType="System.Int64" 
            FilterControlAltText="Filter MSMAILMSG column" HeaderText="MSMAILMSG" 
            SortExpression="MSMAILMSG" UniqueName="MSMAILMSG">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="CCMAILROUTE" DataType="System.Int64" 
            FilterControlAltText="Filter CCMAILROUTE column" HeaderText="CCMAILROUTE" 
            SortExpression="CCMAILROUTE" UniqueName="CCMAILROUTE">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="CCMAILMSG" DataType="System.Int64" 
            FilterControlAltText="Filter CCMAILMSG column" HeaderText="CCMAILMSG" 
            SortExpression="CCMAILMSG" UniqueName="CCMAILMSG">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="ARCHIVEFAX" DataType="System.Int64" 
            FilterControlAltText="Filter ARCHIVEFAX column" HeaderText="ARCHIVEFAX" 
            SortExpression="ARCHIVEFAX" UniqueName="ARCHIVEFAX">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="FILEROUTE" DataType="System.Int64" 
            FilterControlAltText="Filter FILEROUTE column" HeaderText="FILEROUTE" 
            SortExpression="FILEROUTE" UniqueName="FILEROUTE">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="MAKEFCS" DataType="System.Int64" 
            FilterControlAltText="Filter MAKEFCS column" HeaderText="MAKEFCS" 
            SortExpression="MAKEFCS" UniqueName="MAKEFCS">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="FODCAT" DataType="System.Int64" 
            FilterControlAltText="Filter FODCAT column" HeaderText="FODCAT" 
            SortExpression="FODCAT" UniqueName="FODCAT">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="OCRFAX1" DataType="System.Int64" 
            FilterControlAltText="Filter OCRFAX1 column" HeaderText="OCRFAX1" 
            SortExpression="OCRFAX1" UniqueName="OCRFAX1">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="OCRROUTE" DataType="System.Int64" 
            FilterControlAltText="Filter OCRROUTE column" HeaderText="OCRROUTE" 
            SortExpression="OCRROUTE" UniqueName="OCRROUTE">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="CONVERTCVL" DataType="System.Int64" 
            FilterControlAltText="Filter CONVERTCVL column" HeaderText="CONVERTCVL" 
            SortExpression="CONVERTCVL" UniqueName="CONVERTCVL">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="WPOMAILROUTE" DataType="System.Int64" 
            FilterControlAltText="Filter WPOMAILROUTE column" HeaderText="WPOMAILROUTE" 
            SortExpression="WPOMAILROUTE" UniqueName="WPOMAILROUTE">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="WPOMAILMSG" DataType="System.Int64" 
            FilterControlAltText="Filter WPOMAILMSG column" HeaderText="WPOMAILMSG" 
            SortExpression="WPOMAILMSG" UniqueName="WPOMAILMSG">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="LIBSYNC" DataType="System.Int64" 
            FilterControlAltText="Filter LIBSYNC column" HeaderText="LIBSYNC" 
            SortExpression="LIBSYNC" UniqueName="LIBSYNC">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="VALIDATE" DataType="System.Int64" 
            FilterControlAltText="Filter VALIDATE column" HeaderText="VALIDATE" 
            SortExpression="VALIDATE" UniqueName="VALIDATE">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="NETMSG" DataType="System.Int64" 
            FilterControlAltText="Filter NETMSG column" HeaderText="NETMSG" 
            SortExpression="NETMSG" UniqueName="NETMSG">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="XROUTE" DataType="System.Int64" 
            FilterControlAltText="Filter XROUTE column" HeaderText="XROUTE" 
            SortExpression="XROUTE" UniqueName="XROUTE">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="GENMAILRTE" DataType="System.Int64" 
            FilterControlAltText="Filter GENMAILRTE column" HeaderText="GENMAILRTE" 
            SortExpression="GENMAILRTE" UniqueName="GENMAILRTE">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="GENMAILMSG" DataType="System.Int64" 
            FilterControlAltText="Filter GENMAILMSG column" HeaderText="GENMAILMSG" 
            SortExpression="GENMAILMSG" UniqueName="GENMAILMSG">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="CXREPLY" DataType="System.Int64" 
            FilterControlAltText="Filter CXREPLY column" HeaderText="CXREPLY" 
            SortExpression="CXREPLY" UniqueName="CXREPLY">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="COMPLETEEVENT" DataType="System.Int64" 
            FilterControlAltText="Filter COMPLETEEVENT column" HeaderText="COMPLETEEVENT" 
            SortExpression="COMPLETEEVENT" UniqueName="COMPLETEEVENT">
        </telerik:GridBoundColumn>
    </Columns>

<EditFormSettings>
<EditColumn FilterControlAltText="Filter EditCommandColumn column"></EditColumn>
</EditFormSettings>
</MasterTableView>

<FilterMenu EnableImageSprites="False"></FilterMenu>

<HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Default"></HeaderContextMenu>
    </telerik:RadGrid>
    <br />

    <asp:SqlDataSource ID="WorkRequests" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        SelectCommand="GetWorkRequests" SelectCommandType="StoredProcedure">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="ObjectCounts" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        SelectCommand="ObjectCounts" SelectCommandType="StoredProcedure">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="StatusStats" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        SelectCommand="GetStatusStats" SelectCommandType="StoredProcedure">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="ServerInboundUsage" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        SelectCommand="ServerInboundUsage" SelectCommandType="StoredProcedure">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="ServerOutboundUsage" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        SelectCommand="ServerOutboundUsage" SelectCommandType="StoredProcedure">
    </asp:SqlDataSource>
</asp:Content>
