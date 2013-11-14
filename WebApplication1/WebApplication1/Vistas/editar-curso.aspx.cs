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
    public partial class editar_curso : System.Web.UI.Page
    {
        private profesor p;
        private PW3Entities ctx;
        private CursoService cs;
        private Int32 id_curso;
        private ProfesorService ps;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["usuario"] == null || !Session["tipoUsuario"].Equals("p"))
            {
                Response.Redirect("login.aspx");
            }

            ctx = new PW3Entities();
            ps = new ProfesorService(ctx); 
            cs = new CursoService(ctx);
            p = (profesor) Session["usuario"];

            try
            {   
                id_curso = Convert.ToInt32(Request.QueryString["id"]);          
                
                if (!ps.comprobarCurso(p,id_curso))
                 {
                     Response.Redirect("cursos-profesor.aspx");
                 }
            }
            catch (Exception)
            {
               Response.Redirect("cursos-profesor.aspx");
            }
                                 
            tituloEditar.InnerText = cs.getTituloEditar(id_curso);

            if (!Page.IsPostBack)
            {
              cargarCurso(id_curso);  
            }
            
        }

        private void cargarCurso(Int32 _id)
        {
            curso c = cs.getCurso(_id);
            TextBoxNombreCurso.Text = c.nombre;
            string[] fecha_fin = Convert.ToString(c.fecha_fin).Split(' ');
            string[] fecha_inicio = Convert.ToString(c.fecha_inicio).Split(' ');
            fechaIni.Value = fecha_inicio[0];
            fechaFin.Value = fecha_fin[0];
            String alumnos = "";
            foreach (var item in c.alumno.ToList())
            {
                alumnos += item.mail + "<br>";
            }
            alumnosInscriptos.InnerHtml = alumnos;

        }

        protected void botonEditarCurso_Click(object sender, EventArgs e)
        {
            try
            {
                cs.editarCurso(id_curso, TextBoxNombreCurso.Text, fechaIni.Value, fechaFin.Value,textboxAlumnos.Value);
                Session["usuario"] = ps.getProfesor(p.id_profesor);//Actualiza para visualizar en la tabla
                Response.Redirect("cursos-profesor.aspx");
            }
            catch (Exception)
            {

                Response.Redirect("cursos-profesor.aspx");
            }

        }
    }
}