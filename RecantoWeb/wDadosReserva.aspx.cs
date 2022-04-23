using RecantoWeb.Business;
using RecantoWeb.Entities.Post;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecantoWeb
{
    public partial class wDadosReserva : System.Web.UI.Page
    {
        #region Atributos para salvar informãções da wAcomodacoes para preenchimento de Labels
        public string TipoChaleSelecionado { get; set; }
        public string DescricaoChaleSelcionada { get; set; }
        public string FormaPagamentoSelecionada { get; set; }
        public DateTime CheckIn { get; set; }
        public DateTime CheckOut { get; set; }
        public double ValorDiariaSelecionada { get; set; }
        public double ValorTotal { get; set; }
        public int QtdHospedes { get; set; }
        public int QtdDias { get; set; }
        public int IdChaleSelecionado { get; set; }
        #endregion
        
        private readonly ReservaBusiness _reservaBusiness;

        public wDadosReserva()
        {
            _reservaBusiness = new ReservaBusiness();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
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

                lblDescricaoPoliticaPagamento.Text = "Para cada acompanhante, é cobrado mais 10% em cima do valor da reserva do " +
                    "chalé selecionado. A cobrança por hóspede é feita, apenas, em crianças acima dos seis (6) anos. " +
                    "Para cada acompanhante, é cobrado mais 10% em cima do valor da reserva do " +
                    "chalé selecionado. Agendamento com data superior a três (3) dias, " +
                    "o hóspede deve contatar a pousada e, sendo aprovada a reserva, o pagamento é feito, " +
                    "exclusivamente, mediante pagamento antecipado.Para registro do pagamento, o cliente " +
                    "contata a pousada através dos veículos de contato(telefone e WhatsApp); " +
                    "O pagamento deverá ser efetuado por meio de: Cartão de débito/crédito (apenas presencialmente), " +
                    "Dinheiro (apenas presencialmente), Transferência bancária, Depósito bancário, Pix. " +
                    "Caso o cliente queira pagar antecipadamente de forma não presencial utilizando " +
                    "as três últimas opções do tópico anterior, é necessário entrar em contato com a " +
                    "pousada, (contato ficará disponível no site e aplicativo), para obter as" +
                    "informações para pagamento, juntamente com a devida autorização.";
            }
            if (!IsPostBack)
            {
                pnlDescricao.Visible = false;
                pnlDescricao.Enabled = false;
                btnVoltar.Visible = false;
                btnVoltar.Enabled = false;
                if (Request["txtConfirmacao"] == null)
                {
                    Response.Redirect("~/wAcomodacoes.aspx");
                }
                #region Adiciona as informações dos chalés estão na lista da wAcomodações
                RadioButtonList rbl = (RadioButtonList)Page.PreviousPage.FindControl("RadioBtnList");
                if (rbl.SelectedIndex == 0)
                {
                    imgChale.ImageUrl = PreviousPage.UrlChale1[0];
                    imgInterior1.ImageUrl = PreviousPage.UrlStandardInterior[0];
                    imgInterior2.ImageUrl = PreviousPage.UrlStandardInterior[1];
                    ImgInterior3.ImageUrl = PreviousPage.UrlStandardInterior[2];
                    lblTipoChale.Text = PreviousPage.Categoria[0];
                    lblDescricaoChale.Text = PreviousPage.Descricao[0];
                    lblValorDiaria.Text = PreviousPage.ValorDiaria[0].ToString("F2");
                    TipoChaleSelecionado = PreviousPage.Categoria[0];
                    ValorDiariaSelecionada = PreviousPage.ValorDiaria[0];
                    lblIdChale.Text = PreviousPage.ChaleId[0].ToString();
                }
                else if (rbl.SelectedIndex == 1)
                {
                    imgChale.ImageUrl = PreviousPage.UrlChale1[1];
                    imgInterior1.ImageUrl = PreviousPage.UrlStandardInterior[0];
                    imgInterior2.ImageUrl = PreviousPage.UrlStandardInterior[1];
                    ImgInterior3.ImageUrl = PreviousPage.UrlStandardInterior[2];
                    lblTipoChale.Text = PreviousPage.Categoria[0];
                    lblDescricaoChale.Text = PreviousPage.Descricao[0];
                    lblValorDiaria.Text = PreviousPage.ValorDiaria[0].ToString("F2");
                    TipoChaleSelecionado = PreviousPage.Categoria[0];
                    ValorDiariaSelecionada = PreviousPage.ValorDiaria[0];
                    lblIdChale.Text = PreviousPage.ChaleId[1].ToString();
                }
                else if (rbl.SelectedIndex == 2)
                {
                    imgChale.ImageUrl = PreviousPage.UrlChale1[2];
                    imgInterior1.ImageUrl = PreviousPage.UrlStandardInterior[0];
                    imgInterior2.ImageUrl = PreviousPage.UrlStandardInterior[1];
                    ImgInterior3.ImageUrl = PreviousPage.UrlStandardInterior[2];
                    lblTipoChale.Text = PreviousPage.Categoria[0];
                    lblDescricaoChale.Text = PreviousPage.Descricao[0];
                    lblValorDiaria.Text = PreviousPage.ValorDiaria[0].ToString("F2");
                    TipoChaleSelecionado = PreviousPage.Categoria[0];
                    ValorDiariaSelecionada = PreviousPage.ValorDiaria[0];
                    lblIdChale.Text = PreviousPage.ChaleId[2].ToString();
                }
                else if (rbl.SelectedIndex == 3)
                {
                    imgChale.ImageUrl = PreviousPage.UrlChale1[3];
                    imgInterior1.ImageUrl = PreviousPage.UrlStandardInterior[0];
                    imgInterior2.ImageUrl = PreviousPage.UrlStandardInterior[1];
                    ImgInterior3.ImageUrl = PreviousPage.UrlStandardInterior[2];
                    lblTipoChale.Text = PreviousPage.Categoria[0];
                    lblDescricaoChale.Text = PreviousPage.Descricao[0];
                    lblValorDiaria.Text = PreviousPage.ValorDiaria[0].ToString("F2");
                    TipoChaleSelecionado = PreviousPage.Categoria[0];
                    ValorDiariaSelecionada = PreviousPage.ValorDiaria[0];
                    lblIdChale.Text = PreviousPage.ChaleId[3].ToString();
                }
                else if (rbl.SelectedIndex == 4)
                {
                    imgChale.ImageUrl = PreviousPage.UrlChale1[4];
                    imgInterior1.ImageUrl = PreviousPage.UrlStandardInterior[0];
                    imgInterior2.ImageUrl = PreviousPage.UrlStandardInterior[1];
                    ImgInterior3.ImageUrl = PreviousPage.UrlStandardInterior[2];
                    lblTipoChale.Text = PreviousPage.Categoria[0];
                    lblDescricaoChale.Text = PreviousPage.Descricao[0];
                    lblValorDiaria.Text = PreviousPage.ValorDiaria[0].ToString("F2");
                    TipoChaleSelecionado = PreviousPage.Categoria[0];
                    ValorDiariaSelecionada = PreviousPage.ValorDiaria[0];
                    lblIdChale.Text = PreviousPage.ChaleId[4].ToString();
                }
                else if (rbl.SelectedIndex == 5)
                {
                    imgChale.ImageUrl = PreviousPage.UrlChale1[5];
                    imgInterior1.ImageUrl = PreviousPage.UrlStandardInterior[0];
                    imgInterior2.ImageUrl = PreviousPage.UrlStandardInterior[1];
                    ImgInterior3.ImageUrl = PreviousPage.UrlStandardInterior[2];
                    lblTipoChale.Text = PreviousPage.Categoria[0];
                    lblDescricaoChale.Text = PreviousPage.Descricao[0];
                    lblValorDiaria.Text = PreviousPage.ValorDiaria[0].ToString("F2");
                    TipoChaleSelecionado = PreviousPage.Categoria[0];
                    ValorDiariaSelecionada = PreviousPage.ValorDiaria[0];
                    lblIdChale.Text = PreviousPage.ChaleId[5].ToString();
                }
                else if (rbl.SelectedIndex == 6)
                {
                    imgChale.ImageUrl = PreviousPage.UrlChale1[6];
                    imgInterior1.ImageUrl = PreviousPage.UrlSuperiorInterior[0];
                    imgInterior2.ImageUrl = PreviousPage.UrlSuperiorInterior[1];
                    ImgInterior3.ImageUrl = PreviousPage.UrlSuperiorInterior[2];
                    lblTipoChale.Text = PreviousPage.Categoria[1];
                    lblDescricaoChale.Text = PreviousPage.Descricao[1];
                    lblValorDiaria.Text = PreviousPage.ValorDiaria[1].ToString("F2");
                    TipoChaleSelecionado = PreviousPage.Categoria[1];
                    ValorDiariaSelecionada = PreviousPage.ValorDiaria[1];
                    lblIdChale.Text = PreviousPage.ChaleId[6].ToString();
                }
                else if (rbl.SelectedIndex == 7)
                {
                    imgChale.ImageUrl = PreviousPage.UrlChale1[7];
                    imgInterior1.ImageUrl = PreviousPage.UrlSuperiorInterior[0];
                    imgInterior2.ImageUrl = PreviousPage.UrlSuperiorInterior[1];
                    ImgInterior3.ImageUrl = PreviousPage.UrlSuperiorInterior[2];
                    lblTipoChale.Text = PreviousPage.Categoria[1];
                    lblDescricaoChale.Text = PreviousPage.Descricao[1];
                    lblValorDiaria.Text = PreviousPage.ValorDiaria[1].ToString("F2");
                    TipoChaleSelecionado = PreviousPage.Categoria[1];
                    ValorDiariaSelecionada = PreviousPage.ValorDiaria[1];
                    lblIdChale.Text = PreviousPage.ChaleId[7].ToString();
                }
                else if (rbl.SelectedIndex == 8)
                {
                    imgChale.ImageUrl = PreviousPage.UrlChale1[8];
                    imgInterior1.ImageUrl = PreviousPage.UrlMasterInterior[0];
                    imgInterior2.ImageUrl = PreviousPage.UrlMasterInterior[1];
                    ImgInterior3.ImageUrl = PreviousPage.UrlMasterInterior[2];
                    lblTipoChale.Text = PreviousPage.Categoria[2];
                    lblDescricaoChale.Text = PreviousPage.Descricao[1];
                    lblValorDiaria.Text = PreviousPage.ValorDiaria[2].ToString("F2");
                    TipoChaleSelecionado = PreviousPage.Categoria[2];
                    ValorDiariaSelecionada = PreviousPage.ValorDiaria[2];
                    lblIdChale.Text = PreviousPage.ChaleId[8].ToString();
                }
                else if (rbl.SelectedIndex == 9)
                {
                    imgChale.ImageUrl = PreviousPage.UrlChale1[9];
                    imgInterior1.ImageUrl = PreviousPage.UrlMasterInterior[0];
                    imgInterior2.ImageUrl = PreviousPage.UrlMasterInterior[1];
                    ImgInterior3.ImageUrl = PreviousPage.UrlMasterInterior[2];
                    lblTipoChale.Text = PreviousPage.Categoria[2];
                    lblDescricaoChale.Text = PreviousPage.Descricao[1];
                    lblValorDiaria.Text = PreviousPage.ValorDiaria[2].ToString("F2");
                    TipoChaleSelecionado = PreviousPage.Categoria[2];
                    ValorDiariaSelecionada = PreviousPage.ValorDiaria[2];
                    lblIdChale.Text = PreviousPage.ChaleId[9].ToString();
                }

                ddlFormaPagamento.Items.Add("Dinheiro");
                ddlFormaPagamento.Items.Add("Cartão de débito");
                ddlFormaPagamento.Items.Add("Cartão de crédito");
                ddlFormaPagamento.Items.Add("Transferência bancária");
                ddlFormaPagamento.Items.Add("Depósito bancário");
                ddlFormaPagamento.Items.Add("PIX");

                txtQtdAdulto.Text = "0";
                txtQtdCrianca.Text = "0";

                #endregion

            }
        }

        private void CalculaValorTotal()
        {
            TimeSpan duracao = CheckOut.Subtract(CheckIn);
            int diasTotais = (int)duracao.TotalDays;
            QtdDias = diasTotais + 1;
            ValorTotal = (ValorDiariaSelecionada * QtdDias) +
                (ValorDiariaSelecionada * 10 / 100) * QtdHospedes;
        }

        protected void btnSalvarReserva_Click(object sender, EventArgs e)
        {
            try
            {
                #region Validações de informações de entrada
                int qtdAdulto = int.Parse(txtQtdAdulto.Text);
                int qtdCrianca = int.Parse(txtQtdCrianca.Text);
                if (int.Parse(txtQtdAdulto.Text) < 0)
                {
                    txtQtdCrianca.Text = "0";
                    txtQtdAdulto.Text = "0";
                    Response.Write("<script> alert ('O número de adultos ou crianças não pode ser " +
                        "negativo'); </script>");
                    txtQtdAdulto.Focus();
                    return;
                }
                else if (calendarCheckIn.SelectedDate.Equals(DateTime.Parse("01/01/0001")) ||
                         calendarCheckOut.SelectedDate.Equals(DateTime.Parse("01/01/0001")))
                {
                    Response.Write("<script> alert ('Selecione a data de check-in e check-out para " +
                        "continuar.'); </script>");
                    txtQtdAdulto.Focus();
                    return;
                }
                else if (calendarCheckIn.SelectedDate < DateTime.Now.Date ||
                         calendarCheckOut.SelectedDate < DateTime.Now.Date)
                {
                    Response.Write("<script> alert ('A data de check-in ou check-out " +
                        "não podem ser anteriores a " + DateTime.Today.ToShortDateString() + ".'); </script>");
                    txtQtdAdulto.Focus();
                    return;
                }
                else if (calendarCheckIn.SelectedDate > calendarCheckOut.SelectedDate)
                {
                    Response.Write("<script> alert ('A data de check-out não pode ser anterior " +
                        "a data de check-in'); </script>");
                    txtQtdAdulto.Focus();
                    return;
                }
                else if (lblTipoChale.Text.Equals("Chalé Standard"))
                {
                    qtdAdulto = int.Parse(txtQtdAdulto.Text);
                    qtdCrianca = int.Parse(txtQtdCrianca.Text);

                    if (qtdAdulto + qtdCrianca > 3)
                    {
                        txtQtdCrianca.Text = "0";
                        txtQtdAdulto.Text = "0";
                        Response.Write("<script> alert ('Para chalés Standard, o número máximo de " +
                            "hóspedes é 4, contando com você.'); </script>");
                        txtQtdAdulto.Focus();
                        return;
                    }
                }
                else if (lblTipoChale.Text.Equals("Chalé Superior") ||
                         lblTipoChale.Text.Equals("Chalé Master"))
                {
                    if (qtdAdulto + qtdCrianca > 2)
                    {
                        txtQtdCrianca.Text = "0";
                        txtQtdAdulto.Text = "0";
                        Response.Write("<script> alert ('Para chalés Superior ou Master, o número máximo de " +
                            "hóspedes é 3, contando com você.'); </script>");
                        txtQtdAdulto.Focus();
                        return;
                    }
                }

#endregion


                pnlDescricao.Visible = true;
                pnlDescricao.Enabled = true;
                btnSalvarReserva.Enabled = false;
                txtQtdAdulto.Enabled = false;
                txtQtdCrianca.Enabled = false;
                calendarCheckIn.Enabled = false;
                calendarCheckOut.Enabled = false;
                btnSalvarReserva.BackColor = System.Drawing.Color.LightGray;

                QtdHospedes = int.Parse(txtQtdAdulto.Text) + int.Parse(txtQtdCrianca.Text);
                CheckIn = calendarCheckIn.SelectedDate;
                CheckOut = calendarCheckOut.SelectedDate;
                TipoChaleSelecionado = lblTipoChale.Text;
                DescricaoChaleSelcionada = lblDescricaoChale.Text;
                ValorDiariaSelecionada = double.Parse(lblValorDiaria.Text);
                IdChaleSelecionado = int.Parse(lblIdChale.Text);
                CalculaValorTotal();

                QtdHospedes = int.Parse(txtQtdAdulto.Text) + int.Parse(txtQtdCrianca.Text);
                CheckIn = calendarCheckIn.SelectedDate;
                CheckOut = calendarCheckOut.SelectedDate;
                TipoChaleSelecionado = lblTipoChale.Text;
                DescricaoChaleSelcionada = lblDescricaoChale.Text;
                ValorDiariaSelecionada = double.Parse(lblValorDiaria.Text);
                
                TimeSpan diasAteCheckIn = CheckIn.Date.Subtract(DateTime.Today);
                int diasTotais = (int)diasAteCheckIn.TotalDays;

                if (diasTotais <= 3)
                {
                    FormaPagamentoSelecionada = "*Como seu check-in ocorrerá dentro dos próximos três dias, o pagamento será " +
                "realizado presencialmente.";
                }
                else
                {
                    FormaPagamentoSelecionada = "*Como seu check-in não ocorrerá dentro dos próximos três dias, será " +
                "necessário nos contatar pelo telefone (11) 21234-5678, para obter informações sobre a realização do pagamento. Caso " +
                "aprovado, a reserva será confirmada.";
                }

                lblTipoChaleConfirmacao.Text = TipoChaleSelecionado;
                lblDescricaoChaleConfirmacao.Text = DescricaoChaleSelcionada;
                lblDescricaoPagamento.Text = FormaPagamentoSelecionada;
                lblValorDiariaConfirmacao.Text = ValorDiariaSelecionada.ToString("F2");
                lblValorTotal.Text = ValorTotal.ToString("F2");

                btnConfirmarReserva.Visible = true;
                btnConfirmarReserva.Enabled = true;
                btnConfirmarReserva.Focus();
            }
            catch (Exception msg)
            {

                Response.Write("<script> alert ('" + msg.Message + "'); </script>");
            }
        }

        protected void btnSair_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Page_Load(sender, e);
        }

        protected void calendarCheckIn_SelectionChanged(object sender, EventArgs e)
        {
            calendarCheckOut.Focus();
        }

        protected void calendarCheckOut_SelectionChanged(object sender, EventArgs e)
        {
            txtQtdAdulto.Focus();
        }

        protected void btnCancelarReserva_Click(object sender, EventArgs e)
        {
            pnlDescricao.Visible = false;
            pnlDescricao.Enabled = false;
            btnSalvarReserva.Enabled = true;
            txtQtdAdulto.Enabled = true;
            txtQtdCrianca.Enabled = true;
            calendarCheckIn.Enabled = true;
            calendarCheckOut.Enabled = true;
            btnSalvarReserva.BackColor = System.Drawing.Color.DarkCyan;
            btnSalvarReserva.Focus();
        }

        protected void btnConfirmarReserva_Click(object sender, EventArgs e)
        {
            try
            {
                IdChaleSelecionado = int.Parse(lblIdChale.Text);
                var reserva = new RecantoWeb.Entities.Post.Reserva
                {

                    DataCheckIn = calendarCheckIn.SelectedDate,
                    DataCheckOut = calendarCheckOut.SelectedDate,
                    Acompanhantes = int.Parse(txtQtdAdulto.Text) + int.Parse(txtQtdCrianca.Text),


                    Acomodacao = new Acomodacao
                    {
                        Id = IdChaleSelecionado
                    },
                    Pagamento = new Pagamento
                    {
                        TipoPagamento = new TipoPagamento
                        {
                            Id = ddlFormaPagamento.SelectedIndex + 1
                        }
                    },
                    Hospede = new HospedePost
                    {
                        Id = int.Parse(Request.Cookies["IdUsuario"].Value),
                    },
                };

                var post = _reservaBusiness.Inserir(reserva);

                if (post.StatusCode == 201)
                {
                    Response.Write($"<script> alert ('{post.Mensagem}'); </script>");

                    if (lblDescricaoPagamento.Text.Equals("*Como seu check-in ocorrerá dentro dos próximos três dias, o pagamento será " +
                    "realizado presencialmente."))
                    {
                        Response.Write("<script>alert('Sua reserva está confirmada! Agradecemos pela preferência! =)'); </script>");
                        btnConfirmarReserva.Enabled = false;
                        btnConfirmarReserva.Visible = false;
                        lblTituloConfirmacao.Text = "Reserva iniciada!";                        
                        btnCancelarReserva.Visible = false;
                        lblTituloConfirmacao.ForeColor = System.Drawing.Color.SteelBlue;
                        lblTituloConfirmacao.Font.Bold = true;
                        btnVoltar.Visible = true;
                        btnVoltar.Enabled = true;
                        btnVoltar.Focus();
                    }
                    else
                    {
                        Response.Write("<script>alert('Aguardamos seu contato nas próximas 48h para confirmação de sua reserva!'); </script>");
                        btnConfirmarReserva.Enabled = false;
                        btnConfirmarReserva.Visible = false;
                        lblTituloConfirmacao.Text = "Reserva iniciada!";                        
                        btnCancelarReserva.Visible = false;
                        lblTituloConfirmacao.ForeColor = System.Drawing.Color.SteelBlue;
                        lblTituloConfirmacao.Font.Bold = true;
                        btnVoltar.Visible = true;
                        btnVoltar.Enabled = true;
                        btnVoltar.Focus();
                    }
                }
                else
                {
                    Response.Write($"<script> alert ('{post.Mensagem}'); </script>");
                    btnConfirmarReserva.Visible = false;
                    btnConfirmarReserva.Enabled = false;
                    lblTituloConfirmacao.Text = "*Clique em voltar e escolha outra data.";
                    return;
                }
            }
            catch (Exception msg)
            {

                Response.Write($"<script>alert('{msg.Message}'); </script>"); ;
            }
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/wTelaPrincipal.aspx");
        }
    }
}