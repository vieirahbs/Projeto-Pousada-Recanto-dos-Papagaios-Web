<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wLogin.aspx.cs" Inherits="RecantoWeb.wLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 800px;
        }
        .auto-style2 {
            width: 62px;
        }
    
        .auto-style5 {
            height: 91px;
            width: 574px;
        }
        .auto-style6 {
            width: 616px;
            height: 327px;
            margin-bottom: 0px;
        }
        .auto-style7 {
            height: 91px;
            width: 672px;
        }
        .auto-style8 {
            width: 840px;
            height: 333px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="pnlHeader" runat="server" BackColor="#009999" Height="52px">
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style12">
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
                        <td class="auto-style2">
                            <asp:Button ID="btnSair" runat="server" BackColor="#009999" Font-Bold="True" ForeColor="White" Text="Sair" Width="74px" Enabled="False" Visible="False" />
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

        <center>
            <asp:Label ID="lblAcomodacoes" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="XX-Large" ForeColor="#666666" Text="Entrar"></asp:Label>
        </center>
        <p>
            &nbsp;<table class="auto-style8">
            <tr>
                <td class="auto-style7"></td>

                <td class="auto-style5" style="border: thin solid #006666; background-color: #EFEFEF">
                    <center class="auto-style6">
                        <br />
                        <asp:Label ID="lblEntrar5" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Usuário:"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtUsuario" runat="server" Width="240px"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp;
                        <asp:Label ID="lblEntrar6" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Senha:"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtSenha" runat="server" Width="240px" TextMode="Password"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnEntrar" runat="server" BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="35px" Text="Entrar" Width="251px" OnClick="btnEntrar_Click" />

            &nbsp;&nbsp;

                        <br />
                        <br />
                        &nbsp;
                        <asp:Label ID="lblEntrar4" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Small" ForeColor="#666666" Text="Esqueceu a senha? Entre em contato conosco pelo telefone (11) 21234-5678 para recuperá-la."></asp:Label>
                        <br />
            <asp:Label ID="lblEntrar7" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Small" ForeColor="#CCCCCC" Text="__________________________________________________________________________"></asp:Label>
                        <br />
                        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblEntrar2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Small" ForeColor="#666666" Text="Ainda não tem cadastro?"></asp:Label>
                        <br />
                        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDirecionaParaCadastro" runat="server" BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="37px" PostBackUrl="~/wCadastro.aspx" Text="Crie sua conta aqui" Width="252px" />
                        <br />

                    </center>
                </td>
                <td class="auto-style2"></td>
            </tr>
        </table>
    &nbsp;&nbsp;</p>
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
