<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotGuncelle.aspx.cs" Inherits="OgrenciProje.NotGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

       <form id="Form1" runat="server">

        <div class="form-group">
              <div>
                <asp:Label  for="TxtOgrNotid" runat="server">Not ID</asp:Label>
                <asp:TextBox ID="TxtOgrNotid" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>
            <br />
               <div>
                <asp:Label  for="TxtOgrid" runat="server">Öğrenci ID</asp:Label>
                <asp:TextBox ID="TxtOgrid" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrAdSoyad" runat="server">Öğrenci Adı Soyadı</asp:Label>
                <asp:TextBox ID="TxtOgrAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
             <div>
                <asp:Label for="TxtDersAd" runat="server">Ders Adı</asp:Label>
                <asp:TextBox ID="TxtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtSınavBir" runat="server">1.Sınav</asp:Label>
                <asp:TextBox ID="TxtSınavBir" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtSınavIki" runat="server">2.Sınav</asp:Label>
                <asp:TextBox ID="TxtSınavIki" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtSınavUc" runat="server">3.Sınav </asp:Label>
                <asp:TextBox ID="TxtSınavUc" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOrtalama" runat="server">Ortalama</asp:Label>
                <asp:TextBox ID="TxtOrtalama" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtDurum" runat="server">Durum</asp:Label>
                <asp:TextBox ID="TxtDurum" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="BtnHesap" runat="server"  Text="Hesapla" CssClass="btn btn-secondary" OnClick="BtnHesap_Click1" />
            <asp:Button ID="BtnGuncelle" runat="server"  Text="Güncelle" CssClass="btn btn-primary" OnClick="BtnGuncelle_Click" />
        </div>
    </form>

</asp:Content>
