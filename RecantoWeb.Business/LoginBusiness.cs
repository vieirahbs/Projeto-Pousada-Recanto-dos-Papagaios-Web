using RecantoWeb.Connections;
using RecantoWeb.Entities;
using System;

namespace RecantoWeb.Business
{
    public class LoginBusiness
    {
        private readonly LoginConnection _loginConnection;

        public LoginBusiness()
        {
            _loginConnection = new LoginConnection();
        }

        public Login FazerLogin(string login, string senha)
        {
            Login retornoAPI;

            try
            {
                retornoAPI = _loginConnection.FazerLogin(login, senha);
            }
            catch (Exception)
            {
                throw;
            }

            return retornoAPI;
        }

    }
}
