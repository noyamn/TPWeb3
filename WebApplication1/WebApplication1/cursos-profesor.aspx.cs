using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Entity;

namespace WebApplication1
{
    public partial class cursos_profesor : System.Web.UI.Page
    {
        private profesor p;
        private PW3Entities ctx;

        protected void Page_Load(object sender, EventArgs e)
        {
            p = (profesor)Session["usuario"];
            ctx = new PW3Entities();

        }

        protected void BotonCrearCurso_Click(object sender, EventArgs e)
        {
            curso nuevoCurso = new curso();
            nuevoCurso.nombre = TextBoxNombreCurso.Text;
            nuevoCurso.fecha_inicio = Convert.ToDateTime(fechaIni.Value);
            nuevoCurso.fecha_fin = Convert.ToDateTime(fechaFin.Value);
            nuevoCurso.id_profesor = p.id_profesor;
            ctx.AddTocurso(nuevoCurso);
            ctx.SaveChanges();

        }
    }
}