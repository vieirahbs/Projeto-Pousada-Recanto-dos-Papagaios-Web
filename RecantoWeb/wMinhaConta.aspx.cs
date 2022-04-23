using RecantoWeb.Business;
using RecantoWeb.Entities.Post;
using System;

namespace RecantoWeb
{
    public partial class wMinhaConta : System.Web.UI.Page
    {
        private readonly HospedeBusiness _hospedeBusiness;

        public wMinhaConta()
        {
            _hospedeBusiness = new HospedeBusiness();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            #region Adiciona estados no DropDownList
            cmbUF.Items.Add("AC");
            cmbUF.Items.Add("AL");
            cmbUF.Items.Add("AP");
            cmbUF.Items.Add("AM");
            cmbUF.Items.Add("BA");
            cmbUF.Items.Add("CE");
            cmbUF.Items.Add("DF");
            cmbUF.Items.Add("ES");
            cmbUF.Items.Add("GO");
            cmbUF.Items.Add("MA");
            cmbUF.Items.Add("MT");
            cmbUF.Items.Add("MS");
            cmbUF.Items.Add("MG");
            cmbUF.Items.Add("PA");
            cmbUF.Items.Add("PB");
            cmbUF.Items.Add("PR");
            cmbUF.Items.Add("PE");
            cmbUF.Items.Add("PI");
            cmbUF.Items.Add("RJ");
            cmbUF.Items.Add("RN");
            cmbUF.Items.Add("RS");
            cmbUF.Items.Add("RO");
            cmbUF.Items.Add("RR");
            cmbUF.Items.Add("SC");
            cmbUF.Items.Add("SP");
            cmbUF.Items.Add("SE");
            cmbUF.Items.Add("TO");
            #endregion

            if (Session["login"] == null)
            {
                Response.Redirect("~/wLogin.aspx");
                return;
            }
            else
            {
                menuUsuario.Items[0].Text = Request.Cookies["login"].Value;

                menuUsuario.Items[0].ChildItems[0].Text = "Minha conta";
                menuUsuario.Items[0].ChildItems[0].NavigateUrl = "~/wMinhaConta.aspx";
                menuUsuario.Items[0].ChildItems[1].Text = "Minhas reservas";
                menuUsuario.Items[0].ChildItems[1].NavigateUrl = "~/wHistoricoReservas.aspx";
                btnSair.Visible = true;
                btnSair.Enabled = true;
            }
            if (!IsPostBack)
            {
                try
                {
                    var hospede = _hospedeBusiness.Obter(int.Parse(Request.Cookies["IdUsuario"].Value));

                    txtNome.Text = hospede.NomeCompleto;
                    txtEmail.Text = hospede.Contatos.Email;
                    txtCPF.Text = hospede.Cpf;
                    txtDataNascimento.Text = hospede.DataDeNascimento.ToString("dd/MM/yyyy");
                    txtCEP.Text = hospede.Endereco.Cep;
                    txtEndereco.Text = hospede.Endereco.Logradouro;
                    txtNumeroResidencial.Text = hospede.Endereco.Numero;
                    txtComplemento.Text = hospede.Endereco.Complemento;
                    txtBairro.Text = hospede.Endereco.Bairro;
                    txtCidade.Text = hospede.Endereco.Cidade;
                    cmbUF.SelectedItem.Text = hospede.Endereco.Estado;
                    txtPais.Text = hospede.Endereco.Pais;
                    txtUsuario.Text = hospede.Usuario.NomeUsuario;
                }
                catch (Exception msg)
                {
                    Response.Write("<script> alert ('" + msg.Message + "'); </script>");
                }
            }
        }

        protected void btnSair_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Page_Load(sender, e);
        }

        private void RetornaValoresAnteriores()
        {
            var hospede = _hospedeBusiness.Obter(int.Parse(Request.Cookies["IdUsuario"].Value));

            txtNome.Text = hospede.NomeCompleto;
            txtEmail.Text = hospede.Contatos.Email;
            txtCPF.Text = hospede.Cpf;
            txtDataNascimento.Text = hospede.DataDeNascimento.ToString("dd/MM/yyyy");
            txtCEP.Text = hospede.Endereco.Cep;
            txtEndereco.Text = hospede.Endereco.Logradouro;
            txtNumeroResidencial.Text = hospede.Endereco.Numero;
            txtComplemento.Text = hospede.Endereco.Complemento;
            txtBairro.Text = hospede.Endereco.Bairro;
            txtCidade.Text = hospede.Endereco.Cidade;
            cmbUF.SelectedItem.Text = hospede.Endereco.Estado;
            txtPais.Text = hospede.Endereco.Pais;
            txtUsuario.Text = hospede.Usuario.NomeUsuario;
        }

        private void DesabilitaCamposDeEdicao()
        {
            txtNome.Enabled = false;
            txtEmail.Enabled = false;
            txtCPF.Enabled = false;
            txtDataNascimento.Enabled = false;
            txtCEP.Enabled = false;
            txtEndereco.Enabled = false;
            txtNumeroResidencial.Enabled = false;
            txtComplemento.Enabled = false;
            txtBairro.Enabled = false;
            txtCidade.Enabled = false;
            cmbUF.Enabled = false;
            txtPais.Enabled = false;
            txtUsuario.Enabled = false;
            btnSalvarCadastro.Enabled = false;
            btnEditarHospede.Enabled = true;
            btnCancelarAtualizacao.Enabled = false;
        }

        protected void btnEditarHospede_Click(object sender, EventArgs e)
        {
            txtNome.Enabled = true;
            txtEmail.Enabled = true;
            txtCPF.Enabled = true;
            txtDataNascimento.Enabled = true;
            txtCEP.Enabled = true;
            txtEndereco.Enabled = true;
            txtNumeroResidencial.Enabled = true;
            txtComplemento.Enabled = true;
            txtBairro.Enabled = true;
            txtCidade.Enabled = true;
            cmbUF.Enabled = true;
            txtPais.Enabled = true;

            btnSalvarCadastro.Enabled = true;
            btnCancelarAtualizacao.Enabled = true;
            btnEditarHospede.Enabled = false;
        }

        protected void btnCancelarAtualizacao_Click(object sender, EventArgs e)
        {
            RetornaValoresAnteriores();
            btnSalvarCadastro.Enabled = false;
            btnEditarHospede.Enabled = true;
            btnSalvarCadastro.Enabled = false;
            btnCancelarAtualizacao.Enabled = false;
            DesabilitaCamposDeEdicao();
        }

        protected void btnSalvarCadastro_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtNome.Text.Trim().Equals(string.Empty) ||
                    txtEmail.Text.Trim().Equals(string.Empty) ||
                    txtCPF.Text.Trim().Equals(string.Empty) ||
                    txtDataNascimento.Text.Trim().Equals(string.Empty) ||
                    txtCEP.Text.Trim().Equals(string.Empty) ||
                    txtNumeroResidencial.Text.Trim().Equals(string.Empty) ||
                    txtComplemento.Text.Trim().Equals(string.Empty) ||
                    txtBairro.Text.Trim().Equals(string.Empty) ||
                    txtCidade.Text.Trim().Equals(string.Empty) ||
                    cmbUF.SelectedIndex.Equals(-1) ||
                    txtPais.Text.Trim().Equals(string.Empty))
                {
                    Response.Write("<script> alert ('É necessário preencher todos os campos solicitados.'); </script>");
                    return;
                }
                else
                {
                    var hospedePost = new HospedePost
                    {
                        NomeCompleto = txtNome.Text,
                        Contatos = new ContatosPost
                        {
                            Email = txtEmail.Text
                        },
                        Cpf = txtCPF.Text,
                        DataDeNascimento = Convert.ToDateTime(txtDataNascimento.Text),
                        Endereco = new EnderecoPost
                        {
                            Cep = txtCEP.Text,
                            Logradouro = txtEndereco.Text,
                            Numero = txtNumeroResidencial.Text,
                            Complemento = txtComplemento.Text,
                            Bairro = txtBairro.Text,
                            Cidade = txtCidade.Text,
                            Estado = cmbUF.Text,
                            Pais = txtPais.Text
                        },
                        Usuario = new UsuarioPost
                        {
                            NomeUsuario = txtUsuario.Text,
                            SenhaUsuario = Request.Cookies["senhaUsuario"].Value
                        }
                    };
                    var post = _hospedeBusiness.Atualizar(hospedePost, int.Parse(Request.Cookies["IdUsuario"].Value));

                    Response.Write($"<script> alert ('{post.Mensagem}'); </script>");
                    DesabilitaCamposDeEdicao();
                }
            }
            catch (Exception msg)
            {
                Response.Write("<script> alert ('" + msg.Message + "'); </script>");
            }
        }

    }
}