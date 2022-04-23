<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wLocalizacao.aspx.cs" Inherits="RecantoWeb.wLocalizacao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 800px;
        }
        .auto-style2 {
            width: 50px;
        }
        .auto-style3 {
            height: 107px;
        }
        .auto-style4 {
            margin-left: 191px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="pnlHeader" runat="server" BackColor="#009999" Height="52px">
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style2">
                            <center>
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Resources/Logo_White-40-40.png" />
                            </center>
                        </td>
                        <td class="auto-style1">
                            <asp:Menu ID="menuPrincipal" runat="server" Orientation="Horizontal">
                                <Items>
                                    <asp:MenuItem NavigateUrl="~/wTelaPrincipal.aspx" Target="lblPousada" Text="A POUSADA" Value="0"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/wAcomodacoes.aspx" Text="ACOMODAÇÕES" Value="1"></asp:MenuItem>
                                    <asp:MenuItem Text="LOCALIZAÇÃO" Value="2" Selected="True" NavigateUrl="~/wLocalizacao.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="FALE CONOSCO" Value="3" NavigateUrl="~/wFaleConosco.aspx"></asp:MenuItem>
                                </Items>
                                <StaticHoverStyle BackColor="#006666" />
                                <StaticMenuItemStyle BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="White" HorizontalPadding="20px" VerticalPadding="15px" />
                                <StaticSelectedStyle BackColor="#006666" BorderStyle="None" />
                            </asp:Menu>
                        </td>
                        <td class="auto-style14">
                            <asp:Button ID="btnSair" runat="server" BackColor="#009999" Font-Bold="True" ForeColor="White" Text="Sair" Width="74px" Enabled="False" Visible="False" OnClick="btnSair_Click" />
                        </td>
                        <td class="auto-style13">
                            <asp:Menu ID="menuUsuario" runat="server" align="middle" BackColor="#009999" Font-Bold="False" Font-Names="Arial" Font-Size="Smaller" ForeColor="#333333" Orientation="Horizontal">
                                <DynamicHoverStyle BackColor="#E9E9E9" />
                                <DynamicMenuItemStyle BackColor="#DBDBDB" VerticalPadding="5px" />
                                <DynamicMenuStyle VerticalPadding="10px" />
                                <Items>
                                    <asp:MenuItem ImageUrl="~/Resources/Usuario20.png">
                                        <asp:MenuItem NavigateUrl="~/wLogin.aspx" Text="Login" Value="New Item"></asp:MenuItem>
                                        <asp:MenuItem NavigateUrl="~/wCadastro.aspx" Text="Cadastrar-se" Value="New Item"></asp:MenuItem>
                                        <asp:MenuItem Text="Ajuda" Value="New Item" NavigateUrl="~/wAjuda.aspx"></asp:MenuItem>
                                    </asp:MenuItem>
                                </Items>
                                <LevelMenuItemStyles>
                                    <asp:MenuItemStyle BackColor="#009999" Font-Underline="False" />
                                </LevelMenuItemStyles>
                                <LevelSelectedStyles>
                                    <asp:MenuItemStyle BackColor="#006666" Font-Underline="False" />
                                </LevelSelectedStyles>
                                <LevelSubMenuStyles>
                                    <asp:SubMenuStyle BackColor="#009999" Font-Underline="False" />
                                </LevelSubMenuStyles>
                                <StaticHoverStyle BackColor="#006666" />
                                <StaticMenuItemStyle BackColor="#009999" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="White" />
                                <StaticSelectedStyle BackColor="#006666" />
                            </asp:Menu>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
        <p>
            &nbsp;
        </p>

        <center class="auto-style3">
            <asp:Label ID="lblAcomodacoes" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="True" Font-Size="XX-Large" ForeColor="#666666" Text="Localização"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="lblPousada0" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Medium" ForeColor="#666666" Text="A pousada Recanto dos Papagaios  é localizada no interior de São Paulo, próximo à divisa com o estado do Rio de Janeiro, na Estr. do Sítio, 22 - Morada Verde."></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblPousada1" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Medium" ForeColor="#666666" Text="Para navegar pelo mapa"></asp:Label>
        &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="18px" NavigateUrl="https://www.google.com.br/maps/place/Estr.+do+S%C3%ADtio,+131+-+Cantagalo,+Barra+Mansa+-+RJ,+27350-580/@-22.5448368,-44.2003024,19z/data=!3m1!4b1!4m5!3m4!1s0x9e9c70ba880423:0xd3fea2fc1014bb82!8m2!3d-22.544838!4d-44.1997552" Target="_blank" Width="96px">Clique aqui</asp:HyperLink>
        </center>
        <p>
            &nbsp;<table style="width: 100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <br />
                        <asp:Image ID="Image2" runat="server" BorderColor="#006666" BorderStyle="Solid" BorderWidth="3px" CssClass="auto-style4" ImageUrl="~/Resources/Localizacao.jpg" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p>
            &nbsp;</p>
        <footer>
            <asp:Panel ID="Panel1" runat="server" BackColor="Silver">
                <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem Text="Politica de privacidade" Value="Politica de privacidade" NavigateUrl="~/wPoliticaDePrivacidade.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Termos de uso" Value="Termos de uso" NavigateUrl="~/wTermosDeUso.aspx"></asp:MenuItem>
                    </Items>
                    <LevelSelectedStyles>
                        <asp:MenuItemStyle Font-Underline="False" />
                    </LevelSelectedStyles>
                    <StaticHoverStyle BackColor="#999999" />
                    <StaticMenuItemStyle BackColor="Silver" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Smaller" ForeColor="White" HorizontalPadding="50px" VerticalPadding="15px" />
                    <StaticSelectedStyle BackColor="#999999" />
                </asp:Menu>
            </asp:Panel>
        </footer>
    </form>
</body>
</html>
