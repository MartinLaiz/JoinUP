using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
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
    }
}