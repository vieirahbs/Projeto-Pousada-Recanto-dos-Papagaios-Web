using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RecantoWeb
{
    public class Endereco
    {
        public string CEP { get; set; }
        public string Logradouro { get; set; }
        public string NumeroResidencial { get; set; }
        public string Complemento { get; set; }
        public string Bairro { get; set; }
        public string Cidade { get; set; }
        public string UF { get; set; }
        public string Pais { get; set; }

        public Endereco()
        {
        }

        public Endereco(string cEP, string logradouro, string numeroResidencial, 
            string complemento, string bairro, string cidade, string uF, string pais)
        {
            CEP = cEP;
            Logradouro = logradouro;
            NumeroResidencial = numeroResidencial;
            Complemento = complemento;
            Bairro = bairro;
            Cidade = cidade;
            UF = uF;
            Pais = pais;
        }
    }
}