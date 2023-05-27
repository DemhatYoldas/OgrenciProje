<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersGrafik.aspx.cs" Inherits="OgrenciProje.DersGrafik" %>
<%@ Register assembly="DevExpress.Web.v22.2, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.XtraCharts.v22.2.Web, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.XtraCharts.v22.2, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v22.2, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        <asp:DropDownList ID="DropDownList1" runat="server" Height="103px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="522px">
        </asp:DropDownList>
        <br />
        <br />
        <table class="nav-justified">
    <tr>
        <td>
            <dx:WebChartControl ID="WebChartControl1" runat="server" CrosshairEnabled="True" Height="500px" Width="500px">
                <seriesserializable>
                    <dx:Series Name="Notlar" LegendTextPattern="{A}">
                        <viewserializable>
                            <dx:PieSeriesView>
                            </dx:PieSeriesView>
                        </viewserializable>
                    </dx:Series>
                </seriesserializable>
            </dx:WebChartControl>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
    </form>
</asp:Content>
