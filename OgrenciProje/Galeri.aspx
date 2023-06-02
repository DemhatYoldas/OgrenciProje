<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Galeri.aspx.cs" Inherits="OgrenciProje.Galeri" %>
<%@ Register assembly="DevExpress.Web.v22.2, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">



    <form id="form1" runat="server">
        <dx:ASPxImageGallery ID="ASPxImageGallery1" runat="server" DataSourceID="SqlDataSource1" ImageUrlField="OgrFotograf" EnableTheming="True" Theme="MetropolisBlue">
            <SettingsFolder ImageCacheFolder="~/Thumb/" />
            <Items>
                <dx:ImageGalleryItem ImageUrl="https://e7.pngegg.com/pngimages/17/956/png-clipart-student-college-training-education-hedkey-india-pvt-ltd-static-website-designing-company-in-uttam-nagar-delhi-india-student-people-india.png">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://e7.pngegg.com/pngimages/17/956/png-clipart-student-college-training-education-hedkey-india-pvt-ltd-static-website-designing-company-in-uttam-nagar-delhi-india-student-people-india.png">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://e7.pngegg.com/pngimages/17/956/png-clipart-student-college-training-education-hedkey-india-pvt-ltd-static-website-designing-company-in-uttam-nagar-delhi-india-student-people-india.png">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://e7.pngegg.com/pngimages/17/956/png-clipart-student-college-training-education-hedkey-india-pvt-ltd-static-website-designing-company-in-uttam-nagar-delhi-india-student-people-india.png">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://w7.pngwing.com/pngs/37/153/png-transparent-student-diploma-college-education-course-student-woman-carrying-books-while-smiling-people-university-student-png.png">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://e7.pngegg.com/pngimages/17/956/png-clipart-student-college-training-education-hedkey-india-pvt-ltd-static-website-designing-company-in-uttam-nagar-delhi-india-student-people-india.png">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://w7.pngwing.com/pngs/37/153/png-transparent-student-diploma-college-education-course-student-woman-carrying-books-while-smiling-people-university-student-png.png">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="https://e7.pngegg.com/pngimages/17/956/png-clipart-student-college-training-education-hedkey-india-pvt-ltd-static-website-designing-company-in-uttam-nagar-delhi-india-student-people-india.png">
                </dx:ImageGalleryItem>
            </Items>
            <SettingsTableLayout RowsPerPage="2" />
        </dx:ASPxImageGallery>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UdeymSiteDBConnectionString %>" SelectCommand="SELECT [OGRFOTOGRAF] FROM [TBL_OGRENCİ]"></asp:SqlDataSource>
    </form>



</asp:Content>
