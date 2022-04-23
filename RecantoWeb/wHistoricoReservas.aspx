<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wHistoricoReservas.aspx.cs" Inherits="RecantoWeb.wHistoricoReservas" %>

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
            width: 114px;
            height: 251px;
        }
        .auto-style4 {
            width: 272px;
            height: 251px;
        }
        .auto-style5 {
            width: 100%;
            height: 277px;
        }
        .auto-style6 {
            width: 449px;
            height: 251px;
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
                                        <asp:MenuItem NavigateUrl="~/wCadastro.aspx" Text="Cadastrar-se" Value="New Item" Selected="True"></asp:MenuItem>
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
        </p>

            <center>
                <asp:Label ID="lblAcomodacoes" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="True" Font-Size="XX-Large" ForeColor="#666666" Text="Histórico de reservas"></asp:Label>
            </center>
        <p>


                            <asp:Button ID="btnVoltar" runat="server" BackColor="#009999" Font-Bold="True" ForeColor="White" Text="Voltar" Width="72px" BorderStyle="None" Height="36px" PostBackUrl="~/wMinhaConta.aspx" />
        </p>
        <p>
                <asp:Label ID="lblAcomodacoes0" runat="server" Font-Bold="False" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Selecione abaixo o código da reserva e clique em ver detalhes de reserva."></asp:Label>
            &nbsp;


                            <asp:Button ID="btnVerDetalhesReserva" runat="server" BackColor="#006666" Font-Bold="True" ForeColor="White" Text="Ver detalhes da reserva" Width="170px" BorderStyle="None" Height="28px" OnClick="btnVerDetalhesReserva_Click" />
        </p>
        <p>
            <table class="auto-style5" style="border: 2px solid #006666">
                <tr>
                    <td class="auto-style3"><asp:ListBox ID="lstCodigoReserva" runat="server" Height="266px" Width="99px" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#333333">
                        </asp:ListBox>
                    </td>
                    <td class="auto-style4">
            <asp:Image ID="imgChale" runat="server" BorderColor="#006666" BorderWidth="5px" Visible="False" />
                    </td>
                    <td class="auto-style6" style="border: thin double #006666">
                        <asp:Panel ID="pnlDetalhesReserva" runat="server" Height="272px" Visible="False">
                            <asp:Label ID="lblCodigoReserva0" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Larger" ForeColor="#666666" Text="Código da reserva:"></asp:Label>
                            &nbsp;<asp:Label ID="lblCodigoReserva" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Larger" ForeColor="#666666" Text="Reserva"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="lblCategoriaChale0" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Status da reserva:"></asp:Label>
                            &nbsp;<asp:Label ID="lblStatusReserva" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Status da reserva:"></asp:Label>
                            <br />
                            <asp:Label ID="lbl5" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Acomodação:"></asp:Label>
                            &nbsp;<asp:Label ID="lblNomeChale" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Categoria"></asp:Label>
                            <br />
                            <asp:Label ID="lbl03" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Categoria do Chalé:"></asp:Label>
                            &nbsp;<asp:Label ID="lblCategoriaChale" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Categoria"></asp:Label>
                            <br />
                            <asp:Label ID="lblCategoriaChale1" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Descrição:"></asp:Label>
                            &nbsp;<asp:Label ID="lblDescricaoChale" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Descrição"></asp:Label>
                            <br />
                            <asp:Label ID="lblCategoriaChale2" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Check-in:"></asp:Label>
                            &nbsp;<asp:Label ID="lblCheckIn" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="dd/mm/aaaa"></asp:Label>
                            <br />
                            <asp:Label ID="lblCategoriaChale3" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Check-out:"></asp:Label>
                            &nbsp;<asp:Label ID="lblCheckOut" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="dd/mm/aaaa"></asp:Label>
                            <br />
                            <asp:Label ID="lblCategoriaChale5" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Valor diária:"></asp:Label>
                            &nbsp;<asp:Label ID="lblValorDiaria" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="R$ 00,00"></asp:Label>
                            <br />
                            <asp:Label ID="lblCategoriaChale6" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Valor total:"></asp:Label>
                            &nbsp;<asp:Label ID="lblValorTotal" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="R$ 00,00"></asp:Label>
                            <br />
                            <asp:Label ID="lblCategoriaChale7" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Forma de pagamento:"></asp:Label>
                            &nbsp;<asp:Label ID="lblFormaPagamento" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Antecipada/Presencial"></asp:Label>
                            <br />
                            <asp:Button ID="btnCancelarReserva" runat="server" BackColor="#FF5050" BorderStyle="None" Enabled="False" Font-Bold="True" ForeColor="White" Height="28px" OnClick="btnCancelarReserva_Click" Text="Cancelar reserva" ToolTip="Atenção! Ao clicar neste botão a ação não poderá ser desfeita, e sua reserva será cancelada." Visible="False" Width="138px" />
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </p>
        <p>
                            <asp:Label ID="lbl4" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Deseja fazer outra reserva?"></asp:Label>
                            &nbsp;<asp:Button ID="btnVoltar0" runat="server" BackColor="#009999" Font-Bold="True" ForeColor="White" Text="Ver acomodações" Width="140px" BorderStyle="None" Height="28px" PostBackUrl="~/wAcomodacoes.aspx" />
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

    <p>
        &nbsp;</p>

</body>
</html>
