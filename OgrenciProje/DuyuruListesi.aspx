<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruListesi.aspx.cs" Inherits="OgrenciProje.DuyuruListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="table-responsive">
        <table class="table table-hover table-responsive table-bordered">
            <caption>Duyuru Listesi</caption>

            <tr>
                <th scope="col">#</th>
                <th scope="col">Duyuru Başlık </th>
                <th scope="col">Duyuru İçerik</th>
                <th scope="col">Duyuru Yapan Öğretmen</th>
                <th scope="col">İşlemler</th>
            </tr>

            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>

                            <td><%#Eval("DUYURUID") %></td>
                            <td><%#Eval("DUYURUBASLIK") %></td>
                            <td><%#Eval("DUYURUICERIK") %></td>
                            <td><%#Eval("DUYURUOGRT") %></td>
                             <td>
                                <asp:HyperLink NavigateUrl="#" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                                <asp:HyperLink NavigateUrl="#" runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>

</asp:Content>
