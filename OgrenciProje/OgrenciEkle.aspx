﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgrenciEkle.aspx.cs" Inherits="OgrenciProje.OgrenciEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div>
            <asp:Label for="TxtOgrNumara" runat="server">Öğrenci Numara</asp:Label>
            <asp:TextBox ID="TxtOgrNumara" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtOgrAd" runat="server">Öğrenci Adı</asp:Label>
            <asp:TextBox ID="TxtOgrAd" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtOgrSoyad" runat="server">Öğrenci Soyadı</asp:Label>
            <asp:TextBox ID="TxtOgrSoyad" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtOgrTelefon" runat="server">Öğrenci Telefon</asp:Label>
            <asp:TextBox ID="TxtOgrTelefon" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtOgrMail" runat="server">Mail Adı</asp:Label>
            <asp:TextBox ID="TxtOgrMail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtOgrSifre" runat="server">Şifre </asp:Label>
            <asp:TextBox ID="TxtOgrSifre" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtOgrFotograf" runat="server">Öğrenci Fotoğraf Linki</asp:Label>
            <asp:TextBox ID="TxtOgrFotograf" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="BtnKaydets" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="BtnKaydet" />
    </form>
</asp:Content>

