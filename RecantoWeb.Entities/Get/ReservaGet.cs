using RecantoWeb.Entities.Post;
using System;

namespace RecantoWeb.Entities.Get
{
    public class ReservaGet
    {
            public int Id { get; set; }
            public DateTime DataReserva { get; set; }
            public DateTime DataCheckIn { get; set; }
            public DateTime DataCheckOut { get; set; }
            public int Acompanhantes { get; set; }
            public double PrecoUnitario { get; set; }
            public double PrecoTotal { get; set; }
            public StatusReserva StatusReserva { get; set; }
            public HospedeGet Hospede { get; set; }
            public AcomodacaoGet Acomodacao { get; set; }
            public Pagamento Pagamento { get; set; }
    }
}
