using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Entity;

namespace WebApplication1
{
    public partial class home_profesor : System.Web.UI.Page
    {
        private PW3Entities ctx;
        private profesor p;

        protected void Page_Load(object sender, EventArgs e)
        {
            ctx = new PW3Entities();
            p = (profesor)Session["usuario"];
            tituloHomeProfesor.InnerText = "Bienvenido " + p.nombre + " " + p.apellido;
            var resultado = p.curso.ToList();
            misCursos.InnerHtml = crearTabla(resultado);

        }

        public String crearTabla(List<curso> lista)
        {
            String contenido = "";
            
            foreach (var item in lista)
            {
                String cantidadAlumnos = Convert.ToString(item.alumno.Count());
                contenido = contenido +
                    "<tr><td>" + item.id_curso + "</td><td>" +
                    item.nombre + "</td><td>" + "SI" + "</td><td>" +cantidadAlumnos + "</td><td>" +
                    item.fecha_inicio + "</td><td>" + item.fecha_fin + "</td></tr>";
            }

            return contenido;
        }
    }
}