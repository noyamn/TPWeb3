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
        protected void Page_Load(object sender, EventArgs e)
        {
            ctx = new PW3Entities();
            es = new ExamenService(ctx);

            if (PreviousPage == null && !Page.IsPostBack)
            {
                Response.Redirect("examenes-profesor.aspx"); 
            }

            if (Session["cantidadPreguntas"] == null)
            {
               Session["cantidadPreguntas"] = Convert.ToInt32(Request.Form["cantidad"]); 
            }
            
            //Crea el formulario de preguntas de manera dinamica
            contenedorPreguntas.InnerHtml = es.getHTMLPreguntas((Int32)Session["cantidadPreguntas"]);



        }

        protected void botonCrearExamen_Click(object sender, EventArgs e)
        {
            Int32 id_curso = 12;

            //Crea el examen apartir de los datos, se le pasa el Request como parametro
            //para poder recorrer el formulario dinamico
            es.crearExamen(examenNombre.Text, examenDescripcion.Text, examenFechaTope.Text,
                           porcentajeAprobacion.Value, examenDuracion.Value, 
                           Request, (Int32)Session["cantidadPreguntas"],id_curso);

            Response.Redirect("examenes-profesor.aspx"); 
                   
        }
    }
}