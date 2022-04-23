using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RecantoWeb
{
    public class Categoria
    {
        public List<string> TipoCategoria { get; set; } = new List<string>();
        public List<double> ValorDiaria { get; set; } = new List<double>();

        public Categoria()
        {
        }
    }
}