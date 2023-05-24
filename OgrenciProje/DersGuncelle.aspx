<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersGuncelle.aspx.cs" Inherits="OgrenciProje.DerslerEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form id="Form1" runat="server">
          <div>
                <asp:Label  for="TxtDersid" runat="server">Ders ID</asp:Label>
                <asp:TextBox ID="TxtDersid" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>
            <br />
        <div>
            <asp:Label for="TxtDersAdi" runat="server">Ders Adı</asp:Label>
            <asp:TextBox ID="TxtDersAdi" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />

         <asp:Button ID="BtnGuncelle" runat="server"  Text="Güncelle" CssClass="btn btn-success" OnClick="BtnGuncelle_Click"  />
       
    </form>

</asp:Content>
