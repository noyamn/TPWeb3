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
    public partial class crear_examen : System.Web.UI.Page
    {
        PW3Entities ctx;
        ExamenService es;
        CursoService cs;
        profesor p;
        protected void Page_Load(object sender, EventArgs e)
        {
           ctx = new PW3Entities();
           es = new ExamenService(ctx);
           cs = new CursoService(ctx);
           p = (profesor)Session["usuario"];

           if (PreviousPage == null && !Page.IsPostBack)
            {
                Response.Redirect("examenes-profesor.aspx");
            }

            if (!Page.IsPostBack)
            {
                nombreCurso.Value = Request.Form["nombreCurso"];
                valorCantidadPreguntas.Value = Request.Form["cantidad"];
                cs.cargarCursosDropDownList(p, ref curso);
            }
        
            //Crea el formulario de preguntas de manera dinamica
            contenedorPreguntas.InnerHtml = es.getHTMLPreguntas(Convert.ToInt32(valorCantidadPreguntas.Value));
          
            
        }

        protected void botonCrearExamen_Click(object sender, EventArgs e)
        {
          
            //Crea el examen apartir de los datos, se le pasa el Request como parametro
            //para poder recorrer el formulario dinamico
            es.crearExamen(nombreCurso.Value, examenDescripcion.Text, examenFechaTope.Text,
                           porcentajeAprobacion.Value, examenDuracion.Value, 
                           Request,Convert.ToInt32(valorCantidadPreguntas.Value),Convert.ToInt32(curso.SelectedValue));

            Response.Redirect("examenes-profesor.aspx"); 
              
            
        }
    }
}