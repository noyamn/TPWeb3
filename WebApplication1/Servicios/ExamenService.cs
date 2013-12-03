using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Datos;

namespace Servicios
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

                    String aux = Request.Form["R_" + i + "_" + j].Trim();
                    if (!aux.Equals(""))
                    {
                        r.pregunta = p;
                        r.descripcion = aux;

                        if (Request.Form["CB_" + i + "_" + j]!=null)
                        {
                             r.correcta = Request.Form["CB_" + i + "_" + j];   
                        }
                        else
                        {
                            r.correcta = "";
                        }
                        p.respuesta.Add(r);                        
                    }


                }

                ctx.pregunta.AddObject(p);


            }

            ctx.examen.AddObject(ex);
            ctx.SaveChanges();
            

            
                   
        }

        public examen getExamen(Int32 _id)
        {
            return ctx.examen.FirstOrDefault(e => e.id_examen == _id);
        }

        public void guardarCalificacion(examen _e, alumno _a, String _estado, Int32 _resultado) 
        {
            examen_realizado er = new examen_realizado();
            alumno al = new alumno();
            al = ctx.alumno.FirstOrDefault(a => a.id_alumno == _a.id_alumno);
            er.estado = _estado;
            er.resultado = _resultado;
            er.alumnoReference.EntityKey = al.EntityKey;
            er.examenReference.EntityKey = _e.EntityKey;
            ctx.examen_realizado.AddObject(er);
            ctx.SaveChanges();
        }

        public bool comprobarExamen(examen _e,alumno _a){

            if (ctx.examen.Where(e => e.id_examen == _e.id_examen).Count() > 0)
            {
                if (ctx.alumno.Where(a => a.id_alumno == _a.id_alumno).First().curso.Where(c => c.id_curso == _e.id_curso).Count() > 0)
                {
                    if (ctx.examen_realizado.Where(er => er.id_examen == _e.id_examen && er.id_alumno == _a.id_alumno).Count() == 0)
                    {
                        return true;
                    }
                    else return false;
                }
                else return false;
            }
            else { return false; }
         
        }

        }
}
