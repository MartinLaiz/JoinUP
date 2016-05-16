using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacionWeb
{
    public partial class Pagina_Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void cargar_eventos(object sender, EventArgs e)
        {
            string dest = "./Buscador.aspx?";
            if (buscaNombre.Text != "")
            {
                dest += "nom=" + buscaNombre.Text;

            }
            if (buscaCiudad.Text != "")
            {

                dest += "&" + "ciu=" + buscaCiudad.Text;

            }

            if (buscaDia.Text != "" && buscaMes.Text != "" && buscaAnio.Text != "")
            {
                dest += "dia=" + buscaDia.Text + "&mes=" + buscaMes.Text + "&anio=" + buscaAnio.Text;
            }
            buscaCiudad.Text = "True";
            Response.Redirect(dest);
        }


        protected void cargarEventos(object sender, CommandEventArgs e)
        {
            string dest = "./Buscador.aspx?";

            dest += "cat=" + e.CommandArgument.ToString();
            if (buscaNombre.Text != "")
            {
                dest += "&nom=" + buscaNombre.Text;

            }

            if (buscaCiudad.Text != "")
            {
                dest += "&ciu=" + buscaCiudad.Text;

            }

            if (buscaDia.Text != "" && buscaMes.Text != "" && buscaAnio.Text != "")
            {
                dest += "&dia=" + buscaDia.Text + "&mes=" + buscaMes.Text + "&anio=" + buscaAnio.Text;
            }
            buscaCiudad.Text = "True";
            Response.Redirect(dest);
        }
    }
}