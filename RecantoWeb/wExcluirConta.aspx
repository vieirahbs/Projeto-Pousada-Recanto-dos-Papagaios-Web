<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wExcluirConta.aspx.cs" Inherits="RecantoWeb.wExcluirConta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 97%;
            height: 273px;
        }

        .auto-style2 {
            height: 91px;
        }

        .auto-style3 {
            height: 91px;
            width: 276px;
        }

        .auto-style5 {
            height: 91px;
            width: 574px;
        }
        .auto-style6 {
            width: 565px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            &nbsp;&nbsp;
            &nbsp;
        </p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"></td>

                <td class="auto-style5" style="border: thin inset #808080; background-color: #EFEFEF">
                    <center class="auto-style6">
                        <asp:Label ID="lblTituloExcluir" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" ForeColor="#666666" Text="Tem certeza que deseja excluir sua conta?"></asp:Label>
                        <br />
                        <asp:Label ID="lblSubTituloExcluir" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" ForeColor="#666666" Text="Se sim, confirme seu usuário e senha:"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<br />
                        <asp:Label ID="lblEntrar0" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Usuário:"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtUsuarioExcluir" runat="server" Width="240px"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp; <asp:Label ID="lblEntrar1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" ForeColor="#666666" Text="Senha:"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtSenhaExcluir" runat="server" Width="242px" TextMode="Password"></asp:TextBox>
                        <br />
                        <br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Button ID="btnVoltarAMinhaConta" runat="server" BackColor="#009999" Font-Bold="True" ForeColor="White" Text="Voltar" Width="71px" BorderStyle="None" Height="36px" PostBackUrl="~/wMinhaConta.aspx" />

            &nbsp;&nbsp;

            <asp:Button ID="btnExcluirConta" runat="server" BackColor="#FF5050" Font-Bold="True" ForeColor="White" Text="Excluir minha conta" Width="147px" BorderStyle="None" Height="36px" OnClick="btnExcluirConta_Click" />

                    </center>
                </td>
                <td class="auto-style2"></td>
            </tr>
        </table>
    </form>
</body>
</html>
