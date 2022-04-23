using System;
using System.Collections.Generic;

namespace RecantoWeb
{
    public partial class wAcomodacoes : System.Web.UI.Page
    {
        #region Métodos com informações dos chalés para preenchimento das Labels da página wDadosReserva
        public List<string> UrlChale1 { get; set; } = new List<string>();
        public List<string> UrlStandardInterior { get; set; } = new List<string>();
        public List<string> UrlSuperiorInterior { get; set; } = new List<string>();
        public List<string> UrlMasterInterior { get; set; } = new List<string>();
        public List<string> Categoria { get; set; } = new List<string>();
        public List<string> Descricao { get; set; } = new List<string>();
        public List<double> ValorDiaria { get; set; } = new List<double>();
        public List<int> ChaleId { get; set; } = new List<int>();
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {

            #region Adiciona as imagens dos Chalés para serem carregadas na wDadosReserva
            UrlChale1.Add("~/Resources/ChalesDetalhes1.jpg");
            UrlChale1.Add("~/Resources/ChalesDetalhes2.jpg");
            UrlChale1.Add("~/Resources/ChalesDetalhes3.jpg");
            UrlChale1.Add("~/Resources/ChalesDetalhes4.jpg");
            UrlChale1.Add("~/Resources/ChalesDetalhes5.jpg");
            UrlChale1.Add("~/Resources/ChalesDetalhes6.jpg");
            UrlChale1.Add("~/Resources/ChalesDetalhes7.jpg");
            UrlChale1.Add("~/Resources/ChalesDetalhes8.jpg");
            UrlChale1.Add("~/Resources/ChalesDetalhes9.jpg");
            UrlChale1.Add("~/Resources/ChalesDetalhes10.jpg");

            #endregion

            #region Adiciona as imagens dos Interiores Standard para serem carregadas na wDadosReserva
            UrlStandardInterior.Add("~/Resources/StandardInterior1.jpg");
            UrlStandardInterior.Add("~/Resources/StandardInterior2.jpg");
            UrlStandardInterior.Add("~/Resources/StandardInterior3.jpg");
            #endregion

            #region Adiciona as imagens dos Interiores Superior para serem carregadas na wDadosReserva
            UrlSuperiorInterior.Add("~/Resources/SuperiorInterior1.jpg");
            UrlSuperiorInterior.Add("~/Resources/SuperiorInterior2.jpg");
            UrlSuperiorInterior.Add("~/Resources/SuperiorInterior3.jpg");
            #endregion

            #region Adiciona as imagens dos Interiores Master para serem carregadas na wDadosReserva
            UrlMasterInterior.Add("~/Resources/MasterInterior1.jpg");
            UrlMasterInterior.Add("~/Resources/MasterInterior2.jpg");
            UrlMasterInterior.Add("~/Resources/MasterInterior3.jpg");
            #endregion

            #region Adiciona as categorias para serem carregadas na wDadosReserva
            Categoria.Add("Chalé Standard");
            Categoria.Add("Chalé Superior");
            Categoria.Add("Chalé Master");
            #endregion 

            #region Adiciona as descrições dos chalés para serem carregadas na wDadosReserva
            Descricao.Add("4 hospedes - 2 quartos - Camas double - 1 banheiro");
            Descricao.Add("3 hospedes - 2 quartos - Camas double - 1 banheiro");
            #endregion

            #region Adiciona o valores diários das categorias para serem carregadas na wDadosReserva
            ValorDiaria.Add(530.0);
            ValorDiaria.Add(580.0);
            ValorDiaria.Add(650.0);
            #endregion

            #region Adiciona os Ids dos chalés para serem carregadas na wDadosReserva
            ChaleId.Add(1);
            ChaleId.Add(2);
            ChaleId.Add(3);
            ChaleId.Add(4);
            ChaleId.Add(5);
            ChaleId.Add(6);
            ChaleId.Add(7);
            ChaleId.Add(8);
            ChaleId.Add(9);
            ChaleId.Add(10);
            #endregion

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


        #region Evento Click dos botões para acessar cada chalé

        protected void btnReservarChale1_Click(object sender, EventArgs e)
        {
            RadioBtnList.SelectedIndex = 0;
        }

        protected void btnReservarChale2_Click(object sender, EventArgs e)
        {
            RadioBtnList.SelectedIndex = 1;
        }

        protected void btnReservarChale3_Click(object sender, EventArgs e)
        {
            RadioBtnList.SelectedIndex = 2;
        }

        protected void btnReservarChale4_Click(object sender, EventArgs e)
        {
            RadioBtnList.SelectedIndex = 3;
        }

        protected void btnReservarChale5_Click(object sender, EventArgs e)
        {
            RadioBtnList.SelectedIndex = 4;
        }

        protected void btnReservarChale6_Click(object sender, EventArgs e)
        {
            RadioBtnList.SelectedIndex = 5;
        }

        protected void btnReservarChale7_Click(object sender, EventArgs e)
        {
            RadioBtnList.SelectedIndex = 6;
        }

        protected void btnReservarChale8_Click(object sender, EventArgs e)
        {
            RadioBtnList.SelectedIndex = 7;
        }

        protected void btnReservarChale9_Click(object sender, EventArgs e)
        {
            RadioBtnList.SelectedIndex = 8;
        }

        protected void btnReservarChale10_Click(object sender, EventArgs e)
        {
            RadioBtnList.SelectedIndex = 9;
        }

#endregion


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