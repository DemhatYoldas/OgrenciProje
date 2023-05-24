<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Grafikler.aspx.cs" Inherits="OgrenciProje.Grafikler" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<%@ Register Assembly="DevExpress.XtraCharts.v22.2.Web, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.XtraCharts.v22.2, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        <table class="table table-hover table-responsive table-bordered">
            <tr>
                <td>
                    <dx:WebChartControl ID="WebChartControl6" runat="server" CrosshairEnabled="True" Height="300px" Width="500px">
                        <DiagramSerializable>
                            <dx:XYDiagram>
                                <AxisX VisibleInPanesSerializable="-1">
                                </AxisX>
                                <AxisY VisibleInPanesSerializable="-1">
                                </AxisY>
                            </dx:XYDiagram>
                        </DiagramSerializable>
                        <SeriesSerializable>
                            <dx:Series Name="Series 1">
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                </td>
                <td>
                    <dx:WebChartControl ID="WebChartControl5" runat="server" Height="300px" Width="500px" CrosshairEnabled="True" PaletteName="Solstice">
                        <DiagramSerializable>
                            <dx:SimpleDiagram3D RotationMatrixSerializable="1;0;0;0;0;0.5;-0.866025403784439;0;0;0.866025403784439;0.5;0;0;0;0;1">
                            </dx:SimpleDiagram3D>
                        </DiagramSerializable>
                        <SeriesSerializable>
                            <dx:Series Name="Cinsiyet" LegendTextPattern="{A}">
                                <ViewSerializable>
                                    <dx:Pie3DSeriesView>
                                        <Titles>
                                            <dx:SeriesTitle Visibility="True" />
                                        </Titles>
                                    </dx:Pie3DSeriesView>
                                </ViewSerializable>
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                </td>
            </tr>
            <tr>
                <td>
                    <dx:WebChartControl ID="WebChartControl1" runat="server" Height="300px" Width="500px" CrosshairEnabled="True" PaletteName="Solstice">
                        <Legend BackColor="255, 255, 255"></Legend>
                        <SeriesSerializable>
                            <dx:Series Name="DersAd" LegendTextPattern="{A}">
                                <ViewSerializable>
                                    <dx:PieSeriesView>
                                    </dx:PieSeriesView>
                                </ViewSerializable>
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                </td>
                <td>
                    <dx:WebChartControl ID="WebChartControl3" runat="server" Height="300px" Width="500px" CrosshairEnabled="True" PaletteName="Concourse">
                        <DiagramSerializable>
                            <dx:XYDiagram>
                                <AxisX VisibleInPanesSerializable="-1">
                                </AxisX>
                                <AxisY VisibleInPanesSerializable="-1">
                                </AxisY>
                            </dx:XYDiagram>
                        </DiagramSerializable>
                        <SeriesSerializable>
                            <dx:Series Name="Dersler">
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
