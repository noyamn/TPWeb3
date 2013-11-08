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
        Int32 cantidad = 2;
        protected void Page_Load(object sender, EventArgs e)
        {
            ctx = new PW3Entities();
            es = new ExamenService(ctx);
            contenedorPreguntas.InnerHtml = es.getHTMLPreguntas(cantidad);




        }

        protected void botonCrearExamen_Click(object sender, EventArgs e)
        {
            es.crearExamen(examenNombre.Text, examenDescripcion.Text, examenFechaTope.Text,
                           porcentajeAprobacion.Value, examenDuracion.Value, Request, cantidad);
                   
        }
    }
}