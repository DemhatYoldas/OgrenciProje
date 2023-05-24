<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DerslerListesi.aspx.cs" Inherits="OgrenciProje.DerslerListesi" %>

<%@ Register Assembly="DevExpress.Web.v22.2, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="table-responsive">
        <table class="table table-hover table-responsive table-bordered">
            <caption>Ders Listesi</caption>

            <tr>
                <th scope="col">#</th>
                <th scope="col">Ders Adı</th>
                <th scope="col">İşlemler</th>
            </tr>

            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>

                            <td><%#Eval("DERSID") %></td>
                            <td><%#Eval("DERSAD") %></td>

                            <td>
                                <asp:HyperLink NavigateUrl='<%#"~/DersSil.Aspx?DERSID="+Eval("DERSID")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%#"~/DersGuncelle.Aspx?DERSID="+Eval("DERSID")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%#"~/DersEkle.Aspx?DERSID="+Eval("DERSID")%>' runat="server" CssClass="btn btn-info">Ders Ekle</asp:HyperLink>
                             
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>


</asp:Content>
