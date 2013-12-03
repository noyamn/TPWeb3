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
    public partial class realizar_examen : System.Web.UI.Page
    {
        private PW3Entities ctx;
        private alumno a;
        private ExamenService es;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["usuario"] == null || !Session["tipoUsuario"].Equals("a"))
            {
                Response.Redirect("login.aspx");
            }
            a = (alumno)Session["usuario"];
            ctx = new PW3Entities();
            es = new ExamenService(ctx);
            try
            {
                Int32 id = Convert.ToInt32(Request.QueryString["id"]);
                examen aux = ctx.examen.FirstOrDefault(ex=> ex.id_examen == id);
                if (!es.comprobarExamen(aux,a))
                {
                    Response.Redirect("home-alumno.aspx");
                }
            }
            catch (Exception)
            {

                Response.Redirect("error-alumno.aspx");
            }
          

            
        }
    }
}