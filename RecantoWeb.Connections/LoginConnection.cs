using Newtonsoft.Json;
using RecantoWeb.Entities;
using RestSharp;
using System;

namespace RecantoWeb.Connections
{
    public class LoginConnection
    {
        public Login FazerLogin(string login, string senha)
        {
            #region Request

            Login retorno;

            try
            {
                var client = new RestClient("https://localhost:44398/api/V1/Logins");
                client.Timeout = -1;

                var request = new RestRequest(Method.POST);
                request.AddHeader("Content-Type", "application/json");

                var body =
                @"{
                " + "\n" +
                                $@"  ""nomeUsuario"": ""{login}"",
                " + "\n" +
                                $@"  ""senhaUsuario"": ""{senha}""
                " + "\n" +
                @"}";

                request.AddParameter("application/json", body, ParameterType.RequestBody);
                IRestResponse response = client.Execute(request);

                retorno = JsonConvert.DeserializeObject<Login>(response.Content);
            }
            catch (Exception)
            {
                throw;
            }

            #endregion Request

            return retorno;
        }
    }
}
