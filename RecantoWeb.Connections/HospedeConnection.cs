using Newtonsoft.Json;
using RecantoWeb.Entities;
using RecantoWeb.Entities.Get;
using RecantoWeb.Entities.Post;
using RestSharp;
using System;

namespace RecantoWeb.Connections
{
    public class HospedeConnection
    {
        public RetornoAPI PostHospedes(HospedePost hospede)
        {
            #region Request

            RetornoAPI retornoAPI;

            try
            {
                var client = new RestClient("https://localhost:44398/api/V1/Hospedes");
                client.Timeout = -1;

                var request = new RestRequest(Method.POST);
                request.AddHeader("Content-Type", "application/json");

                var body =
                @"{
                    " + "\n" +
                                    $@"  ""nomeCompleto"": ""{hospede.NomeCompleto}"",
                    " + "\n" +
                                    $@"  ""cpf"": ""{hospede.Cpf}"",
                    " + "\n" +
                                    $@"  ""dataDeNascimento"": ""{hospede.DataDeNascimento.ToString("u")}"",
                    " + "\n" +
                                    @"  ""usuario"": {
                    " + "\n" +
                                    $@"    ""nomeUsuario"": ""{hospede.Usuario.NomeUsuario}"",
                    " + "\n" +
                                    $@"    ""senhaUsuario"": ""{hospede.Usuario.SenhaUsuario}""
                    " + "\n" +
                                    @"  },
                    " + "\n" +
                                    @"  ""contatos"": {
                    " + "\n" +
                                    $@"    ""email"": ""{hospede.Contatos.Email}"",
                    " + "\n" +
                                    $@"    ""celular"": ""{hospede.Contatos.Celular}"",
                    " + "\n" +
                                    $@"    ""telefone"": ""{hospede.Contatos.Telefone}""
                    " + "\n" +
                                    @"  },
                    " + "\n" +
                                    @"  ""endereco"": {
                    " + "\n" +
                                    $@"    ""cep"": ""{hospede.Endereco.Cep}"",
                    " + "\n" +
                                    $@"    ""logradouro"": ""{hospede.Endereco.Logradouro}"",
                    " + "\n" +
                                    $@"    ""numero"": ""{hospede.Endereco.Numero}"",
                    " + "\n" +
                                    $@"    ""complemento"": ""{hospede.Endereco.Complemento}"",
                    " + "\n" +
                                    $@"    ""bairro"": ""{hospede.Endereco.Bairro}"",
                    " + "\n" +
                                    $@"    ""cidade"": ""{hospede.Endereco.Cidade}"",
                    " + "\n" +
                                    $@"    ""estado"": ""{hospede.Endereco.Estado}"",
                    " + "\n" +
                                    $@"    ""pais"": ""{hospede.Endereco.Pais}""
                    " + "\n" +
                                    @"  }
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

        public HospedeGet GetHospede(int idHospede)
        {
            #region Request

            HospedeGet hospede;

            try
            {
                var client = new RestClient("https://localhost:44398/api/V1/Hospedes/" + idHospede.ToString());
                client.Timeout = -1;

                var request = new RestRequest(Method.GET);

                IRestResponse response = client.Execute(request);

                hospede = JsonConvert.DeserializeObject<HospedeGet>(response.Content);
            }
            catch (Exception)
            {
                throw;
            }

            #endregion Request

            return hospede;
        }

        public RetornoAPI PutHospede(HospedePost hospede, int id)
        {
            #region Request

            RetornoAPI retornoAPI;

            try
            {
                var client = new RestClient("https://localhost:44398/api/V1/Hospedes/" + id.ToString());

                client.Timeout = -1;

                var request = new RestRequest(Method.PUT);

                request.AddHeader("Content-Type", "application/json");

                var body =
                @"{
                    " + "\n" +
                                    $@"  ""nomeCompleto"": ""{hospede.NomeCompleto}"",
                    " + "\n" +
                                    $@"  ""cpf"": ""{hospede.Cpf}"",
                    " + "\n" +
                                    $@"  ""dataDeNascimento"": ""{hospede.DataDeNascimento.ToString("u")}"",
                    " + "\n" +
                                    @"  ""usuario"": {
                    " + "\n" +
                                    $@"    ""nomeUsuario"": ""{hospede.Usuario.NomeUsuario}"",
                    " + "\n" +
                                    $@"    ""senhaUsuario"": ""{hospede.Usuario.SenhaUsuario}""
                    " + "\n" +
                                    @"  },
                    " + "\n" +
                                    @"  ""contatos"": {
                    " + "\n" +
                                    $@"    ""email"": ""{hospede.Contatos.Email}"",
                    " + "\n" +
                                    $@"    ""celular"": ""{hospede.Contatos.Celular}"",
                    " + "\n" +
                                    $@"    ""telefone"": ""{hospede.Contatos.Telefone}""
                    " + "\n" +
                                    @"  },
                    " + "\n" +
                                    @"  ""endereco"": {
                    " + "\n" +
                                    $@"    ""cep"": ""{hospede.Endereco.Cep}"",
                    " + "\n" +
                                    $@"    ""logradouro"": ""{hospede.Endereco.Logradouro}"",
                    " + "\n" +
                                    $@"    ""numero"": ""{hospede.Endereco.Numero}"",
                    " + "\n" +
                                    $@"    ""complemento"": ""{hospede.Endereco.Complemento}"",
                    " + "\n" +
                                    $@"    ""bairro"": ""{hospede.Endereco.Bairro}"",
                    " + "\n" +
                                    $@"    ""cidade"": ""{hospede.Endereco.Cidade}"",
                    " + "\n" +
                                    $@"    ""estado"": ""{hospede.Endereco.Estado}"",
                    " + "\n" +
                                    $@"    ""pais"": ""{hospede.Endereco.Pais}""
                    " + "\n" +
                                    @"  }
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

        public RetornoAPI DeleteHospede(int idHospede)
        {
            #region Request

            RetornoAPI retornoAPI;

            try
            {
                var client = new RestClient("https://localhost:44398/api/V1/Hospedes/" + idHospede.ToString());
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
