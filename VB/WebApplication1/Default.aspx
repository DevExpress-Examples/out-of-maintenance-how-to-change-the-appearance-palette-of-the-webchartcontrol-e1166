<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebApplication1._Default" %>

<%@ Register Assembly="DevExpress.XtraCharts.v8.3.Web, Version=8.3.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>
<%@ Register Assembly="DevExpress.XtraCharts.v8.3, Version=8.3.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.XtraCharts" TagPrefix="cc1" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.3, Version=8.3.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dxchartsui:WebChartControl ID="WebChartControl1" runat="server" DiagramTypeName="XYDiagram"
			Height="490px" PaletteName="Palette 1" Width="666px" ClientInstanceName="chart" EnableClientSideAPI="True" OnCustomCallback="WebChartControl1_CustomCallback">
			<SeriesSerializable>
				<cc1:Series LabelTypeName="SideBySideBarSeriesLabel" Name="Series 1" PointOptionsTypeName="PointOptions"
					SeriesViewTypeName="SideBySideBarSeriesView">
					<points>
<cc1:SeriesPoint Values="1" ArgumentSerializable="A"></cc1:SeriesPoint>
<cc1:SeriesPoint Values="2" ArgumentSerializable="B"></cc1:SeriesPoint>
<cc1:SeriesPoint Values="3" ArgumentSerializable="C"></cc1:SeriesPoint>
<cc1:SeriesPoint Values="4" ArgumentSerializable="D"></cc1:SeriesPoint>
<cc1:SeriesPoint Values="5" ArgumentSerializable="E"></cc1:SeriesPoint>
<cc1:SeriesPoint Values="6" ArgumentSerializable="F"></cc1:SeriesPoint>
</points>
					<view coloreach="True" hiddenserializablestring="to be serialized"></view>
					<label hiddenserializablestring="to be serialized" linevisible="True" overlappingoptionstypename="OverlappingOptions">
						<fillstyle filloptionstypename="SolidFillOptions">
<Options HiddenSerializableString="to be serialized"></Options>
</fillstyle>
					</label>
					<pointoptions hiddenserializablestring="to be serialized"></pointoptions>
					<legendpointoptions hiddenserializablestring="to be serialized"></legendpointoptions>
				</cc1:Series>
			</SeriesSerializable>
			<SeriesTemplate LabelTypeName="SideBySideBarSeriesLabel" PointOptionsTypeName="PointOptions"
				SeriesViewTypeName="SideBySideBarSeriesView">
				<View HiddenSerializableString="to be serialized">
				</View>
				<Label HiddenSerializableString="to be serialized" LineVisible="True" OverlappingOptionsTypeName="OverlappingOptions">
					<FillStyle FillOptionsTypeName="SolidFillOptions">
						<Options HiddenSerializableString="to be serialized" />
					</FillStyle>
				</Label>
				<PointOptions HiddenSerializableString="to be serialized">
				</PointOptions>
				<LegendPointOptions HiddenSerializableString="to be serialized">
				</LegendPointOptions>
			</SeriesTemplate>
			<Diagram>
				<axisx visibleinpanesserializable="-1">
<Range SideMarginsEnabled="True"></Range>
</axisx>
				<axisy visibleinpanesserializable="-1">
<Range SideMarginsEnabled="True"></Range>
</axisy>
			</Diagram>
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
			<FillStyle FillOptionsTypeName="SolidFillOptions">
				<Options HiddenSerializableString="to be serialized" />
			</FillStyle>
		</dxchartsui:WebChartControl>
		<dxe:ASPxComboBox ID="ASPxComboBox1" runat="server" ValueType="System.String" Width="668px" EnableCallbackMode="True" EnableClientSideAPI="True">
			<ClientSideEvents SelectedIndexChanged="function(s, e) {
	chart.PerformCallback('MyCallback|'+s.savedValueChangedText);
}" />
		</dxe:ASPxComboBox>

	</div>
	</form>
</body>
</html>
