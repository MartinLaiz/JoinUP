using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacionWeb
{
    public partial class Formulario_web16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registro_usuario_Click(object sender, EventArgs e)
        {
            try
            {
                usuarioEN registro = new usuarioEN(email_Usuario.Text, nombre_Usuario.Text, apellidos_Usuario.Text, pass1_Usuario.Text);
                usuarioCAD consulta = new usuarioCAD();
                bool estado = consulta.CrearUsuario(registro);
                email_Usuario.Text = estado.ToString();
            }
            catch (Exception ex)
            {
                nombre_Usuario.Text = ex.Message;
            }
        }

      
    }
}