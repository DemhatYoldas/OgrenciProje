<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotListesi.aspx.cs" Inherits="OgrenciProje.NotListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="table-responsive">
        <table class="table table-hover table-responsive table-bordered">
            <caption>Not Listesi</caption>

            <tr>
                <th scope="col">Öğrenci ID</th>
                <th scope="col">Öğrenci Ad Soyad</th>
                <th scope="col">Ders Adı</th>
                <th scope="col">1.Sınav </th>
                <th scope="col">2.Sınav </th>
                <th scope="col">3.Sınav </th>
                <th scope="col">Ortalama </th>
                <th scope="col">Durum </th>
                <th scope="col">İşlemler</th>
            </tr>

            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("OGRENCIID") %></td>
                            <td><%#Eval("OGRENCIADSOYAD") %></td>
                            <td><%#Eval("DERSAD") %></td>
                            <td><%#Eval("SINAV1") %></td>
                            <td><%#Eval("SINAV2") %></td>
                            <td><%#Eval("SINAV3") %></td>
                            <td><%#Eval("ORTALAMA") %></td>
                            <td><%#Eval("DURUM") %></td>
                            <td>
                                <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"NotGuncelle.Aspx?NotID="+Eval("NotID")%>' runat="server" CssClass="btn btn-success">Notu Güncelle</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>

</asp:Content>
