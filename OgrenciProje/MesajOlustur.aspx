<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="MesajOlustur.aspx.cs" Inherits="OgrenciProje.Mesajyaz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="TxtMesajGonderen" runat="server"> Gönderen</asp:Label>
                <asp:TextBox ID="TxtMesajGonderen" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtMesajAlıcı" runat="server"> Alıcı</asp:Label>
                <asp:TextBox ID="TxtMesajAlıcı" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtMesajBaslik" runat="server">Mesaj Başlık</asp:Label>
                <asp:TextBox ID="TxtMesajBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtMesajİcerik" runat="server">Mesaj İçerik</asp:Label>
                <textarea id="TxtMesajİcerik" class="form-control responsive-utilities" cols="20" rows="6" runat="server"></textarea>
            </div>
            <br />
        </div>

        <asp:Button ID="BtnMsjGonder" runat="server" Text="Mesaj Oluştur" CssClass="btn btn-success" OnClick="BtnMsjGonder_Click" />

    </form>



</asp:Content>
