<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wTelaPrincipal.aspx.cs" Inherits="RecantoWeb.wTelaPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .auto-style2 {
            height: 61px;
        }

        .auto-style3 {
            height: 89px;
        }

        .auto-style7 {
            width: 800px;
        }
        .auto-style8 {
            width: 50px;
        }
        .auto-style9 {
            height: 6px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="pnlHeader" runat="server" BackColor="#009999" Height="52px">
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style8">
                            <center>
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Resources/Logo_White-40-40.png" />
                            </center>
                        </td>
                        <td class="auto-style7">
                            <asp:Menu ID="menuPrincipal" runat="server" Orientation="Horizontal">
                                <Items>
                                    <asp:MenuItem NavigateUrl="~/wTelaPrincipal.aspx" Target="lblPousada" Text="A POUSADA" Value="0" Selected="True"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/wAcomodacoes.aspx" Text="ACOMODAÇÕES" Value="1"></asp:MenuItem>
                                    <asp:MenuItem Text="LOCALIZAÇÃO" Value="2" NavigateUrl="~/wLocalizacao.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="FALE CONOSCO" Value="3" NavigateUrl="~/wFaleConosco.aspx"></asp:MenuItem>
                                </Items>
                                <StaticHoverStyle BackColor="#006666" />
                                <StaticMenuItemStyle BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="White" HorizontalPadding="20px" VerticalPadding="15px" />
                                <StaticSelectedStyle BackColor="#006666" BorderStyle="None" />
                            </asp:Menu>
                        </td>
                        <td class="auto-style14">
                            <asp:Button ID="btnSair" runat="server" BackColor="#009999" Font-Bold="True" ForeColor="White" Text="Sair" Width="74px" Enabled="False" Visible="False" OnClick="btnSair_Click1" />
                        </td>
                        <td class="auto-style13">
                            <asp:Menu ID="menuUsuario" runat="server" align="middle" BackColor="#009999" Font-Bold="False" Font-Names="Arial" Font-Size="Smaller" ForeColor="#333333" Orientation="Horizontal">
                                <DynamicHoverStyle BackColor="#E9E9E9" />
                                <DynamicMenuItemStyle BackColor="#DBDBDB" VerticalPadding="5px" />
                                <DynamicMenuStyle VerticalPadding="10px" />
                                <DynamicSelectedStyle ForeColor="Black" />
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
        <asp:Panel ID="Panel3" runat="server" background-size="stratch" BackImageUrl="~/Resources/FundoPaginaPrincipal_1400-461.jpg" Height="454">
            <h1 align="right">&nbsp;</h1>
            <h1></h1>
            <h1 align="center">&nbsp;</h1>
            <h1 align="center">&nbsp;<asp:Label ID="lblBBB" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="XX-Large" ForeColor="White" Text="As paisagens mais paradisíacas"></asp:Label>
            </h1>
            <p align="center">
                <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="X-Large" ForeColor="White" Text="Faça sua reserva e surpreenda-se"></asp:Label>
            </p>
            <p align="center">
                &nbsp;
            </p>
            <p align="center">
                &nbsp;
            </p>
        </asp:Panel>
        <h1 align="center" class="auto-style2">&nbsp;<asp:Label ID="lblPousada" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="True" Font-Size="XX-Large" ForeColor="#666666" Text="A pousada"></asp:Label>
        </h1>
        <h1 align="center" class="auto-style3">&nbsp;<asp:Label ID="lblPousada0" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Medium" ForeColor="#666666" Text="Na pousada Recanto dos papagaios você ira passar pelas experiências mais incríveis da sua vida! Aqui, você encontrará tudo que precisa para relaxar e curtir com sua família. Além dos serviços e refeições espetaculares, você poderá se maravilhar com as nossas paisagens deslumbrantes! Estamos esperando por você!"></asp:Label>
        &nbsp;<asp:Button ID="btnVoltar0" runat="server" BackColor="#009999" Font-Bold="True" ForeColor="White" Text="Ver acomodações" Width="140px" BorderStyle="None" Height="28px" PostBackUrl="~/wAcomodacoes.aspx" />
        </h1>
        <p align="center" class="auto-style9">&nbsp;</p>
        <p align="center">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Resources/ChaleArredores1.jpg" BorderColor="#006666" />
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Resources/ChaleArredores2.jpg" BorderColor="#006666" />
        </p>
        <p align="center">
            <asp:Image ID="Image4" runat="server" ImageUrl="~/Resources/ChaleArredores3.jpg" BorderColor="#006666" />
            <asp:Image ID="Image5" runat="server" ImageUrl="~/Resources/ChaleArredores4.jpg" BorderColor="#006666" />
        </p>
        <p align="center">
            <asp:Image ID="Image6" runat="server" ImageUrl="~/Resources/ChaleArredores5.jpg" BorderColor="#006666" />
            <asp:Image ID="Image7" runat="server" ImageUrl="~/Resources/ChaleArredores6.jpg" BorderColor="#006666" />
        </p>
        <p align="center">
            &nbsp;
            &nbsp;
        </p>
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
