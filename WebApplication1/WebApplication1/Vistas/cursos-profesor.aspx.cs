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
    public partial class cursos_profesor : System.Web.UI.Page
    {
        private profesor p;
        private PW3Entities ctx;
        private ProfesorService ps;

        protected void Page_Load(object sender, EventArgs e)
        {
            p = (profesor)Session["usuario"];
            ctx = new PW3Entities();
            ps = new ProfesorService(ctx);
            misCursos.InnerHtml = ps.getTablaCursos(p);

        }

        protected void BotonCrearCurso_Click(object sender, EventArgs e)
        {

            CursoService cs = new CursoService(ctx);
            cs.crearCurso(TextBoxNombreCurso.Text, fechaIni.Value, fechaFin.Value, p.id_profesor, textboxAlumnos.Value);                            

        }


    }
}