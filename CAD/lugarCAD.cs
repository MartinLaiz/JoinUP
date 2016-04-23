using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.CAD
{
    public class lugarCAD
    {
        //
        private string conexion;

        public lugarCAD(){
            //Adquiere la cadena de conexión desde un único sitio
        }

        public bool CrearLugar(lugarEN lugar)
        {
            bool ok = false;
            //crear el lugar

            return ok;
        }

        public bool ActualizarLugar(lugarEN lugar)
        {
            bool ok = false;
            //Actualiza el lugar

            return ok;
        }

        public bool BorrarLugar(lugarEN lugar)
        {
            bool ok = false;
            //Borra un lugar

            return ok;
        }

        public lugarEN damelugar(string nombre)
        {
            lugarEN lugar = new lugarEN();
            //Muestra un lugar

            return lugar;
        }

    }
}