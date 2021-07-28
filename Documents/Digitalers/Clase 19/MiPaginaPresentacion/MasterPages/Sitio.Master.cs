using System;
using System.Collections.Generic;
using System.Configuration;  //agregar el using de configuration
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiPaginaPresentacion.MasterPages
{
    public partial class Sitio : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {    
            if(IsPostBack == false)
            {
                lblNombrePersona.Text = ConfigurationManager.AppSettings["nombrePersona"] ??"Falta definir nombre en appSettings";
            //si es la primera ves. el label de nombrepersona va a hacer el mismo que en el web.config.appSettings

                // ?? = es un else con una sentencia en este caso si no es appsetting pone lo otro
            }
        }
    }
}