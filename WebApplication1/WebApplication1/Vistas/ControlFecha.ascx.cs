using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Vistas
{
    public partial class ControlFecha : System.Web.UI.UserControl
    {   
        
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }



        public string Value {

            set { TextBox1.Text = value; }
            get { return TextBox1.Text;  }
        
        }
    }
}