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
    public partial class crear_examen : System.Web.UI.Page
    {
        private PW3Entities ctx;
        private ExamenService es;
        private CursoService cs;
        private profesor p;
        private ProfesorService ps;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"]==null || !Session["tipoUsuario"].Equals("p"))
            {
                Response.Redirect("login.aspx");
            }


           ctx = new PW3Entities();
           es = new ExamenService(ctx);
           cs = new CursoService(ctx);
           p = (profesor)Session["usuario"];
           ps = new ProfesorService(ctx);

           if (PreviousPage == null && !Page.IsPostBack)
            {
                Response.Redirect("examenes-profesor.aspx");
            }

            if (!Page.IsPostBack)
            {
                nombreCurso.Value = PreviousPage.getNombreCurso();
                valorCantidadPreguntas.Value = PreviousPage.getCantidad();
                cs.cargarCursosDropDownList(p, ref curso);
            }
            
            //Crea el formulario de preguntas de manera dinamica
            contenedorPreguntas.InnerHtml = es.getHTMLPreguntas(Convert.ToInt32(valorCantidadPreguntas.Value));
            tituloCrearExamen.InnerText = "Creando examen de nombre: " + nombreCurso.Value;
            
        }

        protected void botonCrearExamen_Click(object sender, EventArgs e)
        {
            try
            {
                //Crea el examen apartir de los datos, se le pasa el Request como parametro
                //para poder recorrer el formulario dinamico
                es.crearExamen(nombreCurso.Value, examenDescripcion.Text, examenFechaTope.Value,
                               porcentajeAprobacion.Value, examenDuracion.Value, 
                               Request,Convert.ToInt32(valorCantidadPreguntas.Value),Convert.ToInt32(curso.SelectedValue));
                Session["usuario"] = ps.getProfesor(p.id_profesor);//Actualiza para visualizar en la tabla
                Response.Redirect("examenes-profesor.aspx"); 
            }
            catch (Exception)
            {

                Response.Redirect("error-alumno.aspx");
            }

              
            
        }
    }
}