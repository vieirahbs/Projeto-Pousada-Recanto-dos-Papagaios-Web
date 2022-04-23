<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wDadosReserva.aspx.cs" Inherits="RecantoWeb.wDadosReserva" %>

<%@ PreviousPageType VirtualPath="~/wAcomodacoes.aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .auto-style24 {
            height: 809px;
            width: 318px;
        }

        .auto-style26 {
            width: 785px;
        }

        .auto-style27 {
            width: 50px;
        }

        .auto-style28 {
            width: 130px;
        }

        .auto-style29 {
            height: 473px;
            width: 367px;
        }
        .auto-style30 {
            width: 302px;
            height: 818px;
        }
        .auto-style31 {
            width: 518px;
            height: 818px;
        }
        .auto-style32 {
            width: 75%;
        }
        .auto-style33 {
            width: 382px;
            height: 818px;
        }
        .auto-style34 {
            height: 147px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="pnlHeader" runat="server" BackColor="#009999" Height="52px">
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style27">
                            <center>
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Resources/Logo_White-40-40.png" />
                            </center>
                        </td>
                        <td class="auto-style26">
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
                        <td class="auto-style28">
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <center>
                <asp:Label ID="lblAcomodacoes" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="True" Font-Size="XX-Large" ForeColor="#666666" Text="Dados de reserva"></asp:Label>
                <br />
                <br />
                            <asp:Label ID="lblTipoChale26" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="XX-Large" ForeColor="#666666" Text="Selecione abaixo os detalhes de sua reserva"></asp:Label>
                <br />
            </center>
        <br />
        <table class="auto-style32" style="border: thin solid #006666; background-color: #F0F0F0">
            <tr>
                <td aria-busy="False" class="auto-style30" style="border: thin double #006666">
                    <br />
                <asp:Image ID="imgChale" runat="server" ImageUrl="~/Resources/ChalesDetalhes1.jpg" BorderColor="#006666" BorderStyle="Solid" BorderWidth="5px" />
                    <br />
                    <br />
                    <asp:Image ID="imgInterior1" runat="server" ImageUrl="~/Resources/StandardInterior1.jpg" BorderColor="#006666" BorderStyle="Solid" BorderWidth="5px" />
                    <br />
                    <br />
                    <br />
                <asp:Image ID="imgInterior2" runat="server" ImageUrl="~/Resources/StandardInterior2.jpg" BorderColor="#006666" BorderStyle="Solid" BorderWidth="5px" />
                    <br />
                    <br />
                    <br />
                    <asp:Image ID="ImgInterior3" runat="server" ImageUrl="~/Resources/StandardInterior3.jpg" BorderColor="#006666" BorderStyle="Solid" BorderWidth="5px" />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style31" style="border: thin double #006666">
                        <center class="auto-style24">
                            <asp:Label ID="lblTipoChale" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Larger" ForeColor="#666666" Text="Tipo do Chalé"></asp:Label>
                            <br />
                            <asp:Label ID="lblDescricaoChale" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Small" ForeColor="#666666" Text="Descrição" BorderStyle="None" Height="16px"></asp:Label>
                            <br />
                            <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Larger" ForeColor="Silver" Text="___________________"></asp:Label>
                            <br />
                            <br />
                            <asp:Label runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Valor" ID="lblValorDiaria"></asp:Label>
                            &nbsp;<asp:Label ID="lblDescricaoChale0" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Small" ForeColor="#666666" Text="/Diária" BorderStyle="None"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="lblTipoChale23" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Selecione a data de check-in"></asp:Label>
                            <br />
                            <asp:Calendar ID="calendarCheckIn" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" OnSelectionChanged="calendarCheckIn_SelectionChanged">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                            <br />
                            <asp:Label ID="lblTipoChale24" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Selecione a data de check-out"></asp:Label>
                            <br />
                            <asp:Calendar ID="calendarCheckOut" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" OnSelectionChanged="calendarCheckOut_SelectionChanged">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                            <br />
                            <asp:Label runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Selecione a forma de pagamento:" ID="Label6"></asp:Label>
                            <br />
                            <asp:DropDownList ID="ddlFormaPagamento" runat="server" Width="184px">
                            </asp:DropDownList>
                            <br />
                            <br />
                            <asp:Label runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Selecione a quantidade de acompanhantes:" ID="Label5"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="lblTipoChale16" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Adultos:"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtQtdAdulto" runat="server" Width="40px" TextMode="Number"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblTipoChale18" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Crianças:"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtQtdCrianca" runat="server" Width="40px" TextMode="Number"></asp:TextBox>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblDescriçãoPagamento3" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Small" ForeColor="#666666" Text="/acima de  6 anos"></asp:Label>
                            <br />
                            <br />
                            <asp:Button ID="btnSalvarReserva" runat="server" BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="36px" Text="Salvar" Width="166px" OnClick="btnSalvarReserva_Click" />
                        </center>
                    </td>
                <td class="auto-style33" style="background-position: center center; border: thin double #006666; background-image: url('Resources/ChaleReserva-1000-382.jpg'); background-repeat: no-repeat;">

                        <asp:Panel ID="pnlDescricao" runat="server" BackColor="#EBEBEB" Height="818px" Width="377px">
                            <center class="auto-style29">
                                <asp:Label ID="lblTituloConfirmacao" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Larger" ForeColor="Blue" Text="*Confira as informações da reserva"></asp:Label>
                                <br />
                                <br />
                                <br />
                                <asp:Label ID="lblTipoChaleConfirmacao" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Larger" ForeColor="#666666" Text="Tipo do Chalé"></asp:Label>
                                <br />
                                <asp:Label ID="lblDescricaoChaleConfirmacao" runat="server" BorderStyle="None" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Small" ForeColor="#666666" Height="16px" Text="Descrição"></asp:Label>
                                <br />
                                <asp:Label ID="lbllinha1" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Larger" ForeColor="Silver" Text="________________________"></asp:Label>
                                <br />
                                <br />
                                <br />
                                <asp:Label ID="lblTipoChale11" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Larger" ForeColor="#666666" Text="Informação para pagamento:"></asp:Label>
                                <br />
                                <asp:Label ID="lblDescricaoPagamento" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Small" ForeColor="#666666" Text="Descrição do pagamento"></asp:Label>
                                <br />
                                <br style="padding-right: 60px" />
                                <br />
                                <asp:Label ID="lbl456" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Small" ForeColor="#666666" Text="Valor /diária:"></asp:Label>
                                &nbsp;<asp:Label ID="lblValorDiariaConfirmacao" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Valor diária"></asp:Label>
                                <br />
                                <asp:Label ID="lb1156" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Small" ForeColor="#666666" Text="Valor total:" ToolTip="Aqui você informar como o pagamento será realizado"></asp:Label>
                                &nbsp;<asp:Label ID="lblValorTotal" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Valor total"></asp:Label>
                                <br />
                                <br />
                                <asp:Button ID="btnCancelarReserva" runat="server" BackColor="#FF5050" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="36px" Text="Voltar" Width="87px" OnClick="btnCancelarReserva_Click" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnConfirmarReserva" runat="server" BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="36px" Text="Confirmar reserva" Width="161px" OnClick="btnConfirmarReserva_Click" />
                                <br />
                                <br />
                                <asp:Button ID="btnVoltar" runat="server" BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="36px" Text="Voltar" Width="166px" Enabled="False" PostBackUrl="~/wTelaPrincipal.aspx" OnClick="btnVoltar_Click" />
                            </center>
                        </asp:Panel>

                    </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <center class="auto-style34">
            <asp:Label ID="lblTipoChale19" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Overline="False" Font-Size="Larger" ForeColor="#666666" Text="Políticas de pagamento"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblDescricaoPoliticaPagamento" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Small" ForeColor="#666666" Text="Descrição da Política"></asp:Label>
            <br />
            <br />
            <br />
        </center>
        <p>
            <asp:Label ID="lblIdChale" runat="server" ForeColor="White" Text="Label"></asp:Label>
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
