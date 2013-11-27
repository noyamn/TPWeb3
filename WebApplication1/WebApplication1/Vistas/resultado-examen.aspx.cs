using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class resultado_examen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Int32 cantidad1 = (Int32)Session["respuestasCorrectas"];
            cantidad.InnerText = Convert.ToString(cantidad1);
        }
    }
}