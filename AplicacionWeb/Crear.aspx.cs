using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacionWeb
{
    public partial class Formulario_web14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string value = Request.QueryString["par"]; //Almacenamos el id de la URL
            if (Session["username"] == null) //Si no estamos logeados -> ERROR
            {
                crearEvent.Visible = false;

                Div_Error.Visible = true;
                Mensaje.Text = "No has iniciado Sesión. Para crear eventos es indispensable haber iniciado sesión.";
            }
        }

        protected void registro_evento_Click(object sender, EventArgs e)
        {
            int id = -1; //si no existe es -1
            string fecha = buscaDia.Text + "/" + buscaMes.Text + "/" + buscaAnio.Text;
            string foto = FotoEvento.Text;
            if (FotoEvento.Text == "")
            {
                foto="http://vignette3.wikia.nocookie.net/monsterhunterespanol/images/a/aa/Imagen-no-disponible-282x300.png/revision/latest?cb=20140827124248&path-prefix=es";
            }
            eventoEN evento = new eventoEN(Nombre.Text, descr.Text, LugarEvento.Text, foto, fecha, creCat.Text);
            bool estado = evento.anadirevento();
            if (estado)
            {
                string creador = Session["username"].ToString();
                evento.anadirCreador(creador);
                id = evento.Id;
                Response.Redirect("Evento.aspx?id=" + id);
            }
        }
    }
}