<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="GelenMesajlar.aspx.cs" Inherits="OgrenciProje.GelenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="table-responsive">
        <table class="table table-hover table-responsive table-bordered">
            <caption>Mesaj Listesi</caption>

            <tr>
                <th scope="col">#</th>
                <th scope="col">Gönderen</th>
                <th scope="col">Alıcı</th>
                <th scope="col">Başlık </th>
                <th scope="col">İçerik </th>
                <th scope="col">Tarih </th>

                <th scope="col">İşlemler</th>
            </tr>

            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>

                            <td><%#Eval("MESAJID") %></td>
                            <td><%#Eval("GONDEREN") %></td>
                            <td><%#Eval("ALICI") %></td>
                            <td><%#Eval("BASLIK") %></td>
                            <td><%#Eval("ICERIK") %></td>
                            <td><%#Eval("TARIH") %></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%#"~/MesajSil.aspx?MESAJID="+Eval("MESAJID")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>

                                <asp:HyperLink NavigateUrl='<%#"~/MesajGuncelle.aspx?MESAJID="+Eval("MESAJID")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>


</asp:Content>
