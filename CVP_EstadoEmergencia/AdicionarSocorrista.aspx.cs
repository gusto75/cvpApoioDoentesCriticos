using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace CVP_EstadoEmergencia
{
    public partial class AdicionarSocorrista : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=GUSTOWINDOWS;Initial Catalog=cvpAssistenciaUtentes;Integrated Security=True");
        string nomeSocorrista;
        int newIdSocorrista;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            nomeSocorrista = TextBox1.Text;
            newIdSocorrista = GetNewidSocorrista(con) + 1;
            cmd.CommandText = "INSERT INTO Socorrista VALUES('"+newIdSocorrista+"','"+nomeSocorrista+"')";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Socorristas.aspx");
        }
        public int GetNewidSocorrista(SqlConnection con)
        {
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandText = "SELECT COUNT(*) FROM Socorrista";
            int result = (int)cmd1.ExecuteScalar();

            return result;
        }
    }
}