using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacionWeb
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["username"] != null)
                {
                    
                    perfil_largo.Text = Session["username"].ToString();
                    
                    //perfil.Visible = true;
                    registro.Visible = false;
                    inicio.Visible = false;
                    menu_largo.Visible = true;
                    registro_corto.Visible = false;
                    logeo_corto.Visible = false;
                    perfil_corto.Visible = true;
                    cerrar_corto.Visible = true;



                }
            }
            
        }
    }
}