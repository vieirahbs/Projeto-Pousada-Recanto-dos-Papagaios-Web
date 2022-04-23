using Newtonsoft.Json;
using RecantoWeb.Connections.Exceptions;
using RecantoWeb.Entities;
using RecantoWeb.Entities.Get;
using RecantoWeb.Entities.Post;
using RestSharp;
using System;
using System.Collections.Generic;

namespace RecantoWeb.Connections
{
    public class ReservaConnection
    {
        public RetornoAPI PostReserva(Reserva reserva)
        {
            #region Request

            RetornoAPI retornoAPI;

            try
            {
                var client = new RestClient("https://localhost:44398/api/V1/Reservas");

                client.Timeout = -1;

                var request = new RestRequest(Method.POST);

                request.AddHeader("Content-Type", "application/json");

                var body = @"{
                    " + "\n" +
                                    $@"  ""idHospede"": {reserva.Hospede.Id},
                    " + "\n" +
                                    $@"  ""idAcomodacao"": {reserva.Acomodacao.Id},
                    " + "\n" +
                                    $@"  ""idPagamento"": {reserva.Pagamento.TipoPagamento.Id},
                    " + "\n" +
                                    $@"  ""dataCheckIn"": ""{reserva.DataCheckIn.ToString("u")}"",
                    " + "\n" +
                                    $@"  ""dataCheckOut"": ""{reserva.DataCheckOut.ToString("u")}"",
                    " + "\n" +
                                    $@"  ""acompanhantes"": {reserva.Acompanhantes}
                    " + "\n" +
                @"}";

                request.AddParameter("application/json", body, ParameterType.RequestBody);

                IRestResponse response = client.Execute(request);

                retornoAPI = JsonConvert.DeserializeObject<RetornoAPI>(response.Content);
            }
            catch (Exception)
            {
                throw;
            }

            #endregion Request

            return retornoAPI;
        }

        public List<ReservaGet> Get(string cpf)
        {
            #region Request

            var reserva = new List<ReservaGet>();

            try
            {
                var client = new RestClient("https://localhost:44398/api/V1/Reservas/" + cpf);

                client.Timeout = -1;

                var request = new RestRequest(Method.GET);

                IRestResponse response = client.Execute(request);

                if ((int)response.StatusCode == 404)
                {
                    throw new NotFoundException("Você ainda não possui reservas cadastradas.");
                }

                reserva = JsonConvert.DeserializeObject<List<ReservaGet>>(response.Content);
            }
            catch (Exception)
            {
                throw;
            }

            #endregion Request

            return reserva;
        }

        public RetornoAPI DeleteReserva(int idReserva)
        {
            #region Request

            RetornoAPI retornoAPI;

            try
            {
                var client = new RestClient("https://localhost:44398/api/V1/Reservas/" + idReserva.ToString());
                client.Timeout = -1;

                var request = new RestRequest(Method.DELETE);

                IRestResponse response = client.Execute(request);

                retornoAPI = JsonConvert.DeserializeObject<RetornoAPI>(response.Content);
            }
            catch (Exception)
            {
                throw;
            }

            #endregion Request

            return retornoAPI;
        }

    }
}
