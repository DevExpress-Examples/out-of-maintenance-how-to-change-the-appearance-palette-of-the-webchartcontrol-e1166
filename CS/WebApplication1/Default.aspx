<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<%@ Register Assembly="DevExpress.XtraCharts.v15.1.Web, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>
<%@ Register Assembly="DevExpress.XtraCharts.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts" TagPrefix="cc1" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxchartsui:WebChartControl ID="WebChartControl1" runat="server" 
            Height="490px" PaletteName="Palette 1" Width="666px" ClientInstanceName="chart" EnableClientSideAPI="True" OnCustomCallback="WebChartControl1_CustomCallback">
            <SeriesSerializable>
                <cc1:Series  Name="Series 1" 
                    >
                    <points>
<cc1:SeriesPoint Values="1" ArgumentSerializable="A"></cc1:SeriesPoint>
<cc1:SeriesPoint Values="2" ArgumentSerializable="B"></cc1:SeriesPoint>
<cc1:SeriesPoint Values="3" ArgumentSerializable="C"></cc1:SeriesPoint>
<cc1:SeriesPoint Values="4" ArgumentSerializable="D"></cc1:SeriesPoint>
<cc1:SeriesPoint Values="5" ArgumentSerializable="E"></cc1:SeriesPoint>
<cc1:SeriesPoint Values="6" ArgumentSerializable="F"></cc1:SeriesPoint>
</points>
                    <ViewSerializable>
<cc1:SideBySideBarSeriesView coloreach="True" hiddenserializablestring="to be serialized"></cc1:SideBySideBarSeriesView>
</ViewSerializable>
                    <LabelSerializable>
<cc1:SideBySideBarSeriesLabel hiddenserializablestring="to be serialized" linevisible="True">
                        <fillstyle >
<OptionsSerializable>
<cc1:SolidFillOptions HiddenSerializableString="to be serialized"></cc1:SolidFillOptions>
</OptionsSerializable>
</fillstyle>
                    </cc1:SideBySideBarSeriesLabel>
</LabelSerializable>
                    <PointOptionsSerializable>
<cc1:PointOptions hiddenserializablestring="to be serialized"></cc1:PointOptions>
</PointOptionsSerializable>
                    <LegendPointOptionsSerializable>
<cc1:PointOptions hiddenserializablestring="to be serialized"></cc1:PointOptions>
</LegendPointOptionsSerializable>
                </cc1:Series>
            </SeriesSerializable>
            <SeriesTemplate  
                >
                <ViewSerializable>
<cc1:SideBySideBarSeriesView HiddenSerializableString="to be serialized">
                </cc1:SideBySideBarSeriesView>
</ViewSerializable>
                <LabelSerializable>
<cc1:SideBySideBarSeriesLabel HiddenSerializableString="to be serialized" LineVisible="True" >
                    <FillStyle >
                        <OptionsSerializable>
<cc1:SolidFillOptions HiddenSerializableString="to be serialized" />
</OptionsSerializable>
                    </FillStyle>
                </cc1:SideBySideBarSeriesLabel>
</LabelSerializable>
                <PointOptionsSerializable>
<cc1:PointOptions HiddenSerializableString="to be serialized">
                </cc1:PointOptions>
</PointOptionsSerializable>
                <LegendPointOptionsSerializable>
<cc1:PointOptions HiddenSerializableString="to be serialized">
                </cc1:PointOptions>
</LegendPointOptionsSerializable>
            </SeriesTemplate>
            <DiagramSerializable>
<cc1:XYDiagram>
                <axisx visibleinpanesserializable="-1">
<Range SideMarginsEnabled="True"></Range>
</axisx>
                <axisy visibleinpanesserializable="-1">
<Range SideMarginsEnabled="True"></Range>
</axisy>
            </cc1:XYDiagram>
</DiagramSerializable>
            <PaletteWrappers>
                <dxchartsui:PaletteWrapper Name="Palette 1" ScaleMode="Repeat">
                    <Palette>
                        <cc1:PaletteEntry Color="156, 158, 228" Color2="156, 158, 228">
                        </cc1:PaletteEntry>
                        <cc1:PaletteEntry Color="163, 222, 222" Color2="163, 222, 222">
                        </cc1:PaletteEntry>
                        <cc1:PaletteEntry Color="236, 149, 203" Color2="236, 149, 203">
                        </cc1:PaletteEntry>
                    </Palette>
                </dxchartsui:PaletteWrapper>
            </PaletteWrappers>
            <FillStyle >
                <OptionsSerializable>
<cc1:SolidFillOptions HiddenSerializableString="to be serialized" />
</OptionsSerializable>
            </FillStyle>
        </dxchartsui:WebChartControl>
        <dxe:ASPxComboBox ID="ASPxComboBox1" runat="server" ValueType="System.String" Width="668px" EnableCallbackMode="True" EnableClientSideAPI="True">
            <ClientSideEvents SelectedIndexChanged="function(s, e) {

	chart.PerformCallback('MyCallback|'+s.lastSuccessValue);
}" />
        </dxe:ASPxComboBox>
    
    </div>
    </form>
</body>
</html>
