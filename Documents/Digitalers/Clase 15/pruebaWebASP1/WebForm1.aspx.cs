using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pruebaWebASP1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            lblSaludo.Text = "hola k ase";  //el nombre del label que esta entre los divs

           //aca puedo cambiarle el valor a los labels , se puede usar para clase y todo eso 

        }

        protected void btnSaludar_Click(object sender, EventArgs e)
        {
            lblSaludo.Text = "Hola " + txtNombre.Text;
        }
    }
}