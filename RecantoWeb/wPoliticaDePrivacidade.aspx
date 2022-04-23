<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wPoliticaDePrivacidade.aspx.cs" Inherits="RecantoWeb.wPoliticaDePrivacidade" %>

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
            <asp:Label ID="lblAcomodacoes" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="True" Font-Size="XX-Large" ForeColor="#666666" Text="Política de privacidade"></asp:Label>
        </center>
        <p>
            &nbsp;</p>
        <p class="MsoNormal">
            <b><span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">Introdução<o:p></o:p></span></b></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">Esta política de privacidade permite que você saiba como a Pousada Recanto dos Papagaios opera e coleta suas informações pessoais. <o:p></o:p></span>
        </p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">Utilizamos suas informações pessoais para cumprir com o nosso compromisso em oferecer uma incrível experiência de atendimento ao hóspede. <o:p></o:p></span>
        </p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">Como parte desse engajamento, estamos comprometidos a proteger a privacidade das informações pessoais que coletamos. <o:p></o:p></span>
        </p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">Como nosso hóspede, você entende e concorda que poderemos coletar, usar e compartilhar as suas informações sempre que necessário para cumprir os compromissos que a pousada garantiu a você.<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal">
            <b><span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">Informações que podemos coletar<o:p></o:p></span></b></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Informações de contato e identificação: Podemos coletar informações como seu nome, detalhes de contato (por exemplo, números de telefone ou e-mail); <o:p></o:p></span>
        </p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Informações sobre localização: Podemos coletar informações sobre sua localização como estado, cidade, endereço, detalhes da residência e CEP. <o:p></o:p></span>
        </p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Informações de pagamento e crédito: Podemos coletar detalhes do cartão de crédito e de outros métodos de pagamento. Em casos limitados, também podemos coletar informações relativas ao crédito de clientes; <o:p></o:p></span>
        </p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Informações demográficas: Podemos coletar informações demográficas, como sexo, nacionalidade, idade, data e local de nascimento.&nbsp;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal">
            <b><span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">Como coletamos seus dados pessoais<o:p></o:p></span></b></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Diretamente de você: Muitas das informações pessoais que processamos referem-se a dados que você ou alguém em seu nome nos fornece diretamente. Por exemplo, você pode nos fornecer informações de contato e identificação, informações de estadias e compras, informações de pagamentos e informações demográficas ao criar uma conta; fazer uma reserva; participar de pesquisas de opinião, sorteios, concursos ou ofertas promocionais; entrar em contato com o atendimento ao cliente; ou entrar em contato conosco via e-mail, por telefone, pessoalmente ou por meio de terceiros. <o:p></o:p></span>
        </p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- De seus dispositivos e de nossas redes: Usamos a tecnologia para coletar suas informações pessoais a partir e através dos seus dispositivos quando você interage com o site, o aplicativo, nossos e-mails ou outro conteúdo on-line; <o:p></o:p></span>
        </p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Utilizamos a Ficha Nacional de Registro de Hóspede (FNRH) para coleta de dados. Explicaremos mais sobre ela mais a frente neste documento.&nbsp;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal">
            <b><span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">Como usamos suas informações<o:p></o:p></span></b></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">Sujeito à legislação aplicável, podemos coletar, usar e divulgar suas informações pessoais para:<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Fornecer, cobrar e gerenciar acomodações na pousada e outros bens e serviços;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Fornecer atendimento ao cliente e um nível melhor ou mais personalizado de serviço da Pousada Recanto dos Papagaios, bem como através do site e aplicativo;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Administrar concursos, sorteios ou outras promoções (mediante consentimento);<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Realizar promoções de marketing e de vendas e exibir publicidade direcionada para produtos, serviços, eventos ou promoções em que você possa estar interessado (mediante consentimento);<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Administrar a manutenção geral de registros.<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Cumprir exigências jurídicas e normativas;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Fornecer informações a empresas de marketing, com o objetivo de realizar pesquisa de mercado e elaborar novas promoções (mediante consentimento).<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Autorização de crédito<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Quando você solicitar crédito, suas informações pessoais serão usadas e divulgadas a terceiros adequados conforme as leis aplicáveis com o objetivo de determinar a concessão ou a manutenção de uma linha de crédito para você.&nbsp;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal">
            <b><span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">Direitos de privacidade&nbsp;<o:p></o:p></span></b></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Acesso: Por meio do menu “Meu cadastro” você poderá acessar todos os seus dados que possuímos em nosso banco de dados;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Correção: Por meio do menu “Meu cadastro” você poderá corrigir/atualizar seus dados sempre que necessário;<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Deleção: Poderá solicitar a exclusão de seus dados pessoais de nosso banco de dados. Neste caso seu dado só será excluído após o término do período de sua estadia na pousada, pois, no período entre check-in e checkout, nós precisamos manter seus dados conosco para poder administrar sua estadia.<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Bloqueio: Realizaremos o mesmo procedimento de Deleção.<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Revogação de consentimento: Realizaremos o mesmo procedimento de Deleção.<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Anonimização: Realizaremos o mesmo procedimento de Deleção.<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-family:&quot;Arial&quot;,sans-serif;
color:#181934">- Saber sobre tomada de decisão automatizada: A Pousada Recanto dos Papagaios não utiliza seus dados para tomada de decisão automatizada.<o:p></o:p></span></p>
        <p>
            &nbsp;</p>
        <footer>
            <asp:Panel ID="Panel1" runat="server" BackColor="Silver">
                <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem Text="Politica de privacidade" Value="Politica de privacidade" Selected="True" NavigateUrl="~/wPoliticaDePrivacidade.aspx"></asp:MenuItem>
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
