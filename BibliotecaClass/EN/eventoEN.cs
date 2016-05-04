using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace AplicacionWeb
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


        //---------------------------------------------------------------------
        //---------------------------------------------------------------------




        public bool anadirvento(eventoEN evento)
        {
            bool ok = false;
            eventoCAD aux = new eventoCAD();
            //añade un evento
            return ok;
        }


        public bool actualizarEvento(eventoEN evento)
        {
            bool ok = false;
            eventoCAD aux = new eventoCAD();
            //Actualiza el evento

            return ok;
        }

        public bool borrarEvento(eventoEN evento)
        {
            bool ok = false;
            eventoCAD aux = new eventoCAD();
            //Borra un lugar

            return ok;
        }

        public eventoEN dameEvento(int id)
        {
            eventoEN evento = new eventoEN();
            eventoCAD aux = new eventoCAD();
            //Muestra un evento

            return evento;
        }

        public DataSet dameEventosCat(string categoria)
        {
            DataSet dsEvento = null;
            eventoCAD aux = new eventoCAD();
            dsEvento = new DataSet();
            return dsEvento;
        }

        public DataSet dameEventosCiudad(string ciudad, string provincia)
        {
            DataSet dsEvento = null;
            eventoCAD aux = new eventoCAD();
            dsEvento = new DataSet();
            return dsEvento;
        }

        public DataSet dameEventosLugar(lugarEN lugar)
        {
            DataSet dsEvento = null;
            eventoCAD aux = new eventoCAD();
            dsEvento = new DataSet();
            return dsEvento;
        }

        public DataSet dameEventosFecha(DateTime fecha)
        {
            DataSet dsEvento = null;
            eventoCAD aux = new eventoCAD();
            dsEvento = new DataSet();
            return dsEvento;
        }

        public bool invitar(usuarioEN usuario)
        {
            bool invitado = false;
            eventoCAD aux = new eventoCAD();

            return invitado;
        }

        public bool eliminarInvitacion(usuarioEN usuario)
        {
            bool eliminado = false;
            eventoCAD aux = new eventoCAD();

            return eliminado;
        }

        public bool asiste(usuarioEN usuario)
        {
            bool asiste = false;
            eventoCAD aux = new eventoCAD();

            return asiste;
        }

        public DataSet asistentes(usuarioEN usuario)
        {
            DataSet dsUsuarios = null;
            eventoCAD aux = new eventoCAD();
            dsUsuarios = new DataSet();
            return dsUsuarios;
        }

    }
}