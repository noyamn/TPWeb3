using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Entity;
using WebApplication1.Servicios;

namespace WebApplication1
{
    public partial class examenes_disponibles : System.Web.UI.Page
    {
        private PW3Entities ctx;
        private alumno a;
        private AlumnoService als;

        protected void Page_Load(object sender, EventArgs e)
        {
            ctx = new PW3Entities();
            a = (alumno)Session["usuario"];
            als = new   AlumnoService(ctx);
            tablaExamenesDisponibles.InnerHtml = als.getTablaExamenes(a);
            tablaExamenesRealizados.InnerHtml = als.getTablaExamenesRealizados(a);
        }   
    }
}