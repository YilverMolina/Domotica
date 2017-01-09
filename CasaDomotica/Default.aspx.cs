using CasaDomotica.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CasaDomotica
{
    public partial class Default : System.Web.UI.Page
    {
        Usuario user = new Usuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Estado"] = "F";
        }

        protected void Iniciar_Click(object sender, EventArgs e)
        {
            user.username = Username.Text;
            user.password = Password.Text;

            DataTable dt = user.validarUsuario(user);

            if (dt.Rows.Count > 0)
            {
                Session["Estado"] = "T";
                Response.Redirect("Views/Home/Main.aspx");
            }
            else
            {
                Resultados.Visible = true;
                LResultado.Text = "Datos incorrectos";
                Resultados.CssClass = "alert alert-danger";
            }
        }
    }
}