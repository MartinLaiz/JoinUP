using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AplicacionWeb
{
    public class usuarioCAD
    {

        SqlConnection connection;
        public usuarioCAD(){

            connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            
        }

        public bool CrearUsuario(usuarioEN usuario)
        {
            SqlCommand select = new SqlCommand("Select * from Usuario where Usuario=" + "'" + usuario.Correo + "'",connection);
            connection.Open();
            SqlDataReader lector = select.ExecuteReader();
            
            if (lector.HasRows)//si existe el usuaro no se crea
            {
                connection.Close();
                return false;
            }
            else
            {
                connection.Close();
                SqlCommand insert = new SqlCommand("Insert into Usuario values ('" + usuario.Correo +"','" + usuario.Nombre + "','"+usuario.Apellidos+"','"+ usuario.Biografia +"','" + usuario.Imagen + "','" + usuario.Genero +"','" + usuario.Edad + "','" + usuario.Pass + "');",connection);
                connection.Open();

                int ret = insert.ExecuteNonQuery();//ejecutar la insert

                if (ret > 0)//sihay aceptada se interta
                {
                    connection.Close();
                    return true;
                }
            }
            connection.Close();
            return false;

        }

        public bool ConsultarUsuario(usuarioEN usuario)
        {
            SqlCommand select = new SqlCommand("Select * from Usuario where Usuario=" + "'" + usuario.Correo + "'and pass='"+usuario.Pass+"';",connection);
            connection.Open();
            SqlDataReader lector = select.ExecuteReader();
            
            if (lector.HasRows)//si existe el usuaro no se crea
            {
                connection.Close();
                return true;
            }

            connection.Close();
            return false;

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
            usuarioEN usuario = new usuarioEN("Email","Usuario","Apellidos","Pass");
            //Muestra usuario

            return usuario;
        }

        public bool asistir(eventoEN evento)
        {
            usuarioEN usuario = new usuarioEN("Email", "Usuario", "Apellidos", "Pass");
            //Muestra usuario

            return true;
        }

        public usuarioEN borrarAsistencia(eventoEN evento)
        {
            usuarioEN usuario = new usuarioEN("Email", "Usuario", "Apellidos", "Pass");
            return usuario;
        }

        public usuarioEN borrarInvitacion(eventoEN evento)
        {
            usuarioEN usuario = new usuarioEN("Email", "Usuario", "Apellidos", "Pass");
            return usuario;
        }
    }
}