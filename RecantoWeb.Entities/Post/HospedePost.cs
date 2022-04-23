using System;

namespace RecantoWeb.Entities.Post
{
    public class HospedePost
    {
        public int Id { get; set; }
        public string NomeCompleto { get; set; }
        public string Cpf { get; set; }
        public DateTime DataDeNascimento { get; set; }
        public UsuarioPost Usuario { get; set; }
        public ContatosPost Contatos { get; set; }
        public EnderecoPost Endereco { get; set; }
    }
}
