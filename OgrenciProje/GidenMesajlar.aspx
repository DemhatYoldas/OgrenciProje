<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="GidenMesajlar.aspx.cs" Inherits="OgrenciProje.GidenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="table-responsive">
        <table class="table table-hover table-responsive table-bordered">
            <caption>Mesaj Listesi</caption>

            <tr>
                <th scope="col">#</th>
                <th scope="col">Alıcı No</th>
                <th scope="col">Gönderen Öğretmen</th>
                <th scope="col">Başlık </th>
                <th scope="col">İçerik </th>
                <th scope="col">Tarih </th>
                <th scope="col">İşlemler</th>
            </tr>

            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>

                            <td><%#Eval(expression:"MESAJID") %></td>
                            <td><%#Eval(expression:"ALICI") %></td>
                            <td><%#Eval(expression:"OGRTADSOYAD") %></td>
                            <td><%#Eval(expression:"BASLIK") %></td>
                            <td><%#Eval(expression:"ICERIK") %></td>
                            <td><%#Eval(expression:"TARIH") %></td>

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
