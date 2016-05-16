using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AplicacionWeb
{
    public class comentarioEN
    {
        private int identificador; 
        private string comentario;
        private string fecha;
        private string usuario;
        private int evento;

        public comentarioEN()
        {


        }

        public comentarioEN(string nombre, string comentario, int evento)
        {
            this.identificador = 1;
            this.comentario = comentario;
            this.usuario = nombre;
            this.evento = evento;
        }

        public void BorrarComentarioEn(comentarioEN com)
        {
            comentarioCAD aux = new comentarioCAD();
            bool ok = false;
            ok = aux.BorrarComentario(com);
        }

        public void CrearComentarioEn()
        {
            comentarioCAD aux = new comentarioCAD();
            bool ok = false;
            ok = aux.CrearComentario(this);
        }

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