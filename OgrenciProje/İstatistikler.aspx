<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="İstatistikler.aspx.cs" Inherits="OgrenciProje.İstatistikler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:TextBox ID="TxtToplamOgrSayi" runat="server" CssClass="form-control" Enabled="False">Toplam Ögrenci Sayısı : </asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TxtToplamOgretmenSayi" runat="server" CssClass="form-control" Enabled="False">Toplam Ögretmen Sayısı : </asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TxtToplamDersSayi" runat="server" CssClass="form-control" Enabled="False">Toplam Ders Sayısı: </asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TextBoxEnBasarılıDers" runat="server" CssClass="form-control" Enabled="False">En Başarılı Ders: </asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TextBoxFizikNot" runat="server" CssClass="form-control" Enabled="False">Fizik: </asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TextBoxEdebiyat" runat="server" CssClass="form-control" Enabled="False">Edebiyat</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TextBoxAlgoritmaNot" runat="server" CssClass="form-control" Enabled="False">Algoritma </asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TextBoxBiyolojiNot" runat="server" CssClass="form-control" Enabled="False">Biyoloji </asp:TextBox>
            </div>
            <br />
             <div>
                <asp:TextBox ID="TextBoxEdebiyatNot" runat="server" CssClass="form-control" Enabled="False">Edebiyat Not Ortalaması: </asp:TextBox>
            </div>
            <br />
             <div>
                <asp:TextBox ID="TextBoxBiyolojiOrtalama" runat="server" CssClass="form-control" Enabled="False">Biyoloji Not Ortalaması </asp:TextBox>
            </div>
            <br />
             <div>
                <asp:TextBox ID="TextBoxKimyaGecen" runat="server" CssClass="form-control" Enabled="False">Kimya Dersini Geçen </asp:TextBox>
            </div>
            <br />
        </div>

    </form>

</asp:Content>
