<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="DEVTALKS.UI.Chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Chat</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous" />
    <link rel="stylesheet" href="CSS/Chat.css" />
</head>
<body>
    <form id="form1" runat="server">

        <aside class="sidebar">
            <asp:HyperLink runat="server" class="sidebar-title" Text="DTALKS" NavigateUrl="#" />

            <asp:HyperLink NavigateUrl="~/UI/Home.aspx" ImageUrl="~/ASSETS/ICONS/iconHome.svg" runat="server" Style="margin-top: 77px" />

            <asp:HyperLink NavigateUrl="~/UI/Dashboard.aspx" ImageUrl="~/ASSETS/ICONS/iconVideos.svg" runat="server" Style="margin-top: 49px" />

            <asp:HyperLink NavigateUrl="#" ImageUrl="~/ASSETS/ICONS/iconProfileBlu.svg" runat="server" CssClass="sidebar-selected" />

            <asp:HyperLink NavigateUrl="~/UI/CreateAds.aspx" ImageUrl="~/ASSETS/ICONS/iconAds.svg" runat="server" Style="margin-top: 34px" />

            <asp:HyperLink runat="server" NavigateUrl="#" ImageUrl="~/ASSETS/ICONS/iconPlus.svg" Style="margin-top: 49px" />
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

            <main class="w-100 d-flex">
                <div class="pesquisa">
                    <asp:TextBox runat="server" type="text" class="searchbox" placeholder="🔍 Buscar por título do vídeo" />

                    <div class="filtros">
                        <span>
                            <asp:Label runat="server" ForeColor="#888888" Font-Bold="true" Text="Ordenar" />
                            <asp:DropDownList runat="server" CssClass="drop-down-search">
                                <asp:ListItem Text="Ultimos" />
                            </asp:DropDownList>
                        </span>

                        <div style="display: flex; align-items: center">
                            <asp:Label ForeColor="#888888" Font-Bold="true" Text="Adicionar" runat="server" />
                            <asp:Image runat="server" src="https://img.icons8.com/ios-glyphs/30/11c0fa/add--v1.png" />
                        </div>
                    </div>

                    <div class="container-result">
                        <asp:Image runat="server" ImageUrl="~/ASSETS/IMG/glasses.svg" class="resultPesquisa" />
                        <asp:Image runat="server" ImageUrl="~/ASSETS/IMG/glasses.svg" class="resultPesquisa" />
                        <asp:Image runat="server" ImageUrl="~/ASSETS/IMG/glasses.svg" class="resultPesquisa" />
                        <asp:Image runat="server" ImageUrl="~/ASSETS/IMG/glasses.svg" class="resultPesquisa" />
                        <asp:Image runat="server" ImageUrl="~/ASSETS/IMG/glasses.svg" class="resultPesquisa" />
                        <asp:Image runat="server" ImageUrl="~/ASSETS/IMG/glasses.svg" class="resultPesquisa" />
                        <asp:Image runat="server" ImageUrl="~/ASSETS/IMG/glasses.svg" class="resultPesquisa" />
                        <asp:Image runat="server" ImageUrl="~/ASSETS/IMG/glasses.svg" class="resultPesquisa" />
                        <asp:Image runat="server" ImageUrl="~/ASSETS/IMG/glasses.svg" class="resultPesquisa" />
                    </div>
                </div>

                <div class="content">
                    <iframe width="100%" height="80%"
                        src="https://www.youtube.com/embed/DiXbJL3iWVs"
                        title="YouTube video player"
                        frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen
                        style="border-radius: 10px"></iframe>

                    <div class="d-flex justify-content-between mt-4">
                        <asp:Label Text="Visualização - 38.500" runat="server" />

                        <span>
                            <asp:Button Text="Compartilhar" runat="server" CssClass="podcast-button" />
                            <asp:Button Text="Editar" runat="server" CssClass="podcast-button" />
                        </span>
                    </div>
                </div>

                <div class="profile">
                    <asp:Image ImageUrl="~/ASSETS/IMG/imgProfile.svg" runat="server" CssClass="align-self-center" Width="30%" />

                    <asp:Label Text="Carla Lopez" runat="server" Font-Bold="true" Font-Size="Larger" class="align-self-center" />

                    <asp:Label Text="Artista" runat="server" Font-Bold="true" Font-Size="X-Small" ForeColor="#888888" class="align-self-center"/>


                    <asp:Label runat="server" Text="Programadora, DBA, especialista em engenharia de dados, leitora de quadrinhos, 
                        entusiasta no front end, comentarista de tecnologia"
                        Style="line-height: 1" Font-Size="Small" />


                    <span class="align-self-center mt-5">
                        <asp:Image runat="server" ImageUrl="~/ASSETS/IMG/facebook.svg" />
                        <asp:Image runat="server" ImageUrl="~/ASSETS/IMG/instagram.svg" />
                        <asp:Image runat="server" ImageUrl="~/ASSETS/IMG/twitter.svg" />
                    </span>

                    <hr />

                    <span>
                        <asp:Label runat="server" ForeColor="#888888" Font-Bold="true" Text="Telefone" />
                        <asp:Label runat="server" Text="(31) 99999-9999" class="ms-3" />
                    </span>

                    <span>
                        <asp:Label runat="server" ForeColor="#888888" Font-Bold="true" Text="Email:" />
                        <asp:Label runat="server" Text="carlalopes@gmail.com" class="ms-3" />
                    </span>
                </div>
        </main>

        </div>

    </form>
</body>
</html>
