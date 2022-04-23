using RecantoWeb.Business;
using RecantoWeb.Entities.Post;
using System;

namespace RecantoWeb
{
    public partial class wCadastro : System.Web.UI.Page
    {
        private readonly HospedeBusiness _hospedeBusiness;

        public wCadastro()
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
                
            }
            else
            { 
                Response.Redirect("~/wMinhaConta.aspx");
                return;
            }

            

        }

        protected void btnSair_Click(object sender, EventArgs e)
        {
            Session.Clear();
            menuUsuario.Items[0].Text = "";
            menuUsuario.Items[0].ChildItems[0].Text = "Login";
            menuUsuario.Items[0].ChildItems[0].NavigateUrl = "~/wLogin.aspx";
            menuUsuario.Items[0].ChildItems[1].Text = "Cadastrar-se";
            menuUsuario.Items[0].ChildItems[1].NavigateUrl = "~/wCadastro.aspx";
            btnSair.Enabled = false;
            btnSair.Visible = false;
        }
        
        protected void btnCriarConta_Click(object sender, EventArgs e)
        {
            if (txtNome.Text.Equals(string.Empty) ||
                txtEmail.Text.Equals(string.Empty) ||
                txtCPF.Text.Equals(string.Empty) ||
                txtDataNascimento.Text.Equals(string.Empty) ||
                txtCEP.Text.Equals(string.Empty) ||
                txtEndereco.Text.Equals(string.Empty) ||
                txtNumeroResidencial.Text.Equals(string.Empty) ||                
                txtBairro.Text.Equals(string.Empty) ||
                txtCidade.Text.Equals(string.Empty) ||
                cmbUF.SelectedIndex.Equals(-1) ||
                txtPais.Text.Equals(string.Empty) ||
                txtUsuario.Text.Equals(string.Empty) ||
                txtSenha.Text.Equals(string.Empty))
            {
                Response.Write("<script>alert('Informe todos os dados solicitados!'); </script>");                
                return;
            }
            else if (txtSenha.Text != txtConfirmaSenha.Text)
            {
                Response.Write("<script>alert('Os campos de criação de senha e de" +
                    " confirmação de senha devem ser iguais.'); </script>");
                txtConfirmaSenha.Focus();
                return;
            }


            if (!ckbConsentimento1.Checked)
            {
                Response.Write("<script>alert('É necessário autorizar o primeiro e o segundo item " +
                    "dos termos de uso.'); </script>");
                ckbConsentimento1.Focus();
                return;
            }
            else
            {
                try
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
                            SenhaUsuario = txtSenha.Text
                        }
                    };

                    var post = _hospedeBusiness.Inserir(hospedePost);

                    if (post.StatusCode == 201)
                    {
                        Response.Write($"<script>alert('{post.Mensagem}'); </script>");

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
                        txtEndereco.Enabled = false;
                        cmbUF.Enabled = false;
                        txtPais.Enabled = false;
                        txtUsuario.Enabled = false;
                        lblSenha.Visible = false;
                        txtSenha.Enabled = false;
                        txtSenha.Visible = false;
                        lblConfirmaSenha.Visible = false;
                        txtConfirmaSenha.Enabled = false;
                        txtConfirmaSenha.Visible = false;
                        ckbConsentimento1.Enabled = false;
                        ckbConsentimento2.Enabled = false;

                        
                        btnIrParaLogin.Visible = true;
                        btnIrParaLogin.Enabled = true;
                        lblTitulo.Text = "Cadastro realizado com sucesso!";
                        lblTitulo.ForeColor = System.Drawing.Color.DarkOliveGreen;
                        lblTitulo.Font.Bold = true;
                        btnCriarConta.Text = "Cadastro realizado";
                        btnCriarConta.Enabled = false;
                        btnCriarConta.BackColor = System.Drawing.Color.DarkGray;
                    }
                }
                catch (Exception msg)
                {
                    Response.Write($"<script>alert('Ocorreu o seguinte erro: {msg.Message}'); </script>");
                }
                
            }
        }
    }
}