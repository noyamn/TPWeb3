using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication1.Entity;

namespace WebApplication1.Servicios
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




    }
}