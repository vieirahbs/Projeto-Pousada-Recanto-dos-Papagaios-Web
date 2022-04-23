using System;

namespace RecantoWeb.Entities.Get
{
    public class HospedeGet
    {
        public int Id { get; set; }
        public string NomeCompleto { get; set; }
        public string Cpf { get; set; }
        public DateTime DataDeNascimento { get; set; }
        public UsuarioGet Usuario { get; set; }
        public ContatoGet Contatos { get; set; }
        public EnderecoGet Endereco { get; set; }
    }
}
