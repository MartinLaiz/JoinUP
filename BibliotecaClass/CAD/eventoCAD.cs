using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AplicacionWeb
{
    public class eventoCAD
    {
        SqlConnection connection;


        public eventoCAD()
        {
            connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        }


        internal DataSet listarEventos(string nombre, string ciudad, string catego, string fecha)
        {
            DataSet ds = new DataSet();

            string cons1 = "select * from Evento e, Categorias c where e.Categoria = c.Id and e.Fecha";
            if (fecha == null)
            {
                cons1 += " >='" + DateTime.Now.ToString("dd/MM/yyyy") + "'";
            }
            else
            {
                cons1 += " = '" + fecha + "'";
            }

            if (nombre != null)
            {
                cons1 += " and e.Nombre like '" + nombre + "%'";
            }

            if (catego != null)
            {
                cons1 += " and NomCategoria = '" + catego + "' ";
            }

            if (ciudad != null)
            {
                cons1 += " and e.Ciudad = '" + ciudad + "'";
            }

            SqlDataAdapter da = new SqlDataAdapter(cons1, connection);
            da.Fill(ds);
            return ds;
        }

        public bool anadirevento(eventoEN evento)
        {
            bool ok = false;
            string cons = "Insert into Evento values ('" + evento.Nombre + "','" + evento.Descripcion + "','" + evento.Categoria + "','" + evento.Foto_evento + "','" + evento.Fecha + "','" + evento.Ciudad + "');";
            SqlCommand insert = new SqlCommand(cons, connection);
            connection.Open();
            int ret = insert.ExecuteNonQuery();//ejecutar la insert


            if (ret > 0)//sihay aceptada se interta
            {
                ok = true;

            }
            connection.Close();
            return ok;
        }

        public eventoEN dameEvento(int id)
        {
            eventoEN evento = null;
            SqlCommand select = new SqlCommand("Select * from Usuario where Usuario=" + "'" + id + "'", connection);
            connection.Open();
            SqlDataReader lector = select.ExecuteReader();

            if (lector.HasRows)
            {
                evento = new eventoEN((String)lector["Nombre"], (String)lector["Descripcion"], (String)lector["Ciudad"], (String)lector["Foto_evento"], (String)lector["Fecha"], (string)lector["Categoria"]);
                evento.Fecha = (String)lector["fecha"];
                evento.Ciudad = (String)lector["Ciudad"];
                connection.Close();

            }

            return evento;
        }


        public string dameLugar(string idEvento)
        {
            string aux = "";
            int id = Convert.ToInt32(idEvento);
            SqlCommand select = new SqlCommand("Select Ciudad from Evento where Id=" + id, connection);
            connection.Open();
            SqlDataReader lector = select.ExecuteReader();
            if (lector.HasRows)
            {
                lector.Close();
                aux = Convert.ToString(select.ExecuteScalar());
                connection.Close();
            }
            return aux;
        }

        public string dameDescripcion(string idEvento)
        {
            string aux = "";
            int id = Convert.ToInt32(idEvento);
            SqlCommand select = new SqlCommand("Select Descripcion from Evento where Id=" + id, connection);
            connection.Open();
            SqlDataReader lector = select.ExecuteReader();
            if (lector.HasRows)
            {
                lector.Close();
                aux = Convert.ToString(select.ExecuteScalar());
                connection.Close();
            }
            return aux;
        }


        public string dameDescripcion(int id)
        {
            string aux = "";
            SqlCommand select = new SqlCommand("Select Descripcion from Evento where Id=" + id, connection);
            connection.Open();
            SqlDataReader lector = select.ExecuteReader();
            if (lector.HasRows)
            {
                lector.Close();
                aux = Convert.ToString(select.ExecuteScalar());
                connection.Close();
            }
            return aux;
        }

        public int dameID(string nombre)
        {
            int aux = -1;//si no existe devuelve -1
            //select*from Evento where nombre='holamanolo';
            SqlCommand select = new SqlCommand("Select Id from Evento where nombre=" + "'" + nombre + "'", connection);
            connection.Open();
            SqlDataReader lector = select.ExecuteReader();
            if (lector.HasRows)
            {
                lector.Close();
                aux = Convert.ToInt32(select.ExecuteScalar());
                connection.Close();
            }
       
            return aux;
        }


        internal int dameCat(string categoria)
        {
            int aux = -1;//si no existe devuelve -1
            //select*from Evento where nombre='holamanolo';
            SqlCommand select = new SqlCommand("Select Id from Categorias where NomCategoria=" + "'" + categoria + "'", connection);
            connection.Open();
            SqlDataReader lector = select.ExecuteReader();
            if (lector.HasRows)
            {
                lector.Close();
                aux = Convert.ToInt32(select.ExecuteScalar());
                connection.Close();
            }

            return aux;
        }

        internal string dameNombre(int id)
        {
            string aux = "";
            SqlCommand select = new SqlCommand("Select Nombre from Evento where Id=" + id, connection);
            connection.Open();
            SqlDataReader lector = select.ExecuteReader();
            if (lector.HasRows)
            {
                lector.Close();
                aux = Convert.ToString(select.ExecuteScalar());
                connection.Close();
            }

            return aux;
        }

        internal int dameCat(int id)
        {
            int aux = -1;
            SqlCommand select = new SqlCommand("Select Categoria from Evento where Id=" + id, connection);
            connection.Open();
            SqlDataReader lector = select.ExecuteReader();
            if (lector.HasRows)
            {
                lector.Close();
                aux = Convert.ToInt32(select.ExecuteScalar());
                connection.Close();
            }

            return aux;
        }

        internal string dameFoto(int id)
        {
            string aux = "";
            SqlCommand select = new SqlCommand("Select Foto_evento from Evento where Id=" + id, connection);
            connection.Open();
            SqlDataReader lector = select.ExecuteReader();
            if (lector.HasRows)
            {
                lector.Close();
                aux = Convert.ToString(select.ExecuteScalar());
                connection.Close();
            }

            return aux;
        }
    }
}