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
    public partial class datos_alumno : System.Web.UI.Page
    {
        public alumno sesion;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["usuario"] == null || !Session["tipoUsuario"].Equals("a"))
            {
                Response.Redirect("login.aspx");
            }

            PW3Entities ctx = new PW3Entities();
            sesion = (alumno)Session["usuario"]; 
            cargarDatos(sesion);

            
        }


        public void cargarDatos(alumno al) 
        {
            if (!Page.IsPostBack)
            {
                TexBoxNombre.Text = al.nombre;
                TextBoxApellido.Text = al.apellido;
                labelEmail.Text = al.mail;
                TextBoxDNI.Text = al.dni;

            }
        }

        protected void BotonModificarDatos_Click(object sender, EventArgs e)
        {
            PW3Entities ctx = new PW3Entities();
            AutenticacionService aut = new AutenticacionService(sesion.mail,sesion.contraseña);
            alumno al = (from a in ctx.alumno where a.mail == sesion.mail
                         select a).First();
            al.nombre = TexBoxNombre.Text;
            al.apellido = TextBoxApellido.Text;
            if (!TextBoxPassNuevaRe.Text.Trim().Equals(""))
            {
                al.contraseña = TextBoxPassNuevaRe.Text;
            }
            al.dni = TextBoxDNI.Text;
            ctx.SaveChanges();
            Session["usuario"] = aut.getAlumno();
            Response.Redirect("home-alumno.aspx");
        }
    }
}