using RecantoWeb.Entities.Post;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RecantoWeb
{
    public class AdicionaInformacoes
    {
        #region Adiciona informações do Hospede (Login, Endereço e Hospede)
        public Login AdicionaLogin()
        {
            Login login = new Login("a", "1234");
            return login;
        }

        public Endereco AdicionaEndereco()
        {
            Endereco endereco = new Endereco("03535110", "Av Penha de França", 
                "400", "Ap24 BL02", "Penha", "São Paulo", "SP", "Brasil");
            return endereco;
        }

        public Hospede AdicionaHospede()
        {
            Endereco endereco = AdicionaEndereco();
            Login login = AdicionaLogin();
            Hospede hospede = new Hospede("André de Souza Vieira", "a@gmail.com", 
                "23047845612", DateTime.Parse("03/01/1991"), endereco, login);

            return hospede;
        }
        #endregion

        public Categoria AdicionaCategoria()
        {
            Categoria categoria = new Categoria();

            categoria.TipoCategoria.Add("Standard");
            categoria.TipoCategoria.Add("Superior");
            categoria.TipoCategoria.Add("Master");

            categoria.ValorDiaria.Add(100.0);
            categoria.ValorDiaria.Add(150.0);
            categoria.ValorDiaria.Add(200.0);

            return categoria;
        }

        public List<Chale> AdicionaChale()
        {
            Chale chale = new Chale();

            Chale chale1 = new Chale(1, "Chalé 1",
                "~/Resources/ChalesDetalhes1.jpg", 
                "4 hospedes - 2 quartos - Camas double - 1 banheiro", 100.0);
            RetornaCategoriaChale(chale1);
            chale.ListaChales.Add(chale1);

            Chale chale2 = new Chale(2, "Chalé 1",
                "~/Resources/ChalesDetalhes2.jpg",
                "4 hospedes - 2 quartos - Camas double - 1 banheiro", 100.0);
            RetornaCategoriaChale(chale2);
            chale.ListaChales.Add(chale2);

            Chale chale3 = new Chale(3, "Chalé 1",
                "~/Resources/ChalesDetalhes3.jpg",
                "4 hospedes - 2 quartos - Camas double - 1 banheiro", 100.0);
            RetornaCategoriaChale(chale3);
            chale.ListaChales.Add(chale3);

            Chale chale4 = new Chale(4, "Chalé 1",
                "~/Resources/ChalesDetalhes4.jpg",
                "4 hospedes - 2 quartos - Camas double - 1 banheiro", 100.0);
            RetornaCategoriaChale(chale4);
            chale.ListaChales.Add(chale4);

            Chale chale5 = new Chale(5, "Chalé 1",
                "~/Resources/ChalesDetalhes5.jpg",
                "4 hospedes - 2 quartos - Camas double - 1 banheiro", 100.0);
            RetornaCategoriaChale(chale5);
            chale.ListaChales.Add(chale5);

            Chale chale6 = new Chale(6, "Chalé 1",
                "~/Resources/ChalesDetalhes6.jpg",
                "4 hospedes - 2 quartos - Camas double - 1 banheiro", 100.0);
            RetornaCategoriaChale(chale6);
            chale.ListaChales.Add(chale6);

            Chale chale7 = new Chale(7, "Chalé 1",
                "~/Resources/ChalesDetalhes7.jpg",
                "4 hospedes - 2 quartos - Camas double - 1 banheiro", 150.0);
            RetornaCategoriaChale(chale7);
            chale.ListaChales.Add(chale7);

            Chale chale8 = new Chale(8, "Chalé 1",
                "~/Resources/ChalesDetalhes8.jpg",
                "4 hospedes - 2 quartos - Camas double - 1 banheiro", 150.0);
            RetornaCategoriaChale(chale8);
            chale.ListaChales.Add(chale8);

            Chale chale9 = new Chale(9, "Chalé 1",
                "~/Resources/ChalesDetalhes9.jpg",
                "4 hospedes - 2 quartos - Camas double - 1 banheiro", 200.0);
            RetornaCategoriaChale(chale9);
            chale.ListaChales.Add(chale9);

            Chale chale10 = new Chale(10, "Chalé 1",
                "~/Resources/ChalesDetalhes10.jpg",
                "4 hospedes - 2 quartos - Camas double - 1 banheiro", 200.0);
            RetornaCategoriaChale(chale10);
            chale.ListaChales.Add(chale10);

            return chale.ListaChales;
        }

        private void RetornaCategoriaChale(Chale chale)
        {
            int i = 1;
            foreach (Chale item in chale.ListaChales)
            {
                if (item.ID == i)
                {
                    if (i <= 6)
                    {
                        chale.Categoria = "Standard";
                    }
                    else if (i <= 8)
                    {
                        chale.Categoria = "Superior";
                    }
                    else
                    {
                        chale.Categoria = "Master";
                    }
                }
                i++;
            }
        }   

        public List<Reserva> AdicionaReserva()
        {
            List<Chale> listaChale = AdicionaChale();
            Hospede hospede = AdicionaHospede();

            Reserva reserva = new Reserva();

            Reserva reserva0 = new Reserva(hospede, listaChale[5], 4, 
                DateTime.Parse("07/03/2020"), DateTime.Parse("18/03/2020"), 
                false, false, false);
            RetornaCódigoReserva(reserva0);
            AdicionaFormaPagamento(reserva0);
            reserva.CalculaValorTotal(reserva0);
            reserva.StatusReserva = RetornaStatusReserva(reserva0);
            reserva.ListaReserva.Add(reserva0);

            Reserva reserva1 = new Reserva(hospede, listaChale[7], 4, 
                DateTime.Parse("07/03/2020"), DateTime.Parse("18/03/2020"), 
                true, true, true);
            RetornaCódigoReserva(reserva1);
            AdicionaFormaPagamento(reserva1);
            reserva.CalculaValorTotal(reserva1);
            reserva.StatusReserva = RetornaStatusReserva(reserva1);
            reserva.ListaReserva.Add(reserva1);

            Reserva reserva2 = new Reserva(hospede, listaChale[9], 2,
                DateTime.Parse("31/10/2021"), DateTime.Parse("15/11/2021"),
                true, true, false);
            RetornaCódigoReserva(reserva2);
            AdicionaFormaPagamento(reserva2);
            reserva.CalculaValorTotal(reserva2);
            reserva.StatusReserva = RetornaStatusReserva(reserva2);
            reserva.ListaReserva.Add(reserva2);

            Reserva reserva3 = new Reserva(hospede, listaChale[2], 3,
                DateTime.Parse("10/11/2021"), DateTime.Parse("20/11/2021"),
                true, false, false);
            RetornaCódigoReserva(reserva3);
            AdicionaFormaPagamento(reserva3);
            reserva.CalculaValorTotal(reserva3);
            reserva.StatusReserva = RetornaStatusReserva(reserva3);
            reserva.ListaReserva.Add(reserva3);

            return reserva.ListaReserva;
        }

        private void AdicionaFormaPagamento(Reserva reserva)
        {
            TimeSpan diasAteCheckIn = reserva.DataCheckIn.Date.Subtract(DateTime.Today);
            int diasTotais = (int)diasAteCheckIn.TotalDays;

            if (diasTotais <= 3)
            {
                reserva.FormaPagamento = "Presencial";
            }
            else
            {
                reserva.FormaPagamento = "Antecipado";
            }
        }

        private int R = 1;
        private void RetornaCódigoReserva(Reserva reserva)
        {
            int codReserva = 20210 + reserva.Chale.ID;

            reserva.CodigoReserva = codReserva.ToString() + R;
            R++;
        }

        private string RetornaStatusReserva(Reserva reserva)
        {
            StatusReserva statusReserva = new StatusReserva();
            ChaleStatus chaleStatus = new ChaleStatus();

            if (reserva.CheckInStatus == true
            && reserva.CheckInPagamento == true && reserva.CheckOutStatus == false)
            {
                reserva.StatusReserva = statusReserva.Confirmada;
                reserva.Chale.Status = chaleStatus.Ocupado;
            }
            else if (reserva.CheckInStatus == true
                && reserva.CheckInPagamento == false && reserva.CheckOutStatus == false)
            {
                reserva.StatusReserva = statusReserva.Iniciada;
                reserva.Chale.Status = chaleStatus.Iniciada;
            }
            else if (reserva.CheckInStatus == true
                && reserva.CheckInPagamento == true && reserva.CheckOutStatus == true)
            {
                reserva.StatusReserva = statusReserva.Finalizada;
                reserva.Chale.Status = chaleStatus.Disponivel;
            }
            else if (reserva.CheckInStatus == false
                && reserva.CheckInPagamento == false && reserva.CheckOutStatus == false)
            {
                reserva.StatusReserva = statusReserva.Cancelada;
                reserva.Chale.Status = chaleStatus.Disponivel;
            }

            return reserva.StatusReserva;
        }

    }
}