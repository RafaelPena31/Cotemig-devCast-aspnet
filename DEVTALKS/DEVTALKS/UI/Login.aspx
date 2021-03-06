<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DEVTALKS.UI.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link rel="stylesheet" href="CSS/LoginAndSigup.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
        <div class="form">
            <h1 class="top">Login</h1>
            <div class="container">

                <asp:Label Text="Usuário" runat="server"/>
                <br />
                <asp:TextBox runat="server" ID="txtEmail" CssClass="input" type="text"/>
                
                <br /> <br />  <br /> 

                <asp:Label runat="server" Text="Senha" />
                <br />
                <asp:TextBox runat="server" CssClass="input" ID="txtPassword" type="password" /><br />

                <div style="margin-top: 32px">
                    <asp:Button CssClass="button" ID="btnLogin" OnClick="btnLogin_Click" Text="Login" runat="server" style="margin-right: 20px"/>
                    <asp:LinkButton runat="server"  CssClass="button" PostBackUrl="~/UI/Sigup.aspx" Text="Cadastrar uma conta"/>
                </div>
                <h3><asp:HyperLink runat="server" style="color:blue">Entrar com o Facebook</asp:HyperLink></h3>
            </div>
        </div>
    </div>
    <div class="content">
        <div>
            <h2>Para você</h2>
            <div class="imagensVoce">
                <asp:Image runat="server" CssClass="img" ImageUrl="~/ASSETS/IMG/glasses.svg" />
                <asp:Image runat="server" CssClass="img" ImageUrl="~/ASSETS/IMG/art.svg" />
                <asp:Image runat="server" CssClass="img" ImageUrl="~/ASSETS/IMG/lowCode.svg" />
                <asp:Image runat="server" CssClass="img" ImageUrl="~/ASSETS/IMG/glasses.svg" />
                <asp:Image runat="server" CssClass="img" ImageUrl="~/ASSETS/IMG/art.svg" />
                <asp:Image runat="server" CssClass="img" ImageUrl="~/ASSETS/IMG/lowCode.svg" />
            </div>
        </div>
        <div>
            <h2>Gêneros</h2>
            <div class="generos">
                <asp:Label runat="server" CssClass="p" Text="Front End" />
                <asp:Label runat="server" CssClass="p" Text="Back End"/>
                <asp:Label runat="server" CssClass="p" Text="DBA" />
                <asp:Label runat="server" CssClass="p" Text="Data Science" />
                <asp:Label runat="server" CssClass="p" Text="Mundo Mobile" />
                <asp:Label runat="server" CssClass="p" Text="High Tech" />
                <asp:Label runat="server" CssClass="p" Text="Biotec" />
                <asp:Label runat="server" CssClass="p" Text="Do Junior ao senior" />
                <asp:Label runat="server" CssClass="p" Text="Cloud" />
                <asp:Label runat="server" CssClass="p" Text="Deploys da depressão"/>
            </div>
            <div class="imagensGenero">
                <asp:Image runat="server" CssClass="img2" ImageUrl="~/ASSETS/IMG/deploy.svg" />
                <asp:Image runat="server" CssClass="img2" ImageUrl="~/ASSETS/IMG/people.svg" />
                <asp:Image runat="server" CssClass="img2" ImageUrl="~/ASSETS/IMG/Csharp.svg" />
                <asp:Image runat="server" CssClass="img2" ImageUrl="~/ASSETS/IMG/swift.svg" />
                <asp:Image runat="server" CssClass="img2" ImageUrl="~/ASSETS/IMG/code.svg" />
                <asp:Image runat="server" CssClass="img2" ImageUrl="~/ASSETS/IMG/programing.svg" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
