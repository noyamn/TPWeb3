using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Entity;

namespace WebApplication1
{
    public partial class home_alumno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            PW3Entities ctx = new PW3Entities();
            alumno a = (alumno)Session["usuario"];
            tituloHomeAlumno.InnerText = "Bienvenido " + a.nombre + " " + a.apellido;
            var resultado = a.curso.ToList();
            tablaMisCursos.InnerHtml = this.crearTabla(resultado);

        }

        private String crearTabla(List<curso> lista)
        {
            String contenido = "";
            foreach (var item in lista)
            {
                contenido = contenido +
                    "<tr><td>" + item.id_curso + "</td><td>" +
                    item.nombre + "</td><td>" + item.fecha_inicio + "</td><td>" +
                    item.fecha_fin + "</td><td>" + item.profesor.nombre +" "+item.profesor.apellido+
                    "</td></tr>";
            }

            return contenido;
        
        }


    }
}