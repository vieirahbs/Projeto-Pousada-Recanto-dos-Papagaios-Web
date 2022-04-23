using RecantoWeb.Business;
using RecantoWeb.Connections.Exceptions;
using RecantoWeb.Entities.Get;
using System;

namespace RecantoWeb
{


    public partial class wHistoricoReservas : System.Web.UI.Page
    {
        private readonly ReservaBusiness _reservaBusiness;

        public wHistoricoReservas()
        {
            _reservaBusiness = new ReservaBusiness();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
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
                }

                if (!IsPostBack)
                {
                    var reserva = _reservaBusiness.Get(Request.Cookies["cpfUsuario"].Value);
                   
                    foreach (ReservaGet item in reserva)
                    {
                        lstCodigoReserva.Items.Add(item.Id.ToString());
                    }
                }
            }
            catch (NotFoundException ex)
            {
                Response.Write($"<script>alert('{ex.Message}')</script>");
                return;
            }
            catch (Exception)
            {
                throw;
            }
        }

        #region Metodos para adicionar detalhes da reserva
        private string AdicionaCategoriaAcomodacao(int idChale)
        {
            string categoria = "";
            if (idChale <= 6)
            {
                categoria = "Standard";
            }
            else if (idChale > 6 && idChale < 8)
            {
                categoria = "Superior";
            }
            else
            {
                categoria = "Master";
            }
            return categoria;
        }

        private string AdicionaDescricaoAcomodacao(int idChale)
        {
            string descricao = "";
            if (idChale <= 6)
            {
                descricao = "4 hospedes - 2 quartos - Camas double - 1 banheiro";
            }
            else
            {
                descricao = "3 hospedes - 2 quartos - Camas double - 1 banheiro";
            }
            return descricao;
        }

        private string AdicionaFormaPagamento(ReservaGet reserva)
        {
            string formaPagamento = "";
            if (reserva.Pagamento.TipoPagamento.Id == 1)
            {
                formaPagamento = "Dinheiro";
            }
            else if (reserva.Pagamento.TipoPagamento.Id == 2)
            {
                formaPagamento = "Cartão de débito";
            }
            else if (reserva.Pagamento.TipoPagamento.Id == 3)
            {
                formaPagamento = "Cartão de crédito";
            }
            else if (reserva.Pagamento.TipoPagamento.Id == 4)
            {
                formaPagamento = "Transferência bancária";
            }
            else if (reserva.Pagamento.TipoPagamento.Id == 5)
            {
                formaPagamento = "Depósito bancário";
            }
            else if (reserva.Pagamento.TipoPagamento.Id == 6)
            {
                formaPagamento = "PIX";
            }
            return formaPagamento;
        }

        #endregion

        protected void btnVerDetalhesReserva_Click(object sender, EventArgs e)
        {
            try
            {
                if (lstCodigoReserva.SelectedIndex.Equals(-1))
                {
                    Response.Write("<script>alert('Selecione o código de reserva que deseja " +
                        "ver os detalhes.')</script>");
                    lstCodigoReserva.Focus();
                    return;
                }
                else
                {
                    Page_Load(sender, e);
                    pnlDetalhesReserva.Visible = true;

                    var reserva = _reservaBusiness.Get(Request.Cookies["cpfUsuario"].Value);

                    foreach (ReservaGet item in reserva)
                    {
                        #region Seleciona foto do chalé
                        if (lstCodigoReserva.SelectedItem.Text.Equals(item.Id.ToString()))
                        {
                            if (item.Acomodacao.Id.Equals(1))
                            {
                                imgChale.ImageUrl = "~/Resources/ChalesDetalhes1.jpg";
                            }
                            else if (item.Acomodacao.Id.Equals(2))
                            {
                                imgChale.ImageUrl = "~/Resources/ChalesDetalhes2.jpg";
                            }
                            else if (item.Acomodacao.Id.Equals(3))
                            {
                                imgChale.ImageUrl = "~/Resources/ChalesDetalhes3.jpg";
                            }
                            else if (item.Acomodacao.Id.Equals(4))
                            {
                                imgChale.ImageUrl = "~/Resources/ChalesDetalhes4.jpg";
                            }
                            else if (item.Acomodacao.Id.Equals(5))
                            {
                                imgChale.ImageUrl = "~/Resources/ChalesDetalhes5.jpg";
                            }
                            else if (item.Acomodacao.Id.Equals(6))
                            {
                                imgChale.ImageUrl = "~/Resources/ChalesDetalhes6.jpg";
                            }
                            else if (item.Acomodacao.Id.Equals(7))
                            {
                                imgChale.ImageUrl = "~/Resources/ChalesDetalhes7.jpg";
                            }
                            else if (item.Acomodacao.Id.Equals(8))
                            {
                                imgChale.ImageUrl = "~/Resources/ChalesDetalhes8.jpg";
                            }
                            else if (item.Acomodacao.Id.Equals(9))
                            {
                                imgChale.ImageUrl = "~/Resources/ChalesDetalhes9.jpg";
                            }
                            else if (item.Acomodacao.Id.Equals(10))
                            {
                                imgChale.ImageUrl = "~/Resources/ChalesDetalhes10.jpg";
                            }
                            #endregion

                            string formaPagamento = AdicionaFormaPagamento(item);
                            string categoriaAcomodacao = AdicionaCategoriaAcomodacao(item.Acomodacao.Id);
                            string descricaoAcomodacao = AdicionaDescricaoAcomodacao(item.Acomodacao.Id);
                            imgChale.Visible = true;
                            lblCodigoReserva.Text = item.Id.ToString();
                            lblNomeChale.Text = item.Acomodacao.Nome;
                            lblCategoriaChale.Text = categoriaAcomodacao;
                            lblDescricaoChale.Text = descricaoAcomodacao;
                            lblCheckIn.Text = item.DataCheckIn.ToString("dd/MM/yyyy dddd");
                            lblCheckOut.Text = item.DataCheckOut.ToString("dd/MM/yyyy dddd");
                            lblValorDiaria.Text = "R$ " + item.PrecoUnitario.ToString("F2");
                            lblValorTotal.Text = "R$ " + item.PrecoTotal.ToString("F2");
                            lblFormaPagamento.Text = formaPagamento;

                            if (item.StatusReserva.Descricao.Equals("Iniciada"))
                            {
                                lblStatusReserva.Text = item.StatusReserva.Descricao;
                                lblStatusReserva.ForeColor = System.Drawing.Color.SteelBlue;
                                btnCancelarReserva.Visible = true;
                                btnCancelarReserva.Enabled = true;
                            }
                            else if (item.StatusReserva.Descricao.Equals("Confirmada"))
                            {
                                lblStatusReserva.Text = item.StatusReserva.Descricao;
                                lblStatusReserva.ForeColor = System.Drawing.Color.Chocolate;
                                btnCancelarReserva.Visible = false;
                                btnCancelarReserva.Enabled = false;
                            }
                            else if (item.StatusReserva.Descricao.Equals("Concluída"))
                            {
                                lblStatusReserva.Text = item.StatusReserva.Descricao;
                                lblStatusReserva.ForeColor = System.Drawing.Color.DarkCyan;
                                btnCancelarReserva.Visible = false;
                                btnCancelarReserva.Enabled = false;
                            }
                            else if (item.StatusReserva.Descricao.Equals("Cancelada"))
                            {
                                lblStatusReserva.Text = item.StatusReserva.Descricao;
                                lblStatusReserva.ForeColor = System.Drawing.Color.IndianRed;
                                btnCancelarReserva.Visible = false;
                                btnCancelarReserva.Enabled = false;
                            }
                            pnlDetalhesReserva.Focus();
                        }
                    }
                }

            }
            catch (Exception msg)
            {
                Response.Write("<script>alert('" + msg.Message + "')</script>");
            }
        }

        protected void btnCancelarReserva_Click(object sender, EventArgs e)
        {
            try
            {
                var reservaGet = _reservaBusiness.Get(Request.Cookies["cpfUsuario"].Value);

                foreach (ReservaGet item in reservaGet)
                {
                    if (lblCodigoReserva.Text.Trim().Equals(item.Id.ToString()))
                    {
                        var reservaDelete = _reservaBusiness.Deletar(item.Id);
                        if (reservaDelete.StatusCode.Equals(200))
                        {
                            reservaGet = _reservaBusiness.Get(Request.Cookies["cpfUsuario"].Value);

                            Response.Write($"<script>alert('{reservaDelete.Mensagem}')</script>");
                            btnCancelarReserva.Visible = false;
                            btnCancelarReserva.Enabled = false;
                            lblStatusReserva.Text = "Cancelada";
                            lblStatusReserva.ForeColor = System.Drawing.Color.IndianRed;
                        }
                        else
                        {
                            Response.Write($"<script>alert('{reservaDelete.Mensagem}')</script>");
                            return;
                        }
                    }
                }
            }
            catch (Exception msg)
            {
                Response.Write($"<script>alert('{msg.Message}')</script>");
            }            
        }

        protected void btnSair_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Page_Load(sender, e);
        }
    }
}