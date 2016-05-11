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
    public partial class Formulario_web17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            eventos_si.Visible = false;
            string nombre = Request.QueryString["nom"];
            string ciudad = Request.QueryString["ciu"];
            string catego = Request.QueryString["cat"];
            if (nombre != null || ciudad != null || catego != null)
            {
                error.Visible = false;
                eventos_si.Visible = true;
                if (!Page.IsPostBack)
                {
                    DataSet d = new DataSet();
                    eventoEN ev = new eventoEN();
                    d = ev.listarEventos(nombre,ciudad,catego);

                    eventosSelecc.DataSource = d;
                    eventosSelecc.DataBind();
                }
            }
        }
    }
}