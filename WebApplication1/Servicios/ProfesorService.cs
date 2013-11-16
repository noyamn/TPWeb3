using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Datos;

namespace Servicios
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

        public String getTablaCursos(profesor _p, Int32 _opcion)
        {
            var lista = _p.curso.ToList();
            String contenido = "";

            foreach (var item in lista)
            {
                String cantidadAlumnos = Convert.ToString(item.alumno.Count());
                string[] fecha_fin = Convert.ToString(item.fecha_fin).Split(' ');
                string[] fecha_inicio = Convert.ToString(item.fecha_inicio).Split(' ');
                String botonEditar;
                String botonBorrar;
                if (_opcion == 2)
                {
                    botonEditar = "<a href='editar-curso.aspx?id=" + item.id_curso + "' class='btn btn-success'>Editar</a>";
                    botonBorrar = "<a href='borrarCurso.aspx?id=" + item.id_curso + "' class='btn btn-success'>Borrar</a>";
                }
                else { botonEditar = ""; botonBorrar = ""; }
                
                
                contenido = contenido +
                    "<tr><td>" + item.id_curso + "</td><td>" +
                    item.nombre + "</td><td>" + "SI" + "</td><td>" + cantidadAlumnos + "</td><td>" +
                    fecha_inicio[0] + "</td><td>" + fecha_fin[0] + "</td><td>" + botonEditar +botonBorrar+ "</td></tr>";
            }

            return contenido;
        }

        public String getTituloHome(profesor _p)
        {
            return "Bienvenido " + _p.nombre + " " + _p.apellido;
        }

        public String getTablaExamenes(profesor _p)
        {
            var lista = _p.curso.ToList();
            String contenido = "";
            Int32 contador = 1;

            foreach (var item in lista)
            {
                var examenes = item.examen.ToList();

                foreach (var examen in examenes)
                {
                    Int32 rindieron = examen.examen_realizado.Count();
                    Int32 aprobaron = examen.examen_realizado.Where(e => e.estado == "aprobado").Count();
                    Int32 desaprobaron = rindieron - aprobaron;
                    Int32 faltan = examen.curso.alumno.Count() - rindieron;
                    String botonGrafico = "<a href='ver-grafico.aspx?id="+examen.id_examen+"' class='btn btn-success'>Ver</a>";
                   
                    contenido = contenido +
                    "<tr><td>" + contador + "</td><td>" + item.nombre + "</td><td>" +
                    examen.nombre + "</td><td>" + rindieron + "</td><td>" + aprobaron +
                     "</td><td>"+ desaprobaron  + "</td><td>"+faltan + "</td><td>"+botonGrafico+"</td></tr>";
                    contador++;
                }
            }

            return contenido;

        }

        public Boolean comprobarCurso(profesor _p, Int32 _idCurso)
        {
            if (ctx.curso.Where(c => c.id_curso == _idCurso).Count() > 0)
            {
                if (ctx.profesor.Where(p => p.id_profesor == _p.id_profesor).First().curso.Where(c => c.id_curso == _idCurso).Count() > 0)
                {
                    return true;
                }
                else return false;
            }
            else return false;
        }
    }
}