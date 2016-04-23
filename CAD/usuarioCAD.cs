using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication1.EN;

namespace WebApplication1.CAD
{
    public class usuarioCAD
    {
        //
        private string conexion;

        public usuarioCAD(){
            //Adquiere la cadena de conexión desde un único sitio
        }

        public bool CrearUsuario(usuarioEN usuario)
        {
            bool ok = false;
            //crear usuario

            return ok;
        }

        public bool ActualizarUsuario(usuarioEN usuario)
        {
            bool ok = false;
            //Actualiza usuario

            return ok;
        }

        public bool BorrarUsuario(usuarioEN usuario)
        {
            bool ok = false;
            //Borra usuario

            return ok;
        }

        public usuarioEN dameUsuario(string correo)
        {
            usuarioEN usuario = new usuarioEN();
            //Muestra usuario

            return usuario;
        }

        public usuarioEN asistir(eventoEN evento)
        {
            usuarioEN usuario = new usuarioEN();
            //Muestra usuario

            return usuario;
        }
    }
}