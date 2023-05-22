<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruEkle.aspx.cs" Inherits="OgrenciProje.DuyuruEkle" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v22.2, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v22.2, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form id="Form1" runat="server">

        <div>
            <asp:Label for="TxtDuyuruBaslik" runat="server">Duyuru Başlık</asp:Label>
            <asp:TextBox ID="TxtDuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtDuyuruİcerik" runat="server">Duyuru İçerik</asp:Label>
            <textarea id="TxtDuyuruİcerik" class="form-control responsive-utilities" cols="20" rows="6" runat="server"></textarea>
        </div>
        <br />
        <div>
            <asp:Label for="TxtDuyuruOgretmen" runat="server">Duyuru Öğretmen</asp:Label>
            <asp:DropDownList ID="TxtDuyuruOgretmen" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <br />
        
         <asp:Button ID="Button1" runat="server"  Text="Oluştur" CssClass="btn btn-success" OnClick="Button1_Click" />
       
    </form>

</asp:Content>
