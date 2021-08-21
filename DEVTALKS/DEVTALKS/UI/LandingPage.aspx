<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="DEVTALKS.UI.LandingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Landing Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
        rel="stylesheet" 
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
        crossorigin="anonymous" />
    <link rel="stylesheet" href="CSS/LandingPage.css" /> 
</head>
<body>
     <form id="form1" runat="server">

        <nav class="navbar">
            <div class="container-lg">
                <asp:Label Text="DEVTALKS" class="fs-2 fw-bold text-white" runat="server"></asp:Label>
                <span>
                    <asp:HyperLink NavigateUrl="#" class="fs-5 btn btnIn" Text="Entrar" runat="server"></asp:HyperLink>
                    <asp:HyperLink NavigateUrl="#" class="btn fs-5 btnUp" Text="Cadastre-se" runat="server"></asp:HyperLink>
                </span>
            </div>
        </nav>

         <main class="container">
            <div class="containerMain">
                 <div class="textMain">
                     <asp:Label Text="Ouça seus podcasts favoritos sobre desenvolvimento a qualquer hora." 
                         runat="server" CssClass="textTitleMain fs-1 " ForeColor="#3A3D7A">
                     </asp:Label><br/><br/>
                     <asp:Label Text="Nossa plataforma é um ambiente de podcast voltado para TI,
                         onde os desenvolvedores podem obter dicas de profissionais para melhor 
                         orientar as decisões. A plataforma foi criada para ajudar os desenvolvedores 
                         indecisos que buscam um mercado melhor, e com o DEVTALKS tudo fica mais fácil." 
                         runat="server" CssClass="textDescriptionMain fs-5" ForeColor="#3A3D7A">
                     </asp:Label>
                     <div class="mt-5 mb-5">
                        <asp:HyperLink NavigateUrl="#" Text="Crie seus podcast" runat="server" CssClass="btn fs-5 btnStart"></asp:HyperLink>
                        <asp:HyperLink NavigateUrl="#" Text="Teste 30 dia Gratis" runat="server" CssClass="btn fs-5 btnTeste"></asp:HyperLink>
                     </div>
                     <asp:Label Text="Tem cadastro na DevTalks? " runat="server" CssClass="fs-5 fw-bolder" ForeColor="#3A3D7A"></asp:Label>
                     <asp:HyperLink NavigateUrl="#" Text="Acesse seu perfil" runat="server" CssClass="fs-5 linkText fw-bolder" ForeColor="#3A3D7A"></asp:HyperLink>
                 </div>
                 <asp:Image ImageUrl="~/ASSETS/IMG/computer.png" runat="server" CssClass="imgComputer"/>
            </div>
        </main>
            
    </form>
</body>
</html>
