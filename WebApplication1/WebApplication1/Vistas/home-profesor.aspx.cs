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
    public partial class home_profesor : System.Web.UI.Page
    {
        private PW3Entities ctx;
        private profesor p;
        private ProfesorService ps;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["usuario"] == null || !Session["tipoUsuario"].Equals("p"))
            {
                Response.Redirect("login.aspx");
            }

            ctx = new PW3Entities();
            ps = new ProfesorService(ctx);
            p = (profesor)Session["usuario"];
            tituloHomeProfesor.InnerText = ps.getTituloHome(p);//Inserta texto para el titulo
            misCursos.InnerHtml = ps.getTablaCursos(p,1);// Inserta el HTML de la tabla con los cursos del profesor logueado
            tablaMisExamenes.InnerHtml = ps.getTablaExamenes(p);
        }


    }
}