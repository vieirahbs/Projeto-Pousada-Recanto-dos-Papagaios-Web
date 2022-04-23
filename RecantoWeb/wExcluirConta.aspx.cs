using RecantoWeb.Business;
using System;

namespace RecantoWeb
{
    public partial class wExcluirConta : System.Web.UI.Page
    {
        private readonly HospedeBusiness _hospedeBusiness;

        public wExcluirConta()
        {
            _hospedeBusiness = new HospedeBusiness();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("~/wLogin.aspx");
                return;
            }
            if (!IsPostBack)
            {
                if (Request["txtConfirmacao"] == null)
                {
                    Response.Redirect("~/wMinhaConta.aspx");
                }
            }
        }

        protected void btnExcluirConta_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtUsuarioExcluir.Text.Trim().Equals(string.Empty))
                {
                    Response.Write("<script> alert ('Informe seu e-mail cadastrado.'); </script>");
                    txtUsuarioExcluir.Focus();
                    return;
                }
                else if (txtSenhaExcluir.Text.Trim().Equals(string.Empty))
                {
                    Response.Write("<script> alert ('Informe sua senha cadastrada'); </script>");
                    txtSenhaExcluir.Focus();
                    return;
                }
                else if (Request.Cookies["login"].Value == txtUsuarioExcluir.Text &&
                    Request.Cookies["senhaUsuario"].Value == txtSenhaExcluir.Text)
                {
                    var hospedeDelete = _hospedeBusiness.Deletar(int.Parse(Request.Cookies["IdUsuario"].Value));

                    Response.Write($"<script> alert ('{hospedeDelete.Mensagem}'); </script>");
                    lblTituloExcluir.Text = "Conta excluida";
                    lblSubTituloExcluir.Text = "Clique em 'Voltar' para acessar a página inicial.";
                    txtUsuarioExcluir.Text = "";
                    txtUsuarioExcluir.Enabled = false;
                    txtSenhaExcluir.Enabled = false;
                    btnExcluirConta.Text = "Conta excluida";
                    btnExcluirConta.Enabled = false;
                    btnExcluirConta.BackColor = System.Drawing.Color.DimGray;
                    Session.Clear();
                    btnVoltarAMinhaConta.PostBackUrl = "~/wTelaPrincipal.aspx";
                }
                else
                {
                    Response.Write("<script>alert('E-mail ou senha estão incorretos.'); </script>");
                    txtUsuarioExcluir.Focus();
                    return;
                }
            }
            catch (Exception msg)
            {
                Response.Write($"<script>alert('{msg.Message}'); </script>");
            }
        }

    }
}