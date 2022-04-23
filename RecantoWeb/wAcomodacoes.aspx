<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wAcomodacoes.aspx.cs" Inherits="RecantoWeb.wAcomodacoes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }

        .auto-style16 {
            width: 100%;
            height: 256px;
        }

        .auto-style15 {
            height: 77px;
            width: 883px;
        }
        .auto-style17 {
            width: 800px;
        }
        .auto-style18 {
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
                        <td class="auto-style18">
                            <center>
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Resources/Logo_White-40-40.png" />
                            </center>
                        </td>
                        <td class="auto-style17">
                            <asp:Menu ID="menuPrincipal" runat="server" Orientation="Horizontal">
                                <Items>
                                    <asp:MenuItem NavigateUrl="~/wTelaPrincipal.aspx" Target="lblPousada" Text="A POUSADA" Value="0"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/wAcomodacoes.aspx" Text="ACOMODAÇÕES" Value="1" Selected="True"></asp:MenuItem>
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
        <p class="auto-style1">

            <center>
                <asp:Label ID="lblAcomodacoes" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="True" Font-Size="XX-Large" ForeColor="#666666" Text="Acomodações"></asp:Label>
                <br />
                <br />
            <asp:Label ID="lblAcomodacoes1" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666" Text="Conheça nossas acomodações Standard, Superior e Master"></asp:Label>
            </center>
        <p class="auto-style1">
            <asp:Label ID="lbStandard" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" ForeColor="#666666" Text="Standard"></asp:Label>
        </p>


        <p>
            <table id="tbChale1" class="auto-style16" style="border: medium double #006666">
                <tr>
                    <td class="auto-style15" style="background-image: url('Resources/Chale1.jpg'); background-repeat: no-repeat; background-position: center center"></td>
                    <td class="auto-style15">
                        <center>
                            <asp:Label ID="lblNomeChale1" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Larger" ForeColor="#666666" Text="Chalé 1"></asp:Label>
                            <br />
                            <asp:Label ID="lblDescricao1Chale1" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666" Text="4 hóspedes - 2 quartos"></asp:Label>
                            <br />
                            <asp:Label ID="lblDescricao2Chale1" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666">Camas double - 1 banheiro</asp:Label>
                            <br />
                            <asp:Button ID="btnReservarChale1" runat="server" BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="40px" OnClick="btnReservarChale1_Click" PostBackUrl="~/wDadosReserva.aspx" Text="Reservar" Width="126px" />
                            <br />
                            <br />
                        </center>
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </p>
        <br />
        <table id="tbChale2" class="auto-style16" style="border: medium double #006666">
            <tr>
                <td class="auto-style15" style="background-image: url('Resources/Chale2.jpg'); background-repeat: no-repeat; background-position: center center"></td>
                <td class="auto-style15">
                    <center>
                        <asp:Label ID="lblNomeChale2" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Larger" ForeColor="#666666" Text="Chalé 2"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescricao1Chale2" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666" Text="4 hóspedes - 2 quartos"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescricao2Chale2" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666">Camas double - 1 banheiro</asp:Label>
                        <br />
                        <asp:Button ID="btnReservarChale2" runat="server" BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="40px" OnClick="btnReservarChale2_Click" PostBackUrl="~/wDadosReserva.aspx" Text="Reservar" Width="126px" />
                        <br />
                        <br />
                    </center>
                    <br />
                    <br />
                </td>
            </tr>
        </table>


        <p>
            &nbsp;
        </p>
        <table id="tbChale3" class="auto-style16" style="border: medium double #006666">
            <tr>
                <td class="auto-style15" style="background-image: url('Resources/Chale3.jpg'); background-repeat: no-repeat; background-position: center center"></td>
                <td class="auto-style15">
                    <center>
                        <asp:Label ID="lblNomeChale3" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Larger" ForeColor="#666666" Text="Chalé 3"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescricao1Chale3" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666" Text="4 hóspedes - 2 quartos"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescricao2Chale3" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666">Camas double - 1 banheiro</asp:Label>
                        <br />
                        <asp:Button ID="btnReservarChale3" runat="server" BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="40px" OnClick="btnReservarChale3_Click" PostBackUrl="~/wDadosReserva.aspx" Text="Reservar" Width="126px" />
                        <br />
                    </center>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <p>
            &nbsp;
        </p>
        <table id="tbChale4" class="auto-style16" style="border: medium double #006666">
            <tr>
                <td class="auto-style15" style="background-image: url('Resources/Chale4.jpg'); background-repeat: no-repeat; background-position: center center"></td>
                <td class="auto-style15">
                    <center>
                        <asp:Label ID="lblNomeChale4" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Larger" ForeColor="#666666" Text="Chalé 4"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescricao1Chale4" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666" Text="4 hóspedes - 2 quartos"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescricao2Chale4" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666">Camas double - 1 banheiro</asp:Label>
                        <br />
                        <asp:Button ID="btnReservarChale4" runat="server" BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="40px" OnClick="btnReservarChale4_Click" PostBackUrl="~/wDadosReserva.aspx" Text="Reservar" Width="126px" />
                        <br />
                        <br />
                    </center>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <p>
            &nbsp;
        </p>
        <table id="tbChale5" class="auto-style16" style="border: medium double #006666">
            <tr>
                <td class="auto-style15" style="background-image: url('Resources/Chale5.jpg'); background-repeat: no-repeat; background-position: center center"></td>
                <td class="auto-style15">
                    <center>
                        <asp:Label ID="lblNomeChale5" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Larger" ForeColor="#666666" Text="Chalé 5"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescricao1Chale5" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666" Text="4 hóspedes - 2 quartos"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescricao2Chale5" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666">Camas double - 1 banheiro</asp:Label>
                        <br />
                        <asp:Button ID="btnReservarChale5" runat="server" BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="40px" OnClick="btnReservarChale5_Click" PostBackUrl="~/wDadosReserva.aspx" Text="Reservar" Width="126px" />
                        <br />
                        <br />
                    </center>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <p>
            &nbsp;
        </p>
        <table id="tbChale6" class="auto-style16" style="border: medium double #006666">
            <tr>
                <td class="auto-style15" style="background-image: url('Resources/Chale6.jpg'); background-repeat: no-repeat; background-position: center center"></td>
                <td class="auto-style15">
                    <center>
                        <asp:Label ID="lblNomeChale6" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Larger" ForeColor="#666666" Text="Chalé 6"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescricao1Chale6" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666" Text="4 hóspedes - 2 quartos"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescricao2Chale6" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666">Camas double - 1 banheiro</asp:Label>
                        <br />
                        <asp:Button ID="btnReservarChale6" runat="server" BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="40px" OnClick="btnReservarChale6_Click" PostBackUrl="~/wDadosReserva.aspx" Text="Reservar" Width="126px" />
                        <br />
                        <br />
                        <br />
                    </center>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <p>
            &nbsp;
        </p>
        <p class="auto-style1">
            <asp:Label ID="lbSuperior" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" ForeColor="#666666" Text="Superior"></asp:Label>
        </p>
        <table id="tbChale7" class="auto-style16" style="border: medium double #006666">
            <tr>
                <td class="auto-style15" style="background-image: url('Resources/Chale7.jpg'); background-repeat: no-repeat; background-position: center center"></td>
                <td class="auto-style15">
                    <center>
                        <asp:Label ID="lblNomeChale7" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Larger" ForeColor="#666666" Text="Chalé 7"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescricao1Chale7" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666" Text="4 hóspedes - 2 quartos"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescricao2Chale7" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666">Camas double - 1 banheiro</asp:Label>
                        <br />
                        <asp:Button ID="btnReservarChale7" runat="server" BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="40px" OnClick="btnReservarChale7_Click" PostBackUrl="~/wDadosReserva.aspx" Text="Reservar" Width="126px" />
                        <br />
                        <br />
                        <br />
                    </center>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <p>
            &nbsp;
        </p>
        <table id="tbChale8" class="auto-style16" style="border: medium double #006666">
            <tr>
                <td class="auto-style15" style="background-image: url('Resources/Chale8.jpg'); background-repeat: no-repeat; background-position: center center"></td>
                <td class="auto-style15">
                    <center>
                        <asp:Label ID="lblNomeChale8" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Larger" ForeColor="#666666" Text="Chalé 8"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescricao1Chale8" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666" Text="4 hóspedes - 2 quartos"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescricao2Chale8" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666">Camas double - 1 banheiro</asp:Label>
                        <br />
                        <asp:Button ID="btnReservarChale8" runat="server" BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="40px" OnClick="btnReservarChale8_Click" PostBackUrl="~/wDadosReserva.aspx" Text="Reservar" Width="126px" />
                        <br />
                        <br />
                    </center>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <p>
            &nbsp;
        </p>
        <p class="auto-style1">
            <asp:Label ID="lblMaster" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" ForeColor="#666666" Text="Master"></asp:Label>
        </p>
        <table id="tbChale9" class="auto-style16" style="border: medium double #006666">
            <tr>
                <td class="auto-style15" style="background-image: url('Resources/Chale9.jpg'); background-repeat: no-repeat; background-position: center center"></td>
                <td class="auto-style15">
                    <center>
                        <asp:Label ID="lblNomeChale9" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Larger" ForeColor="#666666" Text="Chalé 9"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescricao1Chale9" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666" Text="4 hóspedes - 2 quartos"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescricao2Chale9" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666">Camas double - 1 banheiro</asp:Label>
                        <br />
                        <asp:Button ID="btnReservarChale9" runat="server" BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="40px" OnClick="btnReservarChale9_Click" PostBackUrl="~/wDadosReserva.aspx" Text="Reservar" Width="126px" />
                        <br />
                        <br />
                    </center>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <p>
            &nbsp;
        </p>
        <table id="tbChale10" class="auto-style16" style="border: medium double #006666">
            <tr>
                <td class="auto-style15" style="background-image: url('Resources/Chale10.jpg'); background-repeat: no-repeat; background-position: center center"></td>
                <td class="auto-style15">
                    <center>
                        <asp:Label ID="lblNomeChale10" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Larger" ForeColor="#666666" Text="Chalé 10"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescricao1Chale10" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666" Text="4 hóspedes - 2 quartos"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescricao2Chale10" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="#666666">Camas double - 1 banheiro</asp:Label>
                        <br />
                        <asp:Button ID="btnReservarChale10" runat="server" BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="40px" OnClick="btnReservarChale10_Click" PostBackUrl="~/wDadosReserva.aspx" Text="Reservar" Width="126px" />
                        <br />
                    </center>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <p>
            <asp:RadioButtonList ID="RadioBtnList" runat="server" RepeatDirection="Horizontal" Visible="False">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p>
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
