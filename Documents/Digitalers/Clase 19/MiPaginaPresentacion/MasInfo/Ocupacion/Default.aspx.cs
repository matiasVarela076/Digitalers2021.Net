using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiPaginaPresentacion.MasInfo.Ocupacion
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            if(Session["contador"]!= null)     //si la session existe(distinta a null)
            {
                lblContadorSession.Text = Session["contador"].ToString(); //al contador de sessiones le agrego la session
                                                                         //session=(ultimo numero que quedo)
            }
                if (Request.Cookies["contador"] != null)     
                {
                    lblContadorCookies.Text = Request.Cookies["contador"].Value; //no hace falta ponerle un toString()
                                                                             //porque las cookies ya son strings
                }

            }

            }
            

        protected void btnContarViewState_Click(object sender, EventArgs e)
        {
            int contador = 0;
            if (ViewState["contador"] != null) //si el contador es distinto a null
            {
                contador = (int)ViewState["contador"]; // se le asigna el viewstage
            }
            contador++;  //se incrementa
            ViewState["contador"] = contador;  //se le asigna al viewstage
            lblContadorViewState.Text = contador.ToString();   //y el label de contador que es 0 va a iterando cuando aprete el evento
        }

        protected void btnContarSession_Click(object sender, EventArgs e)
        {
            int contador = 0;
            if (Session["contador"] != null) //si el contador es distinto a null
            {
                contador = (int)Session["contador"]; // se le asigna el session
                contador++;  //se incrementa
                Session["contador"] = contador;  //se le asigna al viewstage
                lblContadorSession.Text = contador.ToString();   //y el label de contador que es 0 va a iterando cuando aprete el evento
            }
        }

        protected void btnContarCookies_Click(object sender, EventArgs e)
        {
            int contador = 0;
                 //request = solicitud del usuario

            if (Request.Cookies["contador"].Value != "") //si las cookis es distinto a null
            {
                contador = Convert.ToInt32(Request.Cookies["contador"].Value); 
                contador++;  //se incrementa
                Response.Cookies["contador"].Value = contador.ToString();  //lo asignamos a la cookie
                                                                           //response= respuesta al usuario

                //Como ponerle un limite de minutos a una cookie
                Response.Cookies["contador"].Expires = DateTime.Now.AddMinutes(1);
                //expires = tiempo de expiracion de la cookie
                //DateTime.Now.AddMinutes(1) = a la fecha.de ahora.agregale(1)minuto

                lblContadorCookies.Text = contador.ToString(); //lo asignamos al label que se muestra en la pag
            }
        }
    }
}