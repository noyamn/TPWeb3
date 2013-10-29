using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Librerias;
using WebApplication1.Entity;

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                
        }

        protected void BotonLogin_Click(object sender, EventArgs e)
        {
            Autenticacion aut = new Autenticacion(TextBoxEmail.Text,TextBoxContraseña.Text);
            
            if (Convert.ToInt32(DropDownList1.SelectedValue) == 1) {
                if (aut.comprobarProfesor())
                {
                    Session["usuario"] = aut.getProfesor();

                    Response.Redirect("home-profesor.aspx");
                }
            }

            if (Convert.ToInt32(DropDownList1.SelectedValue) == 2)
            {
                if (aut.comprobarAlumno())
                {
                    Session["usuario"] = aut.getAlumno();
                    Response.Redirect("home-alumno.aspx");
                }
            }

        }


    }
}