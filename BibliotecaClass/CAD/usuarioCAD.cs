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
                lector.Close();
                connection.Close();
                return false;
            }
            else
            {
                lector.Close();
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

        public bool ActualizarFotoUsuario(usuarioEN usuario)
        {
            SqlCommand update = new SqlCommand("update Usuario set Foto_perfil = '" + usuario.Imagen + "' where Usuario = '" + usuario.Correo + "';", connection);
            connection.Open();
            int ret = update.ExecuteNonQuery();

            if (ret > 0 )//si existe el usuaro no se crea
            {
                connection.Close();
                return true;
            }

            connection.Close();
            return false;
        }

        public bool ActualizarPassUsuario(usuarioEN usuario)
        {
            SqlCommand update = new SqlCommand("update Usuario set pass = '" + usuario.Pass + "' where Usuario = '" + usuario.Correo + "';", connection);
            connection.Open();
            int ret = update.ExecuteNonQuery();

            if (ret > 0)//si existe el usuaro no se crea
            {
                connection.Close();
                return true;
            }

            connection.Close();
            return false;
        }

        public bool ActualizarUsuario(usuarioEN usuario_update)
        {
            SqlCommand update = new SqlCommand("update Usuario set Nombre = '" + usuario_update.Nombre
                + "', Apellidos='" + usuario_update.Apellidos
                + "', Biografia='" + usuario_update.Biografia
                + "', Genero='" + usuario_update.Genero
                + "', nacimiento='" + usuario_update.Edad
                + "' where Usuario = '" + usuario_update.Correo + "';", connection);

            connection.Open();
            int ret = update.ExecuteNonQuery();

            if (ret > 0)//si existe el usuaro no se crea
            {
                connection.Close();
                return true;
            }

            connection.Close();
            return false;
        }

        public bool BorrarUsuario(usuarioEN usuario)
        {
            bool ok = false;
            //Borra usuario

            return ok;
        }

        public usuarioEN ObtenerUsuario(string correo)
        {
                    usuarioEN usuario = null;
                    SqlCommand select = new SqlCommand("Select * from Usuario where Usuario=" + "'" + correo + "'", connection);
                    connection.Open();
                    SqlDataReader lector = select.ExecuteReader();

                    if (lector.HasRows)
                    {
                        //Leo
                        lector.Read();
                        //Sesion Activa = Boton                           

                        //Cargo Datos
                        usuario = new usuarioEN((String)lector["Usuario"],(String)lector["Nombre"],(String)lector["Apellidos"],"");
                        usuario.Biografia = (String)lector["Biografia"];
                        usuario.Edad = (String)lector["nacimiento"];
                        usuario.Genero = (String)lector["Genero"];
                        usuario.Imagen = (String)lector["Foto_perfil"];
                        connection.Close();

                    }
           
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