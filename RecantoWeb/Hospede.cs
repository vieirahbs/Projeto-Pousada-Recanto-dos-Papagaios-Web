using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RecantoWeb
{
    public class Hospede
    {
        public string Nome { get; set; }
        public string Email { get; set; }
        public string CPF { get; set; }
        public DateTime DataNascimento { get; set; }
        public Endereco Endereco { get; set; }
        public Login Login { get; set; }

        public Hospede()
        {
        }

        public Hospede(string nome, string email, string cPF, DateTime dataNascimento, 
            Endereco endereco, Login login)
        {
            Nome = nome;
            Email = email;
            CPF = cPF;
            DataNascimento = dataNascimento;
            Endereco = endereco;
            Login = login;
        }
    }
}