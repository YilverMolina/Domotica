using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CasaDomotica.Views.Home
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Estado"] != null && Session["Estado"].ToString().Equals("T"))
            {

            }
            else
            {
                Response.Redirect("../../Default.aspx");
            }
        }
    }
}