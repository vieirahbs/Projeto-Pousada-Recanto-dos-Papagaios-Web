<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wMinhaConta.aspx.cs" Inherits="RecantoWeb.wMinhaConta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 790px;
        }

        .auto-style2 {
            width: 62px;
        }

        .auto-style3 {
            margin-left: 40px;
        }

        .auto-style4 {
            width: 256px;
        }
        .auto-style5 {
            width: 4px;
        }
        .auto-style6 {
            width: 759px;
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
                        <td>
                            <asp:Button ID="btnSair" runat="server" BackColor="#009999" Font-Bold="True" ForeColor="White" Text="Sair" Width="74px" Enabled="False" Visible="False" OnClick="btnSair_Click" />
                        </td>
                        <td class="auto-style13">
                            <asp:Menu ID="menuUsuario" runat="server" align="middle" BackColor="#009999" Font-Bold="False" Font-Names="Arial" Font-Size="Smaller" ForeColor="#333333" Orientation="Horizontal">
                                <DynamicHoverStyle BackColor="#E9E9E9" />
                                <DynamicMenuItemStyle BackColor="#DBDBDB" VerticalPadding="5px" />
                                <DynamicMenuStyle VerticalPadding="10px" />
                                <DynamicSelectedStyle Font-Bold="True" />
                                <Items>
                                    <asp:MenuItem ImageUrl="~/Resources/Usuario20.png">
                                        <asp:MenuItem NavigateUrl="~/wLogin.aspx" Text="Login" Value="New Item" Selected="True"></asp:MenuItem>
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

        <center>
            <asp:Label ID="lblAcomodacoes" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="True" Font-Size="XX-Large" ForeColor="#666666" Text="Minha conta"></asp:Label>
        </center>
        <p class="auto-style3">

            <asp:Button ID="btnVerHistorico" runat="server" BackColor="#009999" Font-Bold="True" ForeColor="White" Text="Ver histórico de reservas" Width="179px" BorderStyle="None" Height="36px" PostBackUrl="~/wHistoricoReservas.aspx" />

            <p class="auto-style3">
                &nbsp;<asp:Label ID="lbStandard0" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" ForeColor="#666666" Text="Dados pessoais"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnEditarHospede" runat="server" BackColor="#006666" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="35px" Text="Editar dados" Width="125px" OnClick="btnEditarHospede_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style6">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3" style="border: medium double #006666; background-color: #EEEEEE">
                        <asp:Label ID="lblNome" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="Nome completo:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtNome" runat="server" Width="318px" Enabled="False"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblCEP6" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="E-mail:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtEmail" runat="server" Width="318px" Enabled="False"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblCEP3" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="CPF:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtCPF" runat="server" Width="188px" Enabled="False"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblCEP4" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="Data de Nascimento:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtDataNascimento" runat="server" Width="188px" Enabled="False"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblCEP" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="CEP:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtCEP" runat="server" Width="188px" Enabled="False"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblCEP0" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="Endereço:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtEndereco" runat="server" Width="318px" Enabled="False"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblCEP1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="Nº:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtNumeroResidencial" runat="server" Width="75px" Enabled="False"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblCEP2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="Complemento:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtComplemento" runat="server" Width="75px" Enabled="False"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblCEP13" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="Bairro:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtBairro" runat="server" Width="125px" Enabled="False"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblCEP14" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="Cidade:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtCidade" runat="server" Width="120px" Enabled="False"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblCEP15" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="UF:"></asp:Label>
                        <br />
                        <asp:DropDownList ID="cmbUF" runat="server" Enabled="False">
                        </asp:DropDownList>
                        <br />
                        <asp:Label ID="lblCEP16" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="País:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtPais" runat="server" Width="75px" Enabled="False"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblCEP17" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="Usuário"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtUsuario" runat="server" Width="161px" Enabled="False"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="btnSalvarCadastro" runat="server" BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="35px" Text="Salvar" Width="110px" Enabled="False" OnClick="btnSalvarCadastro_Click" />
                        &nbsp;
                        <asp:Button ID="btnCancelarAtualizacao" runat="server" BackColor="#FF5050" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="35px" Text="Cancelar" Width="110px" Enabled="False" OnClick="btnCancelarAtualizacao_Click" />
                        <br />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
            &nbsp;
            &nbsp;<p>
                &nbsp;
                        <asp:Button ID="btnExcluirMinhaConta" runat="server" BackColor="Silver" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="White" Height="25px" Text="Excluir minha conta" Width="158px" ToolTip="ATENÇÃO! Ao excluir sua conta a ação não poderá ser desfeita." PostBackUrl="~/wExcluirConta.aspx" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtConfirmacao" runat="server" BorderStyle="None"></asp:TextBox>
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
