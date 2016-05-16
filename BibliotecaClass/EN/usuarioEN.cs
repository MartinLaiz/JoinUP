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
        private string edad;
        private string biografia;
        private string imagen;
        private string genero;
        private string pass;


        public usuarioEN(string username)
        {
            this.correo = username;
            this.nombre = "";
            this.apellidos = "";
            this.edad = "";
            this.biografia = "";
            this.imagen = "";
            this.genero = "";
            this.pass = "";

        }

        public usuarioEN(string usuario, string nombre, string apellidos, string contrasena)
        {
            this.correo = usuario;
            this.nombre = nombre;
            this.apellidos = apellidos;
            this.edad = "01-01-0001";
            this.biografia = "Aun no he especificado mi biografia";
            this.imagen = "/Images/foto_perfil.png";
            this.genero = "1";
            this.pass = contrasena;
            
       }

        public usuarioEN()
        {
            // TODO: Complete member initialization
        }

        public string Pass
        {
            get { return pass; }
            set { pass = value; }
        }

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

        public string Edad
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

        public string Genero
        {
            get { return genero; }
            set { genero = value; }
        }
    }
}