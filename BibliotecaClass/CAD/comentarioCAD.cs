﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;

namespace AplicacionWeb
{
    public class comentarioCAD
    {
        private string conexion;
       

        public comentarioCAD()
        {
            conexion = ConfigurationManager.ConnectionStrings["DataBase"].ToString();
            //Adquiere la cadena de conexión desde un único sitio
        }

        public comentarioEN dameComentario(int identificador) //o (string correo, int id_Evento)
        {
            comentarioEN comentario = new comentarioEN();
            //busca un Comentario

            return comentario;
        }

        public bool BorrarComentario(comentarioEN comentario)
        {
            bool ok = false;
            //Borra un comentario

            return ok;
        }

        public bool CrearComentario(comentarioEN comentario)
        {
            bool ok = false;
            //crear un comentario

            return ok;
        }

    }
}