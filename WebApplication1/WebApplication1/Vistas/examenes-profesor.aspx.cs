using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Entity;
using WebApplication1.Servicios;

namespace WebApplication1
{
    public partial class examenes_profesor : System.Web.UI.Page
    {
        profesor p;
        CursoService cs;
        protected void Page_Load(object sender, EventArgs e)
        {
            PW3Entities ctx = new PW3Entities();
            p =  (profesor)Session["usuario"];
            cs = new CursoService(ctx);
            cs.cargarCursosDropDownList(p,ref cursoCrearExamen);
            
        }

    }
}