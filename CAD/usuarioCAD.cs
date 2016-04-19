using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.CAD
{
    public class usuarioCAD
    {
        //
        private string conexion;

        public usuarioCAD(){
            //Adquiere la cadena de conexión desde un único sitio
        }

        public bool Crear(usuarioEN usuario)
        {
            bool ok = false;
            //crear usuario

            return ok;
        }

        public bool Actualizar(usuarioEN usuario)
        {
            bool ok = false;
            //crear usuario

            return ok;
        }

        public bool Borrar(usuarioEN usuario)
        {
            bool ok = false;
            //crear usuario

            return ok;
        }

        public usuarioEN dameUsuario(string correo)
        {
            usuarioEN usuario = new usuarioEN();
            //crear usuario

            return usuario;
        }



    }
}