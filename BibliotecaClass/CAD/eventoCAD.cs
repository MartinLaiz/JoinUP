using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AplicacionWeb
{
    public class eventoCAD
    {
         SqlConnection connection;
         public eventoCAD()
         {
            connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        }

        public bool anadirvento(eventoEN evento)
        {
            bool ok = false;
            //crear un evento

            return ok;
        }

        public bool actualizarEvento(eventoEN evento)
        {
            bool ok = false;
            //Actualiza el evento

            return ok;
        }

        public bool borrarEvento(eventoEN evento)
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

        public DataSet dameEventosCat(string categoria)
        {
            DataSet dsEvento = null;
            dsEvento = new DataSet();
            return dsEvento;
        }

        public DataSet dameEventosCiudad(string ciudad, string provincia)
        {
            DataSet dsEvento = null;
            dsEvento = new DataSet();
            return dsEvento;
        }

        public DataSet dameEventosLugar(lugarEN lugar)
        {
            DataSet dsEvento = null;
            dsEvento = new DataSet();
            return dsEvento;
        }

        public DataSet dameEventosFecha(DateTime fecha)
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

        public bool eliminarInvitacion(usuarioEN usuario)
        {
            bool eliminado = false;

            return eliminado;
        }

        public bool asiste(usuarioEN usuario)
        {
            bool asiste = false;

            return asiste;
        }

        public DataSet asistentes(usuarioEN usuario)
        {
            DataSet dsUsuarios = null;
            dsUsuarios = new DataSet();
            return dsUsuarios;
        }

        internal DataSet listarEventos(string nombre, string ciudad, string catego)
        {
            DataSet ds = new DataSet();

            string cons = "select * from Evento where Fecha >= '" + DateTime.Now.ToString("dd/MM/yyyy") + "'";
            if (nombre != null)
            {
                cons += " and Nombre = '" + nombre + "'";
            }
            if (catego != null)
            {
                cons += " and Categoria = '" + catego + "'";
            }
            if (ciudad != null)
            {
                cons += " and Ciudad = '" + ciudad + "'";
            }
            SqlDataAdapter da = new SqlDataAdapter(cons, connection);
            da.Fill(ds, "Evento");
            return ds;
        }
    }
}