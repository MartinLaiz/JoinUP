﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.CAD
{
    public class eventoCAD
    {
        //
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

    }
}