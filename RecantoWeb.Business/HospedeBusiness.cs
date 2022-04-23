using RecantoWeb.Connections;
using RecantoWeb.Entities;
using RecantoWeb.Entities.Get;
using RecantoWeb.Entities.Post;
using System;

namespace RecantoWeb.Business
{
    public class HospedeBusiness
    {
        private readonly HospedeConnection _hospedeConnection;

        public HospedeBusiness()
        {
            _hospedeConnection = new HospedeConnection();
        }

        public RetornoAPI Inserir(HospedePost hospede)
        {
            RetornoAPI retornoAPI;

            try
            {
                retornoAPI = _hospedeConnection.PostHospedes(hospede);
            }
            catch (Exception)
            {
                throw;
            }

            return retornoAPI;
        }

        public HospedeGet Obter(int idHospede)
        {
            HospedeGet hospede;

            try
            {
                hospede = _hospedeConnection.GetHospede(idHospede);
            }
            catch (Exception)
            {
                throw;
            }

            return hospede;
        }

        public RetornoAPI Atualizar(HospedePost hospede, int id)
        {
            RetornoAPI retornoAPI;

            try
            {
                retornoAPI = _hospedeConnection.PutHospede(hospede, id);
            }
            catch (Exception)
            {
                throw;
            }

            return retornoAPI;
        }

        public RetornoAPI Deletar(int idHospede)
        {
            RetornoAPI retornoAPI;

            try
            {
                retornoAPI = _hospedeConnection.DeleteHospede(idHospede);
            }
            catch (Exception)
            {
                throw;
            }

            return retornoAPI;
        }

    }
}
