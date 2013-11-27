using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Datos;
using System.Collections;

namespace WebApplication1.Servicio
{
    /// <summary>
    /// Summary description for RealizarExamen
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
   [System.Web.Script.Services.ScriptService]
    public class RealizarExamen : System.Web.Services.WebService
    {
        PW3Entities ctx = new PW3Entities();

        [WebMethod(EnableSession = true)]        
        public ExamenDTO getExamen(Int32 id)
        {
            ExamenDTO ed = new ExamenDTO(id,ctx);
            Session["examenRealizando"] = ed;
            Session["respuestasCorrectas"] = 0;
            return ed;
        }


        [WebMethod(EnableSession = true)]
        public PreguntaDTO obtenerSiguientePregunta()
        {   
            ExamenDTO ed = (ExamenDTO)Session["examenRealizando"];
            PreguntaDTO pd = ed.preguntas.Dequeue();
            if (ed.preguntas.Count==0)
            {
                pd.ultima = true;   
            }
            Session["examenRealizando"] = ed;
            return pd;
        }

        [WebMethod(EnableSession = true)]
        public void calificarRespuesta(Int32[] _respuesta)
        {
            bool aux = false;
            for (int i = 0; i <_respuesta.Length; i++)
            {
                Int32 aux1 = _respuesta[i];
                if (ctx.respuesta.FirstOrDefault(r=> r.id_respuesta==aux1).correcta.Equals("on"))
                {
                    aux = true;
                }
                else
                {
                    aux = false;
                }
            }
            if (aux)
            {
                Int32 aux1 = (int)Session["respuestasCorrectas"];
                aux1 += 1;
                Session["respuestasCorrectas"] = aux1;
            }
        }

        [WebMethod(EnableSession = true)]
        public String getCorrectas()
        {
            Int32 aux = (Int32)Session["respuestasCorrectas"];
            return Convert.ToString(aux);

        }

    }
}
