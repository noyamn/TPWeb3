using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Servicio;
using Servicios;
using Datos;

namespace WebApplication1
{
    public partial class resultado_examen : System.Web.UI.Page
    {
        ExamenService es;
        PW3Entities ctx;
        protected void Page_Load(object sender, EventArgs e)
        {  
            ctx = new PW3Entities();
            es = new ExamenService(ctx);
            
            ExamenDTO examenRealizado = (ExamenDTO)Session["examenRealizando"];
            examen examen = es.getExamen(examenRealizado.id);
            porcAprobacion.InnerText = Convert.ToString(examen.porc_aprobacion)+"%";
            nombreExamen.InnerText = examen.nombre;
            nombreCurso.InnerText = examen.curso.nombre;
            Int32 cantidadRespuestasC = (Int32)Session["respuestasCorrectas"];
            porcentaje.InnerText = Convert.ToString(getPorcentajeExamen(examen, cantidadRespuestasC))+"%";
            respCorrectas.InnerText = Convert.ToString(cantidadRespuestasC) + "/" + Convert.ToString(examen.pregunta.Count());
            if (getPorcentajeExamen(examen, cantidadRespuestasC) >= examen.porc_aprobacion)
            {
                estado.InnerText = "Aprobado";
            }
            else { estado.InnerText = "Desaprobado"; }
            examenRealizado.terminado = true;
            Session["examenRealizando"] = examenRealizado;
        }

        private Int32 getPorcentajeExamen(examen _e, Int32 _respuestasCorrectas){
            Int32 cantidadPreguntas = _e.pregunta.Count();
            Int32 porcentaje = (_respuestasCorrectas * 100) / cantidadPreguntas;

            return porcentaje;
        }
    }
}