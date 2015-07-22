<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="GroupCodeUsage.aspx.vb" Inherits="CUBE.GroupCodeUsage" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Charting" tagprefix="telerik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>

   

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td align="center">
                    <h1>Inbound/Outbound Minutes</h1></td>
                         </tr>
            <tr>
                <td align="center">
<telerik:RadChart ID="RchartUsage" runat="server" 
        DefaultType="Spline" Skin="DeepGreen" Height="400px" Width="1150px" AutoLayout="True" 
                        AutoTextWrap="True">
        <Appearance Corners="Round, Round, Round, Round, 50">
            <FillStyle FillType="Hatch" MainColor="Black" SecondColor="0, 41, 64">
                <FillSettings>
                    <ComplexGradient>
                        <telerik:GradientElement Color="61, 113, 0" />
                        <telerik:GradientElement Color="125, 208, 36" Position="0.5" />
                        <telerik:GradientElement Color="61, 113, 0" Position="1" />
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
                <FillStyle MainColor="37, 255, 255, 255">
                </FillStyle>
                <Border Color="76, 255, 255, 255" />
            </Appearance>
            <TextBlock>
                <Appearance Position-AlignedPosition="Top" TextProperties-Color="White">
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
                <FillStyle MainColor="143, 212, 0" SecondColor="Transparent">
                </FillStyle>
                <Border Color="76, 255, 255, 255" />
            </Appearance>
        </PlotArea>
        <ChartTitle>
            <Appearance Dimensions-Margins="4%, 10px, 14px, 6%">
                <FillStyle MainColor="">
                </FillStyle>
            </Appearance>
            <TextBlock Text="Minutes">
                <Appearance TextProperties-Color="White" TextProperties-Font="Verdana, 14pt">
                </Appearance>
            </TextBlock>
        </ChartTitle>
    </telerik:RadChart>
 
                </td>
                         </tr>
            <tr>
                <td align="center">
                    <h1>Faxes per Product</h1></td>
                         </tr>
            <tr>
                <td align="center">
<telerik:RadChart ID="RchartProduct" runat="server" 
        DefaultType="Spline" Skin="DeepGreen" Height="400px" Width="1150px" AutoLayout="True" 
                        AutoTextWrap="True">
        <Appearance Corners="Round, Round, Round, Round, 50">
            <FillStyle FillType="Hatch" MainColor="Black" SecondColor="0, 41, 64">
                <FillSettings>
                    <ComplexGradient>
                        <telerik:GradientElement Color="61, 113, 0" />
                        <telerik:GradientElement Color="125, 208, 36" Position="0.5" />
                        <telerik:GradientElement Color="61, 113, 0" Position="1" />
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
                <FillStyle MainColor="37, 255, 255, 255">
                </FillStyle>
                <Border Color="76, 255, 255, 255" />
            </Appearance>
            <TextBlock>
                <Appearance Position-AlignedPosition="Top" TextProperties-Color="White">
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
                <FillStyle MainColor="143, 212, 0" SecondColor="Transparent">
                </FillStyle>
                <Border Color="76, 255, 255, 255" />
            </Appearance>
        </PlotArea>
        <ChartTitle>
            <Appearance Dimensions-Margins="4%, 10px, 14px, 6%">
                <FillStyle MainColor="">
                </FillStyle>
            </Appearance>
            <TextBlock Text="Total Minutes per Product">
                <Appearance TextProperties-Color="White" TextProperties-Font="Verdana, 14pt">
                </Appearance>
            </TextBlock>
        </ChartTitle>
    </telerik:RadChart>
 
                </td>
                         </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
