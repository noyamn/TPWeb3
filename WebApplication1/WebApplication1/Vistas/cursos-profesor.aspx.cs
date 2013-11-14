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
    public partial class cursos_profesor : System.Web.UI.Page
    {
        private profesor p;
        private PW3Entities ctx;
        private ProfesorService ps;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["usuario"] == null || !Session["tipoUsuario"].Equals("p"))
            {
                Response.Redirect("login.aspx");
            }
    
            p = (profesor)Session["usuario"];
            ctx = new PW3Entities();
            ps = new ProfesorService(ctx);
            misCursos.InnerHtml = ps.getTablaCursos(p,2);//Insearta la tabla con los cursos del profesor logueado

        }

        protected void BotonCrearCurso_Click(object sender, EventArgs e)
        {

            CursoService cs = new CursoService(ctx);
            //Crea el curso...Verifica si existen los alumnos, sino los crea, y en ambos casos los asocia al curso nuevo
            cs.crearCurso(TextBoxNombreCurso.Text, fechaIni.Value, fechaFin.Value, p.id_profesor, textboxAlumnos.Value);
            Session["usuario"] = ps.getProfesor(p.id_profesor); //Actualiza la session, para que se vean cambios en las tablas
            Response.Redirect("cursos-profesor.aspx");
        }


    }
}