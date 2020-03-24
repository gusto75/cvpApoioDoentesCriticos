using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CVP_EstadoEmergencia
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=GUSTOWINDOWS;Initial Catalog=cvpAssistenciaUtentes;Integrated Security=True");
        string username;
        int password;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            username = TextBox1.Text;
            password = TextBox3.Text.GetHashCode();
            string query = "select * from Socorrista where username='"+username+"' and +password='"+password+"'";

            SqlCommand cmd = new SqlCommand(query, con);
            string output = cmd.ExecuteScalar().ToString();

            if(output=="1")
            {
                Response.Redirect("Visitas.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Dados incorretos";
            }
        }
    }
}