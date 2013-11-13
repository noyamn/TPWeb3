using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Entity;

namespace WebApplication1.Vistas
{
    public partial class ver_grafico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["usuario"] == null || !Session["tipoUsuario"].Equals("p"))
            {
                Response.Redirect("login.aspx");
            }

            Int32 id;

            PW3Entities pw3 = new PW3Entities();
            examen examen1;
            try
            {
                id = Convert.ToInt32(Request.QueryString["id"]);
                examen1 = pw3.examen.Where(ex=> ex.id_examen == id).First();
                Int32 rindieron = examen1.examen_realizado.Count();
                Int32 aprobaron = examen1.examen_realizado.Where(ex => ex.estado == "aprobado").Count();
                Int32 desaprobaron = rindieron - aprobaron;
                Int32 faltan = examen1.curso.alumno.Count() - rindieron;
            
                this.Chart1.Series["aprobados"].Points.AddXY("Aprobados", aprobaron);

                this.Chart1.Series["aprobados"].Points.AddXY("Desaprobados", desaprobaron);

                this.Chart2.Series["rindieron"].Points.AddXY("Rindieron", rindieron);

                this.Chart2.Series["rindieron"].Points.AddXY("Faltan", faltan);
            
            }
            catch (Exception)
            {
                Response.Redirect("examenes-profesor.aspx");
            }

            





        }
    }
}