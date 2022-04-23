using RecantoWeb.Connections;
using RecantoWeb.Entities;
using RecantoWeb.Entities.Get;
using RecantoWeb.Entities.Post;
using System;
using System.Collections.Generic;

namespace RecantoWeb.Business
{
    public class ReservaBusiness
    {
        private readonly ReservaConnection _reservaConnection;

        public ReservaBusiness()
        {
            _reservaConnection = new ReservaConnection();
        }

        public RetornoAPI Inserir(Reserva reserva)
        {
            RetornoAPI retornoAPI;

            try
            {
                retornoAPI = _reservaConnection.PostReserva(reserva);
            }
            catch (Exception)
            {
                throw;
            }

            return retornoAPI;
        }

        public List<ReservaGet> Get(string cpf)
        {
            List<ReservaGet> reserva;

            try
            {
                reserva = _reservaConnection.Get(cpf);
            }
            catch (Exception)
            {
                throw;
            }

            return reserva;
        }

        public RetornoAPI Deletar(int idReserva)
        {
            RetornoAPI retornoAPI;

            try
            {
                retornoAPI = _reservaConnection.DeleteReserva(idReserva);
            }
            catch (Exception)
            {
                throw;
            }

            return retornoAPI;
        }
    }
}
