using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Datos;

namespace Servicios
{
    public class AlumnoService
    {
        private PW3Entities ctx;

        public AlumnoService(PW3Entities _ctx)
        {
            this.ctx = _ctx;
        }
        
        public alumno getAlumno(String _mail)
        {
            return ctx.alumno.Where(a => a.mail == _mail).First();
        }

        public String getTablaCursos(alumno _a)
        {
            var lista = _a.curso.ToList();
            String contenido = "";
            foreach (var item in lista)
            {
                contenido = contenido +
                    "<tr><td>" + item.id_curso + "</td><td>" +
                    item.nombre + "</td><td>" + item.fecha_inicio + "</td><td>" +
                    item.fecha_fin + "</td><td>" + item.profesor.nombre + " " + item.profesor.apellido +
                    "</td></tr>";
            }

            return contenido;
        
        }


        public String getTituloHome(alumno _a)
        {
            return "Bienvenido " + _a.nombre + " " + _a.apellido;
        }


        public String getTablaExamenes(alumno _a)
        {
            var lista = _a.curso.ToList();
            String contenido = "";
            Int32 contador = 1;

            foreach (var item in lista)
            {
                var examenes = item.examen.ToList();

                foreach (var examen in examenes)
                {
                    if (!(_a.examen_realizado.Where(e=> e.id_examen == examen.id_examen).Count()>0 ))
                    {
                         contenido = contenido +
                        "<tr><td>" + contador + "</td><td>" + item.nombre + "</td><td>" +
                        examen.nombre + "</td><td>" + examen.descripcion + "</td><td>" + examen.duracion + " min." + "</td><td>" +
                        examen.fecha_tope + "</td><td>" + comprobarVencimientoExamen(Convert.ToDateTime(examen.fecha_tope),examen.id_examen) +  "</td></tr>";
                        contador++;
                    }

                }
            }

            return contenido;

        }

        public String getTablaExamenesRealizados(alumno _a)
        {
            var lista = _a.examen_realizado.ToList();
            String contenido = "";
            Int32 contador = 1;

            foreach (var item in lista)
            {

                    contenido = contenido +
                    "<tr><td>" + contador + "</td><td>" + item.examen.curso.nombre + "</td><td>" +
                    "hoy" + "</td><td>"  + item.examen.descripcion + "</td><td>" 
                    + item.estado + "</td><td>" + item.resultado + "</td></tr>";
                    contador++;
                
            }

            return contenido;

        }


        private String comprobarVencimientoExamen(DateTime _fechaTope,Int32 _idExamen)
        {
           if( DateTime.Compare(DateTime.Now,_fechaTope) ==1 )
           {
               return "vencido";
           }
           else
           {
               return "<a href='realizar-examen.aspx?id="+Convert.ToString(_idExamen)+"' class='btn btn-success'>Realizar</a>";
           }
            
                
            
        }


    }
}