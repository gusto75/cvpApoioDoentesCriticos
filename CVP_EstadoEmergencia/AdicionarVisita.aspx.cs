using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CVP_EstadoEmergencia
{
    public partial class AdicionarVisita : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=GUSTOWINDOWS;Initial Catalog=cvpAssistenciaUtentes;Integrated Security=True");
        int nmrUtente;
        //string freguesiaUtente;
        DateTime dataVisita;
        int motivo;
        int socorrista;
        int newidVisita;
        string observacoes;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            nmrUtente = GetIdUtente(con, DropDownList1.Text);
            //freguesiaUtente = GetFreguesiaUtente(con, nmrUtente);
            dataVisita = DateTime.Parse(Calendar1.SelectedDate.ToShortDateString());
            motivo = GetMotivo(con, DropDownList2.Text);
            socorrista = GetSocorrista(con, DropDownList3.Text);
            newidVisita = GetNewidVisita(con)+1;
            observacoes = TextBox1.Text;
            
            cmd.CommandText = "INSERT INTO Visita VALUES('"+newidVisita+"','"+nmrUtente+"','"+socorrista+"','"+dataVisita+"','"+motivo+"','"+observacoes+"')";
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("Visitas.aspx");
        }
        public int GetIdUtente(SqlConnection conn, string nome)
        {
            SqlCommand cmd1 = conn.CreateCommand();
            cmd1.CommandText = "SELECT idUtente FROM Utente WHERE nomeUtente='" + nome + "'";
            int result = (int)cmd1.ExecuteScalar();
            return result;
        }

        public int GetMotivo(SqlConnection con, string mot)
        {
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandText = "SELECT idMotivo FROM Motivo WHERE descricaoMotivo='" + mot + "'";
            int result = (int)cmd1.ExecuteScalar();
            return result;
        }
        public int GetSocorrista(SqlConnection con, string soc)
        {
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandText = "SELECT idSocorrista FROM Socorrista WHERE nomeSocorrista='" + soc + "'";
            int result = (int)cmd1.ExecuteScalar();
            return result;
        }
        public int GetNewidVisita(SqlConnection con)
        {
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandText = "SELECT COUNT(*) FROM Visita";
            int result = (int)cmd1.ExecuteScalar();
            return result;
        }
    }
}