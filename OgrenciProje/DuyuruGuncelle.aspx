<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruGuncelle.aspx.cs" Inherits="OgrenciProje.DuyuruGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label  for="TxtDuyuruid" runat="server">Duyuru ID</asp:Label>
                <asp:TextBox ID="TxtDuyuruid" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>
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
           
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Güncelle" OnClick="BtnGuncelle"  />
        </div>
    </form>

</asp:Content>
