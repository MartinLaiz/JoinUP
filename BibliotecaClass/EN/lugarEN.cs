using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AplicacionWeb
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

        public void CrearLugarEn(lugarEN lugar)
        {
            lugarCAD aux = new lugarCAD();
            bool ok = false;
            ok = aux.CrearLugar(lugar);
        }

        public void ActualizarLugarEn(lugarEN lugar)
        {
            lugarCAD aux = new lugarCAD();
            bool ok = false;
            ok = aux.ActualizarLugar(lugar);
        }

        public void BorrarLugarEn(lugarEN lugar)
        {
            lugarCAD aux = new lugarCAD();
            bool ok = false;
            ok = aux.BorrarLugar(lugar);
        }

        public void damelugarEn(string nombre)
        {
            lugarCAD aux = new lugarCAD();
            lugarEN aux2 = new lugarEN();
            aux2 = aux.damelugar(nombre);
        }


    }
}