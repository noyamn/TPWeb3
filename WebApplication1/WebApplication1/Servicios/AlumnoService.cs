using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication1.Entity;

namespace WebApplication1.Servicios
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


    }
}