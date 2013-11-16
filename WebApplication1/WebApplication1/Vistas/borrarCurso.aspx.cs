using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;
using Servicios;

namespace WebApplication1.Vistas
{
    public partial class borrarCurso : System.Web.UI.Page
    {
        private PW3Entities ctx;
        private Int32 id;
        private profesor p;
        private ProfesorService ps;
        private CursoService cs;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["usuario"] == null || !Session["tipoUsuario"].Equals("p"))
            {
                Response.Redirect("login.aspx");
            }

            ctx = new PW3Entities();
            p = (profesor)Session["usuario"];
            ps = new ProfesorService(ctx);
            cs = new CursoService(ctx);

            try
            {
                id = Convert.ToInt32(Request.QueryString["id"]);

                if (!ps.comprobarCurso(p,id))
                {
                    Response.Redirect("cursos-profesor.aspx");
                }

                if (!cs.comprobarCursoBorrar(id))
                {
                    tituloBorrar.InnerText = "No se puede borrar el curso de nombre "+ctx.curso.Where(c=> c.id_curso==id).First().nombre;
                    textoBorrar.InnerText = " No se puede borrar este curso, debido a que tiene un examen asociado, o un alumno inscripto en el mismo.";
                    botonesBorrar.InnerHtml = "";
                }
                else tituloBorrar.InnerText = cs.getTituloBorrarCurso(id);
            }
            catch (Exception)
            {

                Response.Redirect("cursos-profesor.aspx");
            }

            
        }

        protected void borrarCurso_Click(object sender, EventArgs e)
        {
            curso c = ctx.curso.Where(cu => cu.id_curso == id).First();
            ctx.curso.DeleteObject(c);
            ctx.SaveChanges();
            Session["usuario"] = ps.getProfesor(p.id_profesor);//Actualiza para visualizar en la tabla
            Response.Redirect("cursos-profesor.aspx");
        }
    }
}