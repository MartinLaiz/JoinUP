using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.EN
{
    public class comentarioEN
    {
        private int identificador; 
        private string comentario;
        private string fecha;
        private string usuario;
        private int evento;

        public string Comentario
        {
            get { return comentario; }
            set { comentario = value; }
        }

        public string Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }

        public string Usuario
        {
            get { return usuario; }
            set { usuario = value; }
        }

        public int Evento
        {
            get { return evento; }
            set { evento = value; }
        }
        public int Identificador
        {
            get { return identificador; }
            set { identificador = value; }
        }



    }
}