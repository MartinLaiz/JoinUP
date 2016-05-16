using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacionWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registro_usuario_Click(object sender, EventArgs e)
        {
            usuarioEN usuario = new usuarioEN(Correo.Text, "", "", Contraseña.Text);
            usuarioCAD consulta = new usuarioCAD();
            bool ret = consulta.ConsultarUsuario(usuario);
            if (ret)
            {
                
                Session["username"] = Correo.Text.ToString();
                Response.Redirect("Perfil.aspx");
                
            }
        }
    }
}