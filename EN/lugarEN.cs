using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.EN
{
    public class lugarEN
    {
        private string nombre;
        private string direccion; 
        private string descripcion;
        private string foto_lugar;

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }

        public string Foto_lugar
        {
            get { return foto_lugar; }
            set { foto_lugar = value; }
        }

        public string Direccion
        {
            get { return direccion; }
            set { direccion = value; }
        }
    }

     

}