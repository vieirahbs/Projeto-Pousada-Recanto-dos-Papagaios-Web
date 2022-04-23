using RecantoWeb.Business;
using System;
using System.Web;

namespace RecantoWeb
{
    public partial class wLogin : System.Web.UI.Page
    {
        private readonly LoginBusiness _loginBusiness;

        public wLogin()
        {
            _loginBusiness = new LoginBusiness();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            txtUsuario.Focus();
            if (Session["login"] != null)
            {
                Response.Redirect("~/wMinhaConta.aspx");
                return;
            }
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {     
            if (txtUsuario.Text.Trim().Equals(string.Empty))
            {
                Response.Write("<script>alert('Informe o email.'); </script>");
                txtUsuario.Focus();
                return;
            }
            else if (txtSenha.Text.Trim().Equals(string.Empty))
            {
                Response.Write("<script>alert('Informe a senha.'); </script>");
                txtSenha.Focus();
                return;
            }

            var post = _loginBusiness.FazerLogin(txtUsuario.Text, txtSenha.Text);

            if (post.Retorno.StatusCode == 200)
            {
                //cookie
                HttpCookie login = new HttpCookie("login", txtUsuario.Text);                
                Response.Cookies.Add(new HttpCookie("senhaUsuario", txtSenha.Text));
                Response.Cookies.Add(new HttpCookie("IdUsuario", post.IdUsuario.ToString()));
                Response.Cookies.Add(new HttpCookie("cpfUsuario", post.Cpf));
                Response.Cookies.Add(login);
                //session
                Session["login"] = txtUsuario.Text;
                Session["IdUsuario"] = post.IdUsuario.ToString();
                Session["senhaUsuario"] = txtSenha.Text;
                Session["cpfUsuario"] = post.Cpf;

                Response.Redirect("~/wTelaPrincipal.aspx");
            }          
            else
            {
                Response.Write($"<script>alert('{post.Retorno.Mensagem}'); </script>");
                txtUsuario.Focus();
                return;
            }
        }
    }
}