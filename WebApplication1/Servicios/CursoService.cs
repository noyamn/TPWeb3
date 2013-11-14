using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Datos;
using System.Web.UI.WebControls;

namespace Servicios
{
    public class CursoService
    {
        private PW3Entities ctx;

        public CursoService(PW3Entities _ctx)
        {
            this.ctx = _ctx;        
        }

        public void crearCurso
            (String _nombre, String _fechaInicio,String _fechaFin, Int32 _idProfesor,
            String _mails)
        {
            curso nuevoCurso = new curso();
            nuevoCurso.nombre = _nombre;
            nuevoCurso.fecha_inicio = Convert.ToDateTime(_fechaInicio);
            nuevoCurso.fecha_fin = Convert.ToDateTime(_fechaFin);
            nuevoCurso.id_profesor = _idProfesor;
            manejoAlumno(_mails, ref nuevoCurso);
            ctx.AddTocurso(nuevoCurso);
            ctx.SaveChanges();
            
        
        }

        private void manejoAlumno(String mails, ref curso nuevoCurso)
        {
            mails = mails.Trim();
            string[] stringArray = mails.Split(',');
            for (int i = 0; i < stringArray.Length; i++)
            {
                String mail = stringArray[i];
                if (ctx.alumno.Where(a => a.mail == mail).Count() == 0)
                {
                    alumno al = new alumno();
                    al.mail = stringArray[i];
                    al.contraseña = stringArray[i];
                    ctx.AddToalumno(al);
                    nuevoCurso.alumno.Add(al);
                }
                else
                {
                    alumno al = ctx.alumno.Where(a => a.mail == mail).First();
                    nuevoCurso.alumno.Add(al);
                }
            }
        }

        public void cargarCursosDropDownList(profesor _p, ref DropDownList dp)
        {
            dp.DataSource = _p.curso.ToList();
            dp.DataTextField = "nombre";
            dp.DataValueField = "id_curso";
            dp.DataBind();
            
        }


        public curso getCurso(Int32 _idCurso)
        {
            return ctx.curso.Where(c => c.id_curso == _idCurso).First();
        }

        public String getTituloEditar(Int32 _id)
        {
            return "Editando el curso : " + ctx.curso.Where(c => c.id_curso == _id).First().nombre;
        }



        public void editarCurso(Int32 _id, String _nombre, String _fechaIni, String _fechaFin, String _mails)
        {
            curso curso = ctx.curso.Where(c => c.id_curso == _id).First();

            curso.nombre = _nombre;
            curso.fecha_inicio = Convert.ToDateTime(_fechaIni);
            curso.fecha_fin = Convert.ToDateTime(_fechaFin);
            if (!_mails.Trim().Equals(""))
            {
                this.manejoAlumno(_mails.Trim(), ref curso);
            }
            
            ctx.SaveChanges();
            
        }


    }
}