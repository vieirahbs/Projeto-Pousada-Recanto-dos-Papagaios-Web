using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RecantoWeb
{
    public class Reserva
    {
        public Hospede Hospede { get; set; }
        public Chale Chale { get; set; }
        public string CodigoReserva { get; set; }
        public int Acompanhantes { get; set; }
        public DateTime DataCheckIn { get; set; }
        public DateTime DataCheckOut { get; set; }
        public string StatusReserva { get; set; }
        public bool CheckInStatus { get; set; }
        public bool CheckInPagamento { get; set; }
        public bool CheckOutStatus { get; set; }
        public double ValorTotal { get; set; }
        public string FormaPagamento { get; set; }
        public List<Reserva> ListaReserva { get; set; } = new List<Reserva>();

        public Reserva()
        {
        }

        public Reserva(Hospede hospede, Chale chale, int acompanhantes,
            DateTime dataCheckIn, DateTime dataCheckOut, bool checkInStatus,
            bool checkInPagamento, bool checkOutStatus)
        {
            Hospede = hospede;
            Chale = chale;
            Acompanhantes = acompanhantes;
            DataCheckIn = dataCheckIn;
            DataCheckOut = dataCheckOut;
            CheckInStatus = checkInStatus;
            CheckInPagamento = checkInPagamento;
            CheckOutStatus = checkOutStatus;
        }

        public void CalculaValorTotal(Reserva reserva)
        {
            TimeSpan duracao = reserva.DataCheckOut.Subtract(reserva.DataCheckIn);
            int dias = (int)duracao.TotalDays;

            reserva.ValorTotal = dias * reserva.Chale.ValorDiaria;
        }
    }
}