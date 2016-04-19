using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.EN
{
    public class eventoEN
    {
        private int id; //alomejor string
        private string nombre;
        private string categoria;
        private string foto_evento;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public string Categoria
        {
            get { return categoria; }
            set { categoria = value; }
        }

        public string Foto_evento
        {
            get { return foto_evento; }
            set { foto_evento = value; }
        }


    }
}