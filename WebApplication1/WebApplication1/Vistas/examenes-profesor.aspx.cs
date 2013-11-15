using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;
using Servicios;

namespace WebApplication1
{
    public partial class examenes_profesor : System.Web.UI.Page
    {
        profesor p;
        CursoService cs;
        ProfesorService ps;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["usuario"] == null || !Session["tipoUsuario"].Equals("p"))
            {
                Response.Redirect("login.aspx");
            }

            PW3Entities ctx = new PW3Entities();
            p =  (profesor)Session["usuario"];
            cs = new CursoService(ctx);
            ps = new ProfesorService(ctx);
            tablaMisExamenes.InnerHtml = ps.getTablaExamenes(p);
            
        }


        public String getNombreCurso()
        {
            return nombreCurso.Text;
        }
        public String getCantidad()
        {
            return cantidad.Text ;
        }


    }
}