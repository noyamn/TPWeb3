using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Servicios;
using WebApplication1.Entity;

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (DropDownList1.SelectedValue == "2")
            {
                RecaptchaControl1.Visible = true;
                RecaptchaControl1.Enabled = true;
            }
            else
            {
                RecaptchaControl1.Visible = false;
                RecaptchaControl1.Enabled = false;
            }


        }

        protected void BotonLogin_Click(object sender, EventArgs e)
        {


            AutenticacionService aut = new AutenticacionService(TextBoxEmail.Text, TextBoxContraseña.Text);

            if (Convert.ToInt32(DropDownList1.SelectedValue) == 1)
            {
                if (aut.comprobarProfesor() == true)
                {
                    Session["usuario"] = aut.getProfesor();


                    Response.Redirect("home-profesor.aspx");



                }
            }

            if (Convert.ToInt32(DropDownList1.SelectedValue) == 2)
            {

                if (aut.comprobarAlumno() && RecaptchaControl1.IsValid ) //if (aut.comprobarAlumno()==true)
               {    
                    Session["usuario"] = aut.getAlumno();
                    Response.Redirect("home-alumno.aspx");
               }
                
            }


        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "2")
            {
                RecaptchaControl1.Visible = true;
                RecaptchaControl1.Enabled = true;
            }
            else
            {
                RecaptchaControl1.Visible = false;
                RecaptchaControl1.Enabled = false;
            }
        }


    }
}