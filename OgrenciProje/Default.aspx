<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OgrenciProje.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="table-responsive">
        <table class="table table-hover table-responsive table-bordered">
            <caption>Öğrenci Listesi</caption>
            
            <tr>
                <th scope="col">#</th>
                <th scope="col">Ad</th>
                <th scope="col">Soyad</th>
                <th scope="col">Telefon</th>
                <th scope="col">Mail</th>
                <th scope="col">Şifre</th>
                <th scope="col">İşlemler</th>
            </tr>

            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>

                            <td><%#Eval("OGRID") %></td>
                            <td><%#Eval("OGRAD") %></td>
                            <td><%#Eval("OGRSOYAD") %></td>
                            <td><%#Eval("OGRTELEFON") %></td>
                            <td><%#Eval("OGRMAIL") %></td>
                            <td><%#Eval("OGRSIFRE") %></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%#"~/OgrenciSil.aspx?OGRID="+Eval("OGRID")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OGRID="+Eval("OGRID")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>

</asp:Content>
