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
            
            usuarioCAD consulta = new usuarioCAD();

            if (nombre_Usuario.Text != "" && apellidos_Usuario.Text != "" && email_Usuario.Text != "" && pass1_Usuario.Text == pass2_Usuario.Text && pass1_Usuario.Text != "" && terminos.Checked == true)
            {
                if (consulta.ObtenerUsuario(email_Usuario.Text) == null) { 
                    
                    usuarioEN registro = new usuarioEN(email_Usuario.Text,nombre_Usuario.Text,apellidos_Usuario.Text,pass1_Usuario.Text);
                    usuarioCAD insert = new usuarioCAD();
                    bool estado = insert.CrearUsuario(registro);
                    email_Usuario.Text = estado.ToString();
                    Response.Redirect("Login.aspx");
                }
                else {
                    Div_Error.Visible = true;
                    Mensaje.Text = "El email ingresado ya se encuentra registrado. Prueba con otro email.";
                    
                }
            }
            else
            {
                Div_Error.Visible = true;
                Mensaje.Text = "Error al validar los datos. Revisa que has introducido todos los datos correctamente.";
            }
        }

      
    }
}