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
    public partial class home_profesor : System.Web.UI.Page
    {
        private PW3Entities ctx;
        private profesor p;
        private ProfesorService ps;

        protected void Page_Load(object sender, EventArgs e)
        {
            ctx = new PW3Entities();
            ps = new ProfesorService(ctx);
            p = (profesor)Session["usuario"];
            tituloHomeProfesor.InnerText = ps.getTituloHome(p);
            misCursos.InnerHtml = ps.getTablaCursos(p);

        }

    }
}