<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wAjuda.aspx.cs" Inherits="RecantoWeb.wAjuda" %>

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
                                    <asp:MenuItem Text="LOCALIZAÇÃO" Value="2" NavigateUrl="~/wLocalizacao.aspx"></asp:MenuItem>
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
                                <DynamicSelectedStyle Font-Bold="True" ForeColor="Black" />
                                <Items>
                                    <asp:MenuItem ImageUrl="~/Resources/Usuario20.png">
                                        <asp:MenuItem NavigateUrl="~/wLogin.aspx" Text="Login" Value="New Item"></asp:MenuItem>
                                        <asp:MenuItem NavigateUrl="~/wCadastro.aspx" Text="Cadastrar-se" Value="New Item"></asp:MenuItem>
                                        <asp:MenuItem Text="Ajuda" Value="New Item" NavigateUrl="~/wAjuda.aspx" Selected="True"></asp:MenuItem>
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

            <center>
                <asp:Label ID="lblAcomodacoes" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="True" Font-Size="XX-Large" ForeColor="#666666" Text="Ajuda"></asp:Label>
            </center>
        <p>
            <asp:Label ID="lblValorDiariaConfirmacao" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Como faço para cancelar uma reserva?"></asp:Label>
                                </p>
        <p>
            <asp:Label ID="lblValorDiariaConfirmacao0" runat="server" Font-Bold="False" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="R: Para cancelar uma reserva que o check-in ainda não foi feito, basta se logar e acessar o menu &quot;Minha conta&quot;, em seguida, clique em &quot;Histórico de  reservas&quot;. Selecione o Código reserva que deseja cancelar e clique em &quot;Cancelar reserva&quot;."></asp:Label>
                                &nbsp;</p>
        <p>
            <asp:Label ID="lblValorDiariaConfirmacao1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Posso levar quantos acompanhantes quiser?"></asp:Label>
                                </p>
        <p>
            <asp:Label ID="lblValorDiariaConfirmacao2" runat="server" Font-Bold="False" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="R: Para os chalés da categoria Standard, o máximo de hóspedes permitido é 4 (quatro). Agora, para os chalés das categorias Superior e Master, o máximo é 3 (três)."></asp:Label>
                                &nbsp;</p>
        <p>
            <asp:Label ID="lblValorDiariaConfirmacao3" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="A estadia para crianças menores de idade serão cobradas?"></asp:Label>
                                </p>
        <p>
            <asp:Label ID="lblValorDiariaConfirmacao4" runat="server" Font-Bold="False" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="R: A cobrança será realizada apenas para crianças a partir dos 6 (seis) anos de idade. Dessa forma, crianças menores de 6 (seis) anos não são cobradas."></asp:Label>
                                &nbsp;</p>
        <p>
            <asp:Label ID="lblValorDiariaConfirmacao5" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Posso levar mais de 1 (um) veículo?"></asp:Label>
                                </p>
        <p>
            <asp:Label ID="lblValorDiariaConfirmacao6" runat="server" Font-Bold="False" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="R: Cada chalé possui apenas uma (1) vaga para acomodação de veículos."></asp:Label>
                                </p>
        <p>
            <asp:Label ID="lblValorDiariaConfirmacao9" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Preciso atualizar um dos meus dados. Como devo proceder?"></asp:Label>
                                </p>
        <p>
            <asp:Label ID="lblValorDiariaConfirmacao8" runat="server" Font-Bold="False" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="R: Para atualizar seus dados, basta se logar e acessar o menu &quot;Minha conta&quot;, em seguida, clique em &quot;Editar dados&quot;. Após atualizar o que deseja, clique em &quot;Salvar&quot;."></asp:Label>
                                </p>
        <p>
            <asp:Label ID="lblValorDiariaConfirmacao7" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Quero excluir minha conta. Como faço?"></asp:Label>
                                &nbsp;</p>
        <p>
            <asp:Label ID="lblValorDiariaConfirmacao11" runat="server" Font-Bold="False" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="R: Para excluir sua conta, basta se logar e acessar o menu &quot;Minha conta&quot;, em seguida, clique em &quot;Excluir minha conta&quot;. Confirme seu e-mail cadastrado e senha, e confirme a excluisão."></asp:Label>
                                </p>
        <p>
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
