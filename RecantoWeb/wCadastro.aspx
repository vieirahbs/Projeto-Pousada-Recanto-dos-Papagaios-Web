<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wCadastro.aspx.cs" Inherits="RecantoWeb.wCadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
        .auto-style2 {
            width: 100%;
            height: 414px;
        }
        .auto-style3 {
            width: 601px;
        }
        .auto-style4 {
            width: 750px;
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
                        <td class="auto-style4">
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

        <p class="auto-style1">
            <asp:Label ID="lblTitulo" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Larger" ForeColor="#666666" Text="Fazer cadastro"></asp:Label>
        &nbsp;
                            <asp:Button ID="btnIrParaLogin" runat="server" BackColor="#009999" Font-Bold="True" ForeColor="White" Text="Clique aqui para fazer login" Width="230px" Enabled="False" Visible="False" BorderStyle="None" Font-Size="Medium" Height="34px" PostBackUrl="~/wLogin.aspx" />
        </p>

        <p>
            <table class="auto-style2">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3" style="border: thin solid #006666; background-color: #EEEEEE;">
                        <asp:Label ID="lblNome" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="Nome completo:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtNome" runat="server" Width="318px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNome" ErrorMessage="*Campo obrigatório" Font-Names="Arial" ForeColor="#FF5050" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="lblCEP6" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="E-mail:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtEmail" runat="server" Width="318px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="*Formato de e-mail inválido." Font-Names="Arial" ForeColor="#FF5050" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Campo obrigatório" Font-Names="Arial" ForeColor="#FF5050" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="lblCEP3" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="CPF:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtCPF" runat="server" Width="188px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCPF" ErrorMessage="*Campo obrigatório" Font-Names="Arial" ForeColor="#FF5050" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="lblCEP4" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="Data de Nascimento:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtDataNascimento" runat="server" Width="188px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDataNascimento" ErrorMessage="*Campo obrigatório" Font-Names="Arial" ForeColor="#FF5050" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="lblCEP" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="CEP:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtCEP" runat="server" Width="188px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCEP" ErrorMessage="*Campo obrigatório" Font-Names="Arial" ForeColor="#FF5050" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="lblCEP0" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="Endereço:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtEndereco" runat="server" Width="318px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEndereco" ErrorMessage="*Campo obrigatório" Font-Names="Arial" ForeColor="#FF5050" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="lblCEP1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="Nº:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtNumeroResidencial" runat="server" Width="75px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtNumeroResidencial" ErrorMessage="*Campo obrigatório" Font-Names="Arial" ForeColor="#FF5050" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="lblCEP2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="Complemento:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtComplemento" runat="server" Width="228px"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblCEP13" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="Bairro:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtBairro" runat="server" Width="144px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtBairro" ErrorMessage="*Campo obrigatório" Font-Names="Arial" ForeColor="#FF5050" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="lblCEP14" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="Cidade:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtCidade" runat="server" Width="141px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtCidade" ErrorMessage="*Campo obrigatório" Font-Names="Arial" ForeColor="#FF5050" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="lblCEP15" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="UF:"></asp:Label>
                        <br />
                        <asp:DropDownList ID="cmbUF" runat="server">
                        </asp:DropDownList>
                        <br />
                        <asp:Label ID="lblCEP16" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="País:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtPais" runat="server" Width="75px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtPais" ErrorMessage="*Campo obrigatório" Font-Names="Arial" ForeColor="#FF5050" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="lblCEP17" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="Crie um nome de usuário"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtUsuario" runat="server" Width="161px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtUsuario" ErrorMessage="*Campo obrigatório" Font-Names="Arial" ForeColor="#FF5050" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="lblSenha" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="Crie uma senha:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" Width="161px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtSenha" ErrorMessage="*Campo obrigatório" Font-Names="Arial" ForeColor="#FF5050" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="lblConfirmaSenha" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="Confirme a senha:"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtConfirmaSenha" runat="server" TextMode="Password" Width="161px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtSenha" ControlToValidate="txtConfirmaSenha" ErrorMessage="*Os campos senhas não estão iguais." Font-Names="Arial" ForeColor="#FF5050" SetFocusOnError="True"></asp:CompareValidator>
                        <br />
                        <br />
                        <asp:Label ID="lblCEP12" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#666666" Text="Termos de uso"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblCEP9" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="1 - Política de privacidade (*consentimento obrigatório para cadastro):"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtPoliticaPrivacidade" runat="server" Height="96px" TextMode="MultiLine" Width="577px" Enabled="False">
1 - Política de privacidade – Introdução

Esta política de privacidade permite que você saiba como a Pousada
Recanto dos Papagaios opera e coleta suas informações pessoais.
Utilizamos suas informações pessoais para cumprir com o nosso
compromisso em oferecer uma incrível experiência de atendimento ao hóspede.
Como parte desse engajamento, estamos comprometidos a proteger a privacidade
das informações pessoais que coletamos.
Como nosso hóspede, você entende e concorda que poderemos coletar,
usar e compartilhar as suas informações sempre que necessário para cumprir os
compromissos que a pousada garantiu a você.

2 - Política de privacidade - Informações que podemos coletar

Informações que podemos coletar:

• Informações de contato e identificação: Podemos coletar informações como seu
nome, detalhes de contato (por exemplo, números de telefone ou e-mail);
• Informações sobre localização: Podemos coletar informações sobre sua
localização como estado, cidade, endereço, detalhes da residência e CEP.
• Informações de pagamento e crédito: Podemos coletar detalhes do cartão de
crédito e de outros métodos de pagamento. Em casos limitados, também
podemos coletar informações relativas ao crédito de clientes;
• Informações demográficas: Podemos coletar informações demográficas, como
sexo, nacionalidade, idade, data e local de nascimento.”
Política de privacidade - Como coletamos seus dados pessoais

Como coletamos seus dados pessoais:

• Diretamente de você: Muitas das informações pessoais que processamos
referem-se a dados que você ou alguém em seu nome nos fornece diretamente.
Por exemplo, você pode nos fornecer informações de contato e identificação,
informações de estadias e compras, informações de pagamentos e informações
demográficas ao criar uma conta; fazer uma reserva; participar de pesquisas de
opinião, sorteios, concursos ou ofertas promocionais; entrar em contato com o
atendimento ao cliente; ou entrar em contato conosco via e-mail, por telefone,
pessoalmente ou por meio de terceiros.
• De seus dispositivos e de nossas redes: Usamos a tecnologia para coletar suas
informações pessoais a partir e através dos seus dispositivos quando você
interage com o site, o aplicativo, nossos e-mails ou outro conteúdo on-line;
• Utilizamos a Ficha Nacional de Registro de Hóspede (FNRH) para coleta de
dados. Explicaremos mais sobre ela mais a frente neste documento.”

3 - Política de privacidade - Como usamos suas informações

Sujeito à legislação aplicável, podemos coletar, usar e divulgar suas
informações pessoais para:

• Fornecer, cobrar e gerenciar acomodações na pousada e outros bens e serviços;
• Fornecer atendimento ao cliente e um nível melhor ou mais personalizado de
serviço da Pousada Recanto dos Papagaios, bem como através do site e
aplicativo;
• Administrar concursos, sorteios ou outras promoções (mediante consentimento);
• Realizar promoções de marketing e de vendas e exibir publicidade direcionada
para produtos, serviços, eventos ou promoções em que você possa estar
interessado (mediante consentimento);
• Administrar a manutenção geral de registros.
• Cumprir exigências jurídicas e normativas;
• Fornecer informações a empresas de marketing, com o objetivo de realizar
pesquisa de mercado e elaborar novas promoções (mediante consentimento).”

3 - Política de privacidade - Autorização de crédito

Autorização de crédito:

• Quando você solicitar crédito, suas informações pessoais serão usadas e
divulgadas a terceiros adequados conforme as leis aplicáveis com o objetivo de
determinar a concessão ou a manutenção de uma linha de crédito para você.”
2.2.1.6. Política de privacidade - Direitos de privacidade
Seguem os termos de consentimento:
“Direitos de privacidade
• Acesso: Por meio do menu “Meu cadastro” você poderá acessar todos os seus
dados que possuímos em nosso banco de dados;
• Correção: Por meio do menu “Meu cadastro” você poderá corrigir/atualizar seus
dados sempre que necessário;
• Deleção: Poderá solicitar a exclusão de seus dados pessoais de nosso banco de
dados. Neste caso seu dado só será excluído após o término do período de sua
estadia na pousada, pois, no período entre check-in e checkout, nós precisamos
manter seus dados conosco para poder administrar sua estadia.
• Bloqueio: Realizaremos o mesmo procedimento de Deleção.
• Revogação de consentimento: Realizaremos o mesmo procedimento de
Deleção.
• Anonimização: Realizaremos o mesmo procedimento de Deleção.
• Saber sobre tomada de decisão automatizada: A Pousada Recanto dos
Papagaios não utiliza seus dados para tomada de decisão automatizada.</asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="lblCEP10" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="2- Autorizaçao para utilização dos dados pessoais (*consentimento obrigatório para cadastro):"></asp:Label>
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server" Height="71px" TextMode="MultiLine" Width="577px" Enabled="False">Você aceita que seus dados sejam utilizados para que possamos administrar sua estadia no período em que permanecer conosco? E aceita que suas informações sejam compartilhadas com os Orgãos Estaduais de Turismo, para que sejam documentadas por eles com o objetivo de mapear os perfis dos turistas que se hospedam em cada região, possibilitando a melhoria da elaboração de políticas públicas direcionadas ao setor turístico? Para mais informações, acesse: http://www.hospedagem.turismo.gov.br/index.html.</asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="lblCEP11" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#666666" Text="3 - Autorizaçao para utilização dos dados pessoais (opcional):"></asp:Label>
                        <br />
                        <asp:TextBox ID="TextBox2" runat="server" Height="68px" TextMode="MultiLine" Width="577px" Enabled="False">Você aceita que seus dados sejam utilizados para que possamos administrar sua estadia no período em que permanecer conosco? E aceita que suas informações sejam compartilhadas com os Orgãos Estaduais de Turismo, para que sejam documentadas por eles com o objetivo de mapear os perfis dos turistas que se hospedam em cada região, possibilitando a melhoria da elaboração de políticas públicas direcionadas ao setor turístico? Para mais informações, acesse: http://www.hospedagem.turismo.gov.br/index.html.</asp:TextBox>
                        <br />
                        <br />
                        <asp:CheckBox ID="ckbConsentimento1" runat="server" Font-Names="Arial" ForeColor="#333333" Text="*Eu li e aceito as políticas de privacidade descritas no item 1, e autorizo a utilização de meus dados pessoais conforme descrito no item 2." />
                        <br />
                        <asp:CheckBox ID="ckbConsentimento2" runat="server" Font-Names="Arial" ForeColor="#333333" Text="Eu li e autorizo a utilização de meus dados pessoais para marketing conforme descrito no item 3." />
                        <br />
                        <br />
                        <asp:Button ID="btnCriarConta" runat="server" BackColor="#009999" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="35px" Text="Criar conta" Width="244px" OnClick="btnCriarConta_Click" />
                        <br />
                        <br />
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
