using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication1.Entity;

namespace WebApplication1.Servicios
{
    public class ProfesorService
    {

        private PW3Entities ctx;

        public ProfesorService(PW3Entities _ctx)
        {
            this.ctx = _ctx;
        }

        public profesor getProfesor(String _mail)
        {
            return ctx.profesor.Where(p => p.mail == _mail).First();
        }

        public profesor getProfesor(Int32 _id)
        {
            return ctx.profesor.Where(p => p.id_profesor == _id).First();
        }

        public String getTablaCursos(profesor _p)
        {
            var lista = _p.curso.ToList();
            String contenido = "";

            foreach (var item in lista)
            {
                String cantidadAlumnos = Convert.ToString(item.alumno.Count());
                string[] fecha_fin = Convert.ToString(item.fecha_fin).Split(' ');
                string[] fecha_inicio = Convert.ToString(item.fecha_inicio).Split(' ');

                contenido = contenido +
                    "<tr><td>" + item.id_curso + "</td><td>" +
                    item.nombre + "</td><td>" + "SI" + "</td><td>" + cantidadAlumnos + "</td><td>" +
                    fecha_inicio[0] + "</td><td>" + fecha_fin[0] + "</td></tr>";
            }

            return contenido;
        }

        public String getTituloHome(profesor _p)
        {
            return "Bienvenido " + _p.nombre + " " + _p.apellido;
        }
    }
}