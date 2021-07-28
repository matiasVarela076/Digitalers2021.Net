using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormularioContacto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                txtNombre.Text = "ingrese su nombre";
                txtApellido.Text = "ingrese su apellido";
                txtMail.Text = "ingrese su mail";


            }
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string misDatos = $"Nombre: {txtNombre.Text},\nApellido: {txtApellido},\nMail: {txtMail} ";
            File.AppendAllText("d:\\registros.txt", misDatos);

            txtNombre.Text = "";
            txtApellido.Text = "";
            txtMail.Text = "";
        }

    }
}