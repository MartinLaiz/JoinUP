using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebApplication1.EN;

namespace WebApplication1.CAD
{
    public class eventoCAD
    {
        private string conexion;

        public eventoCAD(){
            //Adquiere la cadena de conexión desde un único sitio
        }

        public bool Crearevento(eventoEN evento)
        {
            bool ok = false;
            //crear un evento

            return ok;
        }

        public bool ActualizarEvento(eventoEN evento)
        {
            bool ok = false;
            //Actualiza el evento

            return ok;
        }

        public bool BorrarEvento(eventoEN evento)
        {
            bool ok = false;
            //Borra un lugar

            return ok;
        }

        public eventoEN dameEvento(int id)
        {
            eventoEN evento = new eventoEN();
            //Muestra un evento

            return evento;
        }

        public DataSet dameEventoCat(string categoria)
        {
            DataSet dsEvento = null;
            dsEvento = new DataSet();
            return dsEvento;
        }

        public DataSet dameEventoCiudad(string ciudad, string provincia)
        {
            DataSet dsEvento = null;
            dsEvento = new DataSet();
            return dsEvento;
        }

        public DataSet dameEventoLugar(lugarEN lugar)
        {
            DataSet dsEvento = null;
            dsEvento = new DataSet();
            return dsEvento;
        }

        public DataSet eventosDe(lugarEN lugar)
        {
            DataSet dsEvento = null;
            dsEvento = new DataSet();
            return dsEvento;
        }

        public bool invitar(usuarioEN usuario)
        {
            bool invitado = false;

            return invitado;
        }

        public bool eliminarInvitacion(usuarioEN usuario,eventoEN evento)
        {
            bool eliminado = false;

            return eliminado;
        }

    }
}