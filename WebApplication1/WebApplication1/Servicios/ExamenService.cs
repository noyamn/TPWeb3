using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication1.Entity;

namespace WebApplication1.Servicios
{
    public class ExamenService
    {
        private PW3Entities ctx;
        public ExamenService (PW3Entities _ctx)
        {
            this.ctx = _ctx;
        }

        public String getHTMLPreguntas(Int32 cantidad)
        {
            String contenidoPrincipal="";
            for (int i = 1; i <= cantidad; i++)
            {
                String contenidoSecundario = "";
                contenidoPrincipal +=
                    "<div class='preguntas span5 offset3'>"

                       + "<div class='margin-top'>"
                           + "<span>Descripcion:</span>"
                           + "<strong>" + i + ")</strong>"
                       + "</div>"

                       + "<input type='text' name='P_" + i + "' class='widht-pregunta' runat='server'/>"

                       + "<div class='margin-top'>"
                           + "<span class='row-fluid'>Respuestas:</span>"

                           + "<div class='row-fluid'>";

                for (int j = 1; j <= 5; j++)
                {
                    contenidoSecundario += "<input type='text' name='R_" + i + "_" + j + "' runat='server' />"
                                + "<input type='checkbox' name='CB_" + i + "_" + j + "' class='widht-pregunta' runat='server'/>";
                }

                contenidoPrincipal += contenidoSecundario +
                                "</div>"

                        + "</div>"

                    + "</div>";


            }

            return contenidoPrincipal;
        }


        public void crearExamen(String _nombre, String _descripcion, String _fechaTope,
                               String _porcAprobacion, String _duracion, HttpRequest Request,
                               Int32 _cantidad, Int32 _idCurso)
        { 
        examen ex = new examen();
            ex.nombre = _nombre;
            ex.descripcion = _descripcion;
            ex.fecha_tope = Convert.ToDateTime(_fechaTope);
            ex.porc_aprobacion = Convert.ToInt32(_porcAprobacion);
            ex.duracion = Convert.ToInt32(_duracion);
            ex.id_curso = _idCurso;

            for (int i = 1; i <= _cantidad; i++)
            {
                pregunta p = new pregunta();
                p.examen = ex;
                p.descripcion = Request.Form["P_" + i];

                for (int j = 1; j <= 5; j++)
                {
                    respuesta r = new respuesta();

                    r.pregunta = p;
                    r.descripcion = Request.Form["R_" + i + "_" + j];
                    r.correcta = Request.Form["CB_" + i + "_" + j];
                    p.respuesta.Add(r);

                }

                ctx.pregunta.AddObject(p);


            }

            ctx.examen.AddObject(ex);
            ctx.SaveChanges();
            

            
                   
        }
        }



}
