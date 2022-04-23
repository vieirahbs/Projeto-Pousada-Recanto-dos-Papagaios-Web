using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;

namespace RecantoWeb
{
    public class Chale
    {
        public string Status { get; set; }
        public int ID { get; set; }
        public string Nome { get; set; }

        public string Categoria;
        public string Foto { get; set; }
        public string Descricao { get; set; }
        public double ValorDiaria { get; set; }
        public List<Chale> ListaChales { get; set; } = new List<Chale>();

        public Chale()
        {
        }

        public Chale(int id, string nome, string foto, string descricao, double valorDiaria)
        {
            ID = id;
            Nome = nome;
            Foto = foto;
            Descricao = descricao;
            ValorDiaria = valorDiaria;
        }
    }
}