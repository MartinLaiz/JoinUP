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
        protected void Page_Load(object sender, EventArgs e)
        {
            string value = Request.QueryString["par"]; //Almacenamos el id de la URL
            if (Session["username"] == null) //Si no estamos logeados -> ERROR
                {
                    contenedor_principal.Visible = false;
                    eventos_usuario.Visible = false;
                    
                    Div_Error.Visible = true;
                    Mensaje.Text = "No has iniciado Sesión. Para visualizar cualquier perfil es indispensable haber iniciado sesión.";
                }
            else {

                if (value == null || value == Session["username"].ToString())//No se especifica usuario y por lo tanto se carga el perfil logueado.
                {
                    usuarioCAD sacar_usuario = new usuarioCAD();
                    usuarioEN usuario = sacar_usuario.ObtenerUsuario(Session["username"].ToString());

                    if (usuario != null) //Si existe, lo cargamos (nuestro perfil)
                    {
                        nombre_usuario.Text = usuario.Nombre;
                        ap_usuario.Text = usuario.Apellidos;
                        dia_usuario.Text = usuario.Edad.Substring(0, 2);
                        mes_usuario.Text = usuario.Edad.Substring(3, 2);
                        ano_usuario.Text = usuario.Edad.Substring(6, 4);
                        genero.SelectedValue = usuario.Genero;

                        fotoperfil.ImageUrl = usuario.Imagen;

                        contenedor_principal.Visible = true;
                        eventos_usuario.Visible = true;
                        
                        Div_Error.Visible = false;
                        btn_usuario.Visible = true;


                    }
                    else //No se ha podido cargar
                    {
                        contenedor_principal.Visible = false;
                        eventos_usuario.Visible = false;
                        
                        Div_Error.Visible = true;
                        Mensaje.Text = "No se puede cargar tu perfil. Intentalo más tarde.";
                    }
                }
                else
                {
                    usuarioCAD sacar_usuario = new usuarioCAD();
                    usuarioEN usuario = sacar_usuario.ObtenerUsuario(value);


                    if (usuario != null) //Perfil de otro usuario
                    {
                        nombre_usuario.Text = usuario.Nombre;
                        ap_usuario.Text = usuario.Apellidos;
                        dia_usuario.Text = usuario.Edad.Substring(0, 2);
                        mes_usuario.Text = usuario.Edad.Substring(3, 2);
                        ano_usuario.Text = usuario.Edad.Substring(6, 4);
                        genero.SelectedValue = usuario.Genero;

                        contenedor_principal.Visible = true;
                        eventos_usuario.Visible = true;
                        
                        Div_Error.Visible = false;
                        btn_usuario.Visible = false;

                    }
                    else //No existe el usuario
                    {
                        contenedor_principal.Visible = false;
                        eventos_usuario.Visible = false;
                        
                        Div_Error.Visible = true;
                        Mensaje.Text = "No se ha encontrado el usuario. Revisa si el ID introducido es correcto.";
                    }
                }
                

                 
                
            }
        }

        protected void btn_usuario_Click(object sender, EventArgs e)
        {
            if (btn_usuario.Text == "Editar")
            {
                nombre_usuario.ReadOnly = false;
                ap_usuario.ReadOnly = false;
                dia_usuario.ReadOnly = false;
                mes_usuario.ReadOnly = false;
                ano_usuario.ReadOnly = false;
                bio_usuario.ReadOnly = false;
                genero.Enabled = true;
                pass.Visible = true;
                btn_usuario.Text = "Guardar Cambios";

            }
            else
            {

                

                nombre_usuario.ReadOnly = true;
                ap_usuario.ReadOnly = true;
                dia_usuario.ReadOnly = true;
                mes_usuario.ReadOnly = true;
                ano_usuario.ReadOnly = true;
                bio_usuario.ReadOnly = true;
                genero.Enabled = false;

                pass.Visible = false;

                btn_usuario.Text = "Editar";
            }

        }

        
    }
}
