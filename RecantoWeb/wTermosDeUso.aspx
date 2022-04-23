<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wTermosDeUso.aspx.cs" Inherits="RecantoWeb.wTermosDeUso" %>

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

        <center>
            <asp:Label ID="lblAcomodacoes" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="True" Font-Size="XX-Large" ForeColor="#666666" Text="Termos de uso"></asp:Label>
        </center>
        <p>
            &nbsp;
        </p>
        <p class="MsoNormal">
            <b><span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">Regras de hospedagem</span></b><span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934"><o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- Apenas hóspedes acima de dezoito (18) anos de idade podem reservar um chalé; menores, consequentemente, não reservam e devem, no check-in, estar acompanhados dos pais;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- Não é permitida a hospedagem de nenhum cliente - tanto maior como menor de idade sem a devida apresentação de um documento de identidade oficial com foto (este, em dia);<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- É necessário informar previamente a quantidade de pessoas que ficarão hospedadas no chalé;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- Para cada acompanhante, é cobrado mais 10% em cima do valor da reserva do chalé selecionado;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- A reserva da hospedagem de um ou mais chalés pode ser feita presencialmente, ou pelas vias de comunicação diretas à pousada (mais informações no tópico “Pagamento”).<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- Cada chalé possui uma (1) vaga para acomodação de veículos. Não é possível utilizar a vaga de outro chalé para acomodar um segundo carro. E, muito menos, utilizar outras dependências para estacionar veículos. <o:p></o:p></span>
        </p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal">
            <b><span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">Regras de reserva e períodos de acomodações</span></b><span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934"><o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- A reserva pode ser realizada pelo site, aplicativo, telefone ou presencialmente;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- A reserva presencial é realizada pelo funcionário da pousada (caso o cliente não tenha realizado o cadastro, o funcionário poderá realizar o cadastro para o cliente);<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- Em caso de reserva por telefone (aqui, no caso, não estão sendo considerados veículos de comunicação pela Internet; já que, no momento, o estabelecimento não as possui), a reserva de uma ou mais acomodações podem ser feitas com, no máximo, três (3) dias de antecedência;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- Agendamento com data superior a três (3) dias, o hóspede deve contatar a pousada e, sendo aprovada a reserva, o pagamento é feito, exclusivamente, mediante pagamento antecipado. Para registro do pagamento, o cliente contata a pousada através dos veículos de contato (telefone e WhatsApp);<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- A reserva poderá ser feita pelo site, mas a confirmação da reserva apenas pode ser realizada pelo(a) recepcionista ou gerente, após o pagamento da estadia;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- Se um chalé está ocupado, é proibida a reserva do mesmo por outro hóspede;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- Se um hóspede, que ocupa uma acomodação, deseja reservar mais dias e, porventura, estes conflitam com a reserva de um segundo hóspede - para o mesmo chalé - será dada a prioridade ao segundo hóspede; e<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- Não há limite para a quantidade de dias que um hóspede pode reservar. <o:p></o:p></span>
        </p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal">
            <b><span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">Serviços disponibilizados</span></b><span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934"><o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- Além das acomodações, a pousada disponibiliza os seguintes serviços aos clientes: café da manhã, serviço de quarto e serviço de lavanderia;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- Todos os serviços citados no tópico anterior estão, automaticamente, inclusos no preço das acomodações;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- Se o hóspede usufruir de outros serviços que não estão inclusos no preço do chalé, esses valores serão cobrados no processo de checkout. Da mesma forma, o hóspede será cobrado, no checkout, por danos causados a qualquer aparato da pousada. <o:p></o:p></span>
        </p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal">
            <b><span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">Pagamento</span></b><span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934"><o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- Não será possível realizar pagamentos pelo site ou aplicativo;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- O pagamento deverá ser efetuado por meio de:<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Cartão de débito/crédito (apenas presencialmente);<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Dinheiro (apenas presencialmente);<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Transferência bancária;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Depósito bancário;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Pix;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- Caso o cliente queira pagar antecipadamente de forma não presencial utilizando as três últimas opções do tópico anterior, é necessário entrar em contato com a pousada, (contato ficará disponível no site e aplicativo), para obter as informações para pagamento, juntamente com a devida autorização.<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal">
            <b><span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">Check-in</span></b><span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934"><o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;color:#181934">- No processo check-in, o hóspede precisa, obrigatoriamente, registrar seus dados na Ficha Nacional de Registros de Hóspedes (FNRH), conforme recomendações da Embratur. Essa ficha é disponibilizada ao hóspede pelo(a) recepcionista em turno. <o:p></o:p></span>
        </p>
        <p>
            &nbsp;</p>
        <footer>
            <asp:Panel ID="Panel1" runat="server" BackColor="Silver">
                <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem Text="Politica de privacidade" Value="Politica de privacidade" NavigateUrl="~/wPoliticaDePrivacidade.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Termos de uso" Value="Termos de uso" Selected="True" NavigateUrl="~/wTermosDeUso.aspx"></asp:MenuItem>
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
