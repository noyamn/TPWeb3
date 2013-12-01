using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Vistas
{
    public partial class prueba : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session["hora"] = DateTime.Now;
            } 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = Convert.ToString(DateTime.Now.AddMinutes(20));
            DateTime aux = (DateTime)Session["hora"];
            if (DateTime.Compare(DateTime.Now, aux.AddMinutes(1)) == 1)
            {
                Label1.Text = "todo bien";
            }
            else Label1.Text = "se exedio";
        }
    }
}