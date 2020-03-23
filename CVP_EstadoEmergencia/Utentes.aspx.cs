using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVP_EstadoEmergencia
{
    public partial class Utentes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdicionarUtente.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }
    }
}