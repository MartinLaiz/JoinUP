using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

namespace AplicacionWeb
{
    public partial class Pagina_Buscador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            eventos_si.Visible = false;
            sinResult.Visible = false;

            string nombre = Request.QueryString["nom"];
            string ciudad = Request.QueryString["ciu"];
            string catego = Request.QueryString["cat"];
            string dia = Request.QueryString["dia"];
            string mes = Request.QueryString["mes"];
            string anio = Request.QueryString["anio"];
            string fecha = dia + "/" + mes + "/" + anio;
            if (fecha.Length < 10)
            {
                fecha = null;
            }

            if (nombre != null || ciudad != null || catego != null || fecha != null)
            {
                eventos_si.Visible = true;
                if (!Page.IsPostBack)
                {

                    DataSet d = new DataSet();
                    eventoEN ev = new eventoEN();
                    d = ev.listarEventos(nombre, ciudad, catego, fecha);
                    eventosSelecc.DataSource = d;
                    eventosSelecc.DataBind();
                    if (eventosSelecc.Items.Count <= 0)
                    {
                        sinResult.Visible = true;
                        eventos_si.Visible = false;
                    }


                }
            }
        }

        protected void cargar_eventos(object sender, EventArgs e)
        {
            string dest = "./Buscador.aspx?";
            if (buscaNombre.Text != "")
            {
                dest += "nom=" + buscaNombre.Text;
                if (buscaCiudad.Text != "" || buscaCategoria.Text != "" || buscaDia.Text != "")
                {
                    dest += "&";
                }
            }
            if (buscaCiudad.Text != "")
            {

                dest += "ciu=" + buscaCiudad.Text;
                if (buscaCategoria.Text != "" || buscaDia.Text != "")
                {
                    dest += "&";
                }
            }

            if (buscaCategoria.Text != "")
            {
                dest += "cat=" + buscaCategoria.Text;

                if (buscaDia.Text != "")
                {
                    dest += "&";
                }
            }

            if (buscaDia.Text != "" && buscaMes.Text != "" && buscaAnio.Text != "")
            {
                dest += "dia=" + buscaDia.Text + "&mes=" + buscaMes.Text + "&anio=" + buscaAnio.Text;
            }
            Response.Redirect(dest);
        }

        protected void irA(object sender, CommandEventArgs e)
        {
            buscaCiudad.Text = e.CommandArgument.ToString();
        }
    }
}