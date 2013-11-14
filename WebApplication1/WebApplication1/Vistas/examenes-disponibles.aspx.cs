using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;
using Servicios;

namespace WebApplication1
{
    public partial class examenes_disponibles : System.Web.UI.Page
    {
        private PW3Entities ctx;
        private alumno a;
        private AlumnoService als;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["usuario"] == null || !Session["tipoUsuario"].Equals("a"))
            {
                Response.Redirect("login.aspx");
            }

            ctx = new PW3Entities();
            a = (alumno)Session["usuario"];
            als = new   AlumnoService(ctx);
            tablaExamenesDisponibles.InnerHtml = als.getTablaExamenes(a);
            tablaExamenesRealizados.InnerHtml = als.getTablaExamenesRealizados(a);
        }   
    }
}