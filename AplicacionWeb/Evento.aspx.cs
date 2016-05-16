using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacionWeb
{
    public partial class Pagina_Evento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string value = Request.QueryString["id"]; //Almacenamos el id de la URL
            eventoEN evento = new eventoEN(Convert.ToInt32(value));
            if (Session["username"] == null) //Si no estamos logeados -> ERROR
            {
                Boton_Asistir.Visible = false;
                Boton__No_Asistir.Visible = false;
                Boton_Borrar.Visible = false;
                Boton_Modificar.Visible = false;
                Comentarios.Visible = false;
                Boton_Comentar.Visible = false;
            }
            else
            {
                Boton_Asistir.Visible = true;
                Boton__No_Asistir.Visible = true;
                Boton_Borrar.Visible = true;
                Boton_Modificar.Visible = true;
                Comentarios.Visible = true;
                Boton_Comentar.Visible = true;
            }
            CiudadEvento.Text = evento.Lugar;
            //LugarEvento.Text = sacar_evento.dameDescripcion(value);
            nombreEvento.Text = evento.Nombre;
            descripcionEvento.Text = evento.Descripcion;
            fotoEvento.Src = evento.Foto_evento;

        }
        protected void Enviar_Comentarios(object sender, EventArgs e)
        {
            string value = Request.QueryString["id"]; //Almacenamos el id de la URL
            string usuario = Session["username"].ToString();//recogo el nombre del usuario
            if (usuario != "" && Comentarios.Text != "") //Si estamos logeados
            {
                int id = 0;
                id = Convert.ToInt32(value);
                comentarioEN coment = new comentarioEN(usuario, Comentarios.Text, id);
                coment.CrearComentarioEn();
                //Mostrar_Coment.Text = Comentarios.Text;
            }
        }
    }
}