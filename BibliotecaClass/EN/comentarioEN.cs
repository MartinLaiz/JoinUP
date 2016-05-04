using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AplicacionWeb{

    public class comentarioEN{


        private int identificador; 
        private string comentario;
        private string fecha;
        private string usuario;
        private int evento;

    

        public string Comentario {
            get { return comentario; }
            set { comentario = value; }
        }

        public string Fecha {
            get { return fecha; }
            set { fecha = value; }
        }

        public string Usuario{
            get { return usuario; }
            set { usuario = value; }
        }

        public int Evento {
            get { return evento; }
            set { evento = value; }
        }
        public int Identificador {
            get { return identificador; }
            set { identificador = value; }
        }

        public void dameComentarioEN(int id) {
            comentarioCAD aux2 = new comentarioCAD();
            comentarioEN aux = new comentarioEN();

            aux = aux2.dameComentario(id);
            
        }

        public void BorrarComentarioEn(comentarioEN com) {
            comentarioCAD aux = new comentarioCAD();
            bool ok = false;
            ok = aux.BorrarComentario(com);
        }

        public void CrearComentarioEn(comentarioEN com)
        {
            comentarioCAD aux = new comentarioCAD();
            bool ok = false;
            ok = aux.CrearComentario(com);
        }


    }
}