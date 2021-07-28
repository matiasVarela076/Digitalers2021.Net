using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiPaginaPresentacion
{
    public partial class Default : System.Web.UI.Page
    {

        private List<string> proyectos;

      
        public Default()
        {
            //FORMA 1

            //proyectos = new List<string>();
            //proyectos.Add("paginas de proyectos");
            //proyectos.Add("Blog");
            //proyectos.Add("Sitio de noticias");

            //FORMA 2

            proyectos = new List<string>()
            {
                "paginas de proyectos",
                "blog",
                "sitio de noticias"
            };
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            lstProyectos.DataSource = proyectos; //Trae el id de ListView y le dice que lo que muestra es
            lstProyectos.DataBind(); //dataBind muestra en el html la lista                    //la lista proyectos
        }

        protected void redirigirQuienSoy_Click(object sender, EventArgs e)
        {
            //Como pasar de un pagina 

            //Forma 1
            //server.tranfer = cambia la pagina pero mantiene la url de la pagina anterior
            //es decir carga la pagina en el servidor

            //Server.Transfer("~/MasInfo/QuienSoy.aspx");

            //Forma 2

            //Si quiero que funcione como link(cambia url) tengo que hacer esto

            Response.Redirect("~/MasInfo/QuienSoy.aspx");
        }
    }
}