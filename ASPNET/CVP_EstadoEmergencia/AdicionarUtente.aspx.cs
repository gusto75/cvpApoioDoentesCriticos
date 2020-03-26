using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CVP_EstadoEmergencia
{
    public partial class AdicionarUtente : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=GUSTOWINDOWS;Initial Catalog=cvpAssistenciaUtentes;Integrated Security=True");
        int newIdUtente;
        string nomeUtente;
        string generoUtente;
        string dataNascimento;
        int contactoUtente;
        int contactoAltUtente;
        string freguesia;
        string moradaCompleta;
        bool contactada;
        string dataContacto;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        public int GetNewidUtente(SqlConnection con)
        {
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandText = "SELECT COUNT(*) FROM Utente";
            int result = (int)cmd1.ExecuteScalar();

            return result;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();

            newIdUtente = GetNewidUtente(con)+1;
            nomeUtente = TextBox1.Text;
            generoUtente = TextBox2.Text;
            if (String.IsNullOrEmpty(TextBox6.Text))
            {
                contactoAltUtente = 0;
            }
            else
            {
                contactoAltUtente = int.Parse(TextBox5.Text);
            }
            contactoUtente = int.Parse(TextBox6.Text);
            moradaCompleta = TextBox3.Text;
            freguesia = TextBox4.Text;
            dataNascimento = (Calendar1.SelectedDate.ToShortDateString());
            if (CheckBox1.Checked)
            {
                contactada = true;
                dataContacto = (Calendar2.SelectedDate.ToShortDateString());
            }
            else
            {
                contactada = false;
                dataContacto=null;
                cmd.CommandText = "INSERT INTO Utente (idUtente,nomeUtente,generoUtente,dataNascimento,contactoUtente,contactoAltUtente,freguesia,moradaCompleta,contactada,dataContacto) VALUES('" + newIdUtente + "','" + nomeUtente + "','" + generoUtente + "',CONVERT(datetime,'" + dataNascimento + "',103),'" + contactoUtente + "','" + contactoAltUtente + "','" + freguesia + "','" + moradaCompleta + "','" + contactada + "',NULL)";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Utentes.aspx");
            }
            
            cmd.CommandText = "INSERT INTO Utente (idUtente,nomeUtente,generoUtente,dataNascimento,contactoUtente,contactoAltUtente,freguesia,moradaCompleta,contactada,dataContacto) VALUES('"+newIdUtente+"','"+nomeUtente + "','"+generoUtente + "',CONVERT(datetime,'" + dataNascimento + "',103),'" + contactoUtente + "','" + contactoAltUtente + "','" + freguesia + "','" + moradaCompleta + "','" + contactada + "',CONVERT(datetime,'" + dataContacto+ "',103))";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Utentes.aspx");
        }
    }
}