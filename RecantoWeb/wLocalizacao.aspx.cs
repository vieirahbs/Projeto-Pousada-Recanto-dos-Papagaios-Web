using System;

namespace RecantoWeb
{
    public partial class wLocalizacao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {

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
    }
}