<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DEVTALKS.UI.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous" />
    <link rel="stylesheet" href="CSS/Home.css" />
</head>
<body>
    <form id="form1" runat="server">
        <aside class="sidebar">
            <asp:HyperLink runat="server" class="sidebar-title" Text="DTALKS" NavigateUrl="#" />

            <asp:HyperLink NavigateUrl="#" ImageUrl="~/ASSETS/ICONS/iconHomeBlue.svg" runat="server" CssClass="sidebar-selected" Style="margin-top: 62px" />

            <asp:HyperLink NavigateUrl="~/UI/Dashboard.aspx" ImageUrl="~/ASSETS/ICONS/iconVideos.svg" runat="server" Style="margin-top: 34px" />

            <asp:HyperLink NavigateUrl="#" ImageUrl="~/ASSETS/ICONS/iconProfile.svg" runat="server" Style="margin-top: 49px" />

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

            <main class="main-container">
                <asp:TextBox type="text" runat="server" CssClass="input" placeholder="🔍  Pesquise por artistas" />

                <div class=" d-flex justify-content-around w-100 mt-5">
                    <div  style="width: 40%">
                        <asp:Label runat="server" Text="Podcasts mais assistidos" CssClass="subtitle" />
                        <br />
                        <asp:Image ImageUrl="~/ASSETS/IMG/podcastMostWatched.svg" CssClass="imgpodcast" runat="server" />
                    </div>

                    <div style="width: 40%">
                        <asp:Label runat="server" Text="Podcasts" CssClass="subtitle" />
                        <br />
                        <asp:Image ImageUrl="~/ASSETS/IMG/podcastMostWatched.svg" CssClass="imgpodcast" runat="server" />
                    </div>
                </div>

                <div class="w-100 d-flex justify-content-around mt-5">
                    <div style="width: 40%">
                        <asp:Label runat="server" Text="Para você" CssClass="subtitle" />
                        <div class="d-flex justify-content-around" style="flex-flow: wrap">
                            <asp:Image runat="server" CssClass="img" ImageUrl="~/ASSETS/IMG/glasses.svg" />
                            <asp:Image runat="server" CssClass="img" ImageUrl="~/ASSETS/IMG/art.svg" />
                            <asp:Image runat="server" CssClass="img" ImageUrl="~/ASSETS/IMG/lowCode.svg" />
                            <asp:Image runat="server" CssClass="img" ImageUrl="~/ASSETS/IMG/glasses.svg" />
                            <asp:Image runat="server" CssClass="img" ImageUrl="~/ASSETS/IMG/art.svg" />
                            <asp:Image runat="server" CssClass="img" ImageUrl="~/ASSETS/IMG/lowCode.svg" />
                        </div>
                    </div>

                    <div style="width: 40%">

                        <asp:Label runat="server" Text="Gêneros" CssClass="subtitle" />
                        <div>
                            <div class="d-flex " style="flex-flow: wrap">
                                <asp:Label runat="server" CssClass="p" Text="Front End" />
                                <asp:Label runat="server" CssClass="p" Text="Back End" />
                                <asp:Label runat="server" CssClass="p" Text="DBA" />
                                <asp:Label runat="server" CssClass="p" Text="Data Science" />
                                <asp:Label runat="server" CssClass="p" Text="Mundo Mobile" />
                                <asp:Label runat="server" CssClass="p" Text="High Tech" />
                                <asp:Label runat="server" CssClass="p" Text="Biotec" />
                                <asp:Label runat="server" CssClass="p" Text="Do Junior ao senior" />
                                <asp:Label runat="server" CssClass="p" Text="Cloud" />
                                <asp:Label runat="server" CssClass="p" Text="Deploys da depressão" />
                            </div>

                            <div class="d-flex justify-content-around mt-3" style="flex-flow: wrap">
                                <asp:Image runat="server" CssClass="img2" ImageUrl="~/ASSETS/IMG/deploy.svg" />
                                <asp:Image runat="server" CssClass="img2" ImageUrl="~/ASSETS/IMG/people.svg" />
                                <asp:Image runat="server" CssClass="img2" ImageUrl="~/ASSETS/IMG/Csharp.svg" />
                                <asp:Image runat="server" CssClass="img2" ImageUrl="~/ASSETS/IMG/swift.svg" />
                                <asp:Image runat="server" CssClass="img2" ImageUrl="~/ASSETS/IMG/code.svg" />
                                <asp:Image runat="server" CssClass="img2" ImageUrl="~/ASSETS/IMG/programing.svg" />
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </form>
</body>
</html>
