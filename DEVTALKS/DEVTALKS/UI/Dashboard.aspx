<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="DEVTALKS.UI.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous" />
    <link rel="stylesheet" href="CSS/Dashboard.css" />
</head>
<body>
    <form id="form1" runat="server">
        <aside class="sidebar">
            <asp:HyperLink runat="server" class="sidebar-title" Text="DTALKS" NavigateUrl="#" />

            <asp:HyperLink NavigateUrl="~/UI/Home.aspx" ImageUrl="~/ASSETS/ICONS/iconHome.svg" runat="server" Style="margin-top: 77px" />

            <asp:HyperLink NavigateUrl="#" ImageUrl="~/ASSETS/ICONS/iconVideosBlue.svg" runat="server" CssClass="sidebar-selected" />

            <asp:HyperLink NavigateUrl="#" ImageUrl="~/ASSETS/ICONS/iconProfile.svg" runat="server" Style="margin-top: 34px" />

            <asp:HyperLink NavigateUrl="~/UI/CreateAds.aspx" ImageUrl="~/ASSETS/ICONS/iconAds.svg" runat="server" Style="margin-top: 49px" />

            <asp:HyperLink runat="server" NavigateUrl="~/UI/CreatePodcast.aspx" ImageUrl="~/ASSETS/ICONS/iconPLus.svg" Style="margin-top: 49px" />
        </aside>

        <div style="margin-left: 100px; width: auto">
            <nav class="navbar">

                <span class="text-end me-2">
                    <asp:Label Text="Carla Lopez" runat="server" />
                    <br />
                    <asp:Label Text="Artista" runat="server" Font-Size="14px" ForeColor="#A6ACBE" />
                </span>

                <asp:Image runat="server" ImageUrl="~/ASSETS/IMG/imgProfile.svg" CssClass="my-3" />

                <asp:Label Text="|" runat="server" Font-Size="30px" ForeColor="#EFF4F6" CssClass="mx-5" />

                <asp:HyperLink runat="server" ImageUrl="~/ASSETS/ICONS/iconLogout.svg" NavigateUrl="~/UI/LandingPage.aspx" CssClass="me-5" />
            </nav>

            <main class="main-container my-5">
                <div class="d-flex justify-content-between mb-5 mx-5">
                    <asp:Label runat="server" Text="Programador tem vida social? série: Vida de um dEV" CssClass="subtitle" Width="50%" />

                    <span class="d-flex align-items-center">
                        <asp:ImageButton ImageUrl="~/ASSETS/ICONS/settings.svg" runat="server" class="button-dash" />

                        <asp:DropDownList runat="server" CssClass="button-dash mx-3">
                            <asp:ListItem Text="DEVDAY" />
                        </asp:DropDownList>

                        <asp:Button Text="Compartilhar" runat="server" CssClass="button-dash" Font-Bold="true" />
                    </span>
                </div>

                <div class="d-flex justify-content-center mb-4">

                    <iframe width="93%" height="700"
                        src="https://www.youtube.com/embed/DiXbJL3iWVs"
                        title="YouTube video player"
                        frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen
                         style="border-radius: 10px">
                    </iframe>
                </div>

                <span class="mx-5">
                    <asp:ImageButton ImageUrl="~/ASSETS/ICONS/iconFavourite.svg" runat="server" />
                    <asp:Label runat="server" Text="22.000" />
                </span>
            </main>
        </div>
    </form>
</body>
</html>
