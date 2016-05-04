using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AplicacionWeb
{
    public class usuarioEN
    {
        private string correo;
        private string nombre;
        private string apellidos;
        private int edad;
        private string biografia;
        private string imagen;
        private char genero;

        public string Correo
        {
            get { return correo; }
            set { correo = value; }
        }

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public string Apellidos
        {
            get { return apellidos; }
            set { apellidos = value; }
        }

        public int Edad
        {
            get { return edad; }
            set { edad = value; }
        }

        public string Biografia
        {
            get { return biografia; }
            set { biografia = value; }
        }

        public string Imagen
        {
            get { return imagen; }
            set { imagen = value; }
        }

        public char Genero
        {
            get { return genero; }
            set { genero = value; }
        }

   
        public void CrearUsuarioEn(usuarioEN usuario)
        {
            usuarioCAD aux = new usuarioCAD();
            bool ok = false;
            ok = aux.CrearUsuario(usuario);
        }

        public void ActualizarUsuarioEn(usuarioEN usuario)
        {
            usuarioCAD aux = new usuarioCAD();
            bool ok = false;
            ok = aux.ActualizarUsuario(usuario);
        }

        public void BorrarUsuarioEn(usuarioEN usuario)
        {
            usuarioCAD aux = new usuarioCAD();
            bool ok = false;
            ok = aux.BorrarUsuario(usuario);
        }

        public void dameUsuarioEn(string correo)
        {
            usuarioCAD aux = new usuarioCAD();
            usuarioEN aux2 = new usuarioEN();
            aux2 = aux.dameUsuario(correo);
        }

        public void asistirEn(eventoEN evento)
        {
            usuarioCAD aux = new usuarioCAD();
            bool ok = false;
            ok = aux.asistir(evento);
        }

        public void borrarAsistenciaEn(eventoEN evento)
        {
            usuarioCAD aux = new usuarioCAD();
            usuarioEN aux2 = new usuarioEN();
            aux2 = aux.borrarAsistencia(evento);
        }

        public void borrarInvitacionEn(eventoEN evento)
        {
            usuarioCAD aux = new usuarioCAD();
            usuarioEN aux2 = new usuarioEN();
            aux2 = aux.borrarInvitacion(evento);
        }


    }
}