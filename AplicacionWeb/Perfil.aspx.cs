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
            if (!IsPostBack)
            {
                string value = Request.QueryString["par"]; //Almacenamos el id de la URL
                if (Session["username"] == null) //Si no estamos logeados -> ERROR
                {
                    contenedor_principal.Visible = false;
                    eventos_usuario.Visible = false;

                    Div_Error.Visible = true;
                    Mensaje.Text = "No has iniciado Sesión. Para visualizar cualquier perfil es indispensable haber iniciado sesión.";
                }
                else
                {

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
                            bio_usuario.Text = usuario.Biografia;

                            fotoperfil_but.ImageUrl = usuario.Imagen;
                            fotoperfil_but.Visible = true;
                            fotoperfil_img.Visible = false;
                            text_subir.Visible = true;

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
                            bio_usuario.Text = usuario.Biografia;

                            fotoperfil_img.Src = usuario.Imagen;
                            fotoperfil_img.Visible = true;
                            fotoperfil_but.Visible = false;

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
                updateUser();
            }

        }

        protected void fotoperfil_Click(object sender, ImageClickEventArgs e)
        {
            subir_perfil.Visible = true;
        }

        


        protected void updateUser()
        {
            if (ap_usuario.Text != "" && bio_usuario.Text != "" && dia_usuario.Text != "" && mes_usuario.Text != "" && ano_usuario.Text != "" && nombre_usuario.Text != "") {

                if ( ((int.Parse(dia_usuario.Text) < 31)) && ((int.Parse(mes_usuario.Text) < 12)) && ((int.Parse(ano_usuario.Text) < 2016) )) { 
                    usuarioEN usuario_update = new usuarioEN(Session["username"].ToString());
                    usuario_update.Apellidos = ap_usuario.Text;
                    usuario_update.Biografia = bio_usuario.Text;
                    usuario_update.Edad = dia_usuario.Text + "-" + mes_usuario.Text + "-" + ano_usuario.Text;
                    usuario_update.Genero = genero.SelectedValue;
                    usuario_update.Nombre = nombre_usuario.Text;

                    usuarioCAD update = new usuarioCAD();
                    update.ActualizarUsuario(usuario_update);
                    Response.Redirect("Perfil.aspx");
                }
                else {
                    Div_Error.Visible = true;
                    Mensaje.Text = "Introduce una fecha de nacimiento correcta.";
                }
            }
            else {
                Div_Error.Visible = true;
                Mensaje.Text = "No se pueden introducir campos vacios. Revisa si el ID introducido es correcto.";

            }


        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
        
            if (subir_textbox.Text != "" && subir_textbox != null)
            {
                usuarioEN usuario = new usuarioEN(Session["username"].ToString());
                usuario.Imagen = subir_textbox.Text;

                usuarioCAD update = new usuarioCAD();
                update.ActualizarFotoUsuario(usuario);
                Response.Redirect("Perfil.aspx");
            }
            else
            {
                Div_Error.Visible = true;
                Mensaje.Text = "No has introducido una URL válida, intentalo de nuevo.";
            }


        
        }

        protected void pass_btn_Click(object sender, EventArgs e)
        {
            if (email_usuario.Text == Session["username"].ToString())
            {

                usuarioEN usuario = new usuarioEN(email_usuario.Text);
                usuario.Pass = pactual_usuario.Text;
                usuarioCAD login = new usuarioCAD();

                if (login.ConsultarUsuario(usuario))
                {
                    if (pnueva1_usuario.Text == pnueva2_usuario.Text && pnueva1_usuario.Text != "")
                    {
                        usuario.Pass = pnueva1_usuario.Text;
                        usuarioCAD update = new usuarioCAD();
                        update.ActualizarPassUsuario(usuario);
                        Response.Redirect("Perfil.aspx");

                    }
                    else
                    {
                        Div_Error.Visible = true;
                        Mensaje.Text = "Las contraseñas no coinciden entre si. Revisa los campos de nueva contraseña";
                    }

                }
                else
                {
                    Div_Error.Visible = true;
                    Mensaje.Text = "El correo o la contraseña ingresada no corresponde a tus datos almacenados. Revisa la informacion introducida.";
                }
            }
            else
            {
                Div_Error.Visible = true;
                Mensaje.Text = "El correo no se ha introducido correctamente. Revisa la informacion introducida.";
            }



        }


    }
}
