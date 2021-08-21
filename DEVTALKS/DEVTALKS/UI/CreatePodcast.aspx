<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreatePodcast.aspx.cs" Inherits="DEVTALKS.UI.CreatePodcast" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cadastro de podcast</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous" />
    <link rel="stylesheet" href="CSS/CreatePodcastAndAds.css" />
</head>
<body>
     <form id="form1" runat="server">

        <aside class="sidebar">
            <asp:HyperLink runat="server" class="sidebar-title" Text="DTALKS" NavigateUrl="#" />

            <asp:HyperLink NavigateUrl="#" ImageUrl="~/ASSETS/ICONS/iconHome.svg" runat="server" style="margin-top: 77px" />

            <asp:HyperLink NavigateUrl="#" ImageUrl="~/ASSETS/ICONS/iconVideos.svg" runat="server" style="margin-top: 49px"/>

            <asp:HyperLink NavigateUrl="#" ImageUrl="~/ASSETS/ICONS/iconProfile.svg" runat="server"  style="margin-top: 49px" />

            <asp:HyperLink  NavigateUrl="~/UI/CreateAds.aspx" ImageUrl="~/ASSETS/ICONS/iconAds.svg" runat="server"  style="margin-top: 49px" />

            <asp:HyperLink runat="server" NavigateUrl="#" ImageUrl="~/ASSETS/ICONS/iconPlusBlue.svg" CssClass="sidebar-selected"/>
        </aside>

        <div class="w-100">
            <nav class="navbar">

                <span class="text-end me-2">
                    <asp:Label Text="Carla Lopez" runat="server" />
                    <br />
                    <asp:Label Text="Artista" runat="server" Font-Size="14px" ForeColor="#A6ACBE"/>
                </span>

                <asp:Image runat="server" ImageUrl="~/ASSETS/IMG/imgProfile.svg" CssClass="my-3"/>

                <asp:Label Text="|" runat="server" Font-Size="30px" ForeColor="#EFF4F6" CssClass="mx-5"/>

                <asp:HyperLink runat="server" ImageUrl="~/ASSETS/ICONS/iconLogout.svg" NavigateUrl="~/UI/LandingPage.aspx" CssClass="me-5"/>
            </nav>

            <main class="d-flex justify-content-center align-items-center my-4">
                <div class="container-main">
                    <asp:Label Text="PodCast" runat="server" class="container-title"/>

                    <asp:Image runat="server" ImageUrl="~/ASSETS/IMG/imgPodcast.svg" CssClass="container-podcast"/>

                    <asp:TextBox runat="server" placeholder="Tema" CssClass="container-input"/>

                    <asp:TextBox runat="server" placeholder="Descrição" CssClass="container-input"/>

                    <asp:TextBox runat="server" placeholder="Título" CssClass="container-input"/>

                    <asp:Button Text="Criar Podcast" runat="server" CssClass="container-button" />
                </div>
            </main>
        </div>
    </form>
</body>
</html>
