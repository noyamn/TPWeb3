using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication1.Entity;

namespace WebApplication1.Servicios
{
    public class AutenticacionService
    {
        private String mail;
        private String password;
        private PW3Entities ctx = new PW3Entities();
        public AutenticacionService(String _mail, String _password) 
        {
            this.mail = _mail;
            this.password = _password;            
        }

        public Boolean comprobarProfesor() 
        {
            if (ctx.profesor.Where(p => p.mail == this.mail).Count() > 0)
            {
                if (String.Equals(ctx.profesor.Where(p => p.mail == this.mail).First().contraseña, this.password))
                {
                    return true;
                }

                else return false;
            }
            else return false;

        }

        public Boolean comprobarAlumno()
        {
            if (ctx.alumno.Where(p => p.mail == this.mail).Count() > 0)
            {
                if (String.Equals(ctx.alumno.Where(p => p.mail == this.mail).First().contraseña, this.password))
                {
                    return true;
                }

                else return false;
            }
            else return false;

        }

        public alumno getAlumno() 
        {
            return ctx.alumno.Where(p => p.mail == this.mail).First();
        }

        public profesor getProfesor()
        {
            return ctx.profesor.Where(p => p.mail == this.mail).First();
        }


    }
}