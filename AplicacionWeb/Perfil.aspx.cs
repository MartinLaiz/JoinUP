using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace AplicacionWeb
{
    public partial class Formulario_web11 : System.Web.UI.Page
    {
        SqlConnection test = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["db"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            string value = Request.QueryString["par"];
            if (value != "create")
            {
                if (!Page.IsPostBack)
                {


                    SqlCommand select = new SqlCommand("Select * from Usuario where Usuario=" + "'" + value + "'", test);
                    test.Open();
                    SqlDataReader lector = select.ExecuteReader();

                    if (lector.HasRows)
                    {
                        //Leo
                        lector.Read();
                        //Sesion Activa = Boton                           

                        //Cargo Datos
                        nombre_usuario.Text = (String)lector["Nombre"];
                        ap_usuario.Text = (String)lector["Apellidos"];
                        bio_usuario.Text = (String)lector["Biografia"];

                        String fecha = (String)lector["Nacimiento"];
                        dia_usuario.Text = fecha.Substring(0, 2);
                        mes_usuario.Text = fecha.Substring(3, 2);
                        ano_usuario.Text = fecha.Substring(6, 4);

                        genero.SelectedValue = (String)lector["Genero"];

                        Prueba.Visible = false;
                    }
                    else
                    {
                        contenedor_principal.Visible = false;
                        eventos_usuario.Visible = false;
                        pass.Visible = true;
                    }

                }
            
            }
        }

    }
}