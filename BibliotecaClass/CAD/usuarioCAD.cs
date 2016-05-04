using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AplicacionWeb
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

        public bool asistir(eventoEN evento)
        {
            
            usuarioEN usuario = new usuarioEN();
            //Muestra usuario

            return true;
        }

        public usuarioEN borrarAsistencia(eventoEN evento)
        {
            usuarioEN usuario = new usuarioEN();
            //Muestra usuario

            return usuario;
        }

        public usuarioEN borrarInvitacion(eventoEN evento)
        {
            usuarioEN usuario = new usuarioEN();
            //Muestra usuario

            return usuario;
        }
    }
}