using MiPaginaPresentacion.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiPaginaPresentacion.MasterPages.MasInfo
{
    public partial class QuienSoy : System.Web.UI.Page
    {

        private List<Comentario> comentarios;

        public QuienSoy() {
            //{  //creo la lista
            //   comentarios = new List<Comentarios>()
            //    {
            //        //instancio los objetos de comentarios (que tiene a las properties)
            //        new Comentarios(){Nombre="pepe", Texto="hola k ase"},
            //        new Comentarios(){Nombre="aguilucha", Texto ="voladoras"}

            //    };
        }
    protected void Page_Load(object sender, EventArgs e)
    {
            if (ViewState["comentarios"] == null)
            {                                           //Si no hay nada en la pagina lo meto al viewstate
                comentarios = new List<Comentario>();
                ViewState["comentarios"] = comentarios;
            }

            else {
                comentarios = (List<Comentario>)ViewState["comentarios"];
                
            }

            //Cargamos los la lista a la view
            lstComentarios.DataSource = comentarios; //le asignamos la lista
            lstComentarios.DataBind(); //convierte la lista en formato html para que se vea en la pagina

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            var nombre = txtNombre.Text;
            var comentario = txtComentario.Text;

            //El tipo var se convierte al tipo de dato que se le asigna
            //por ejemplo aca deduce que txtNombre.text es de tipo string, si pasas el cursor en nombre es de tipo string

            Comentario nuevoComentario = new Comentario()
            {
                Nombre = nombre,          //instanciamos un obj comenario  y le asignamos los texboxt a las properties
                Texto= comentario

            };
            comentarios.Add(nuevoComentario); //agrego nuevo comentario a la lista
            ViewState["comentarios"] = comentarios;
            //dejo los campos del textbox en blanco

            txtNombre.Text= "";
            txtComentario.Text = "";

            //actualizo la lista en blanco

            lstComentarios.DataBind();
        }
    }
}