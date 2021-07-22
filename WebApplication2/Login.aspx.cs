using AppDatabase;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
   public partial class Login : System.Web.UI.Page
   {
      // 1 - string de conexão
      // STRING DE CONEXÃO COM O ACCESS
      protected string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/ADSM22020.accdb") + ";Persist Security Info=False;";

      // CRIA UMA INSTÂNCIA DA CLASSE DE TRANSAÇÃO COM O BANCO DE DADOS
      protected AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();

      protected void Page_Load(object sender, EventArgs e)
      {

      }

      protected void Enviar_Click(object sender, EventArgs e)
      {
         if (NomeAcesso.Text.Trim() == "")
         {
            Mensagem.Text = "Entre com o nome de acesso";
         }
         else if (Senha.Text.Trim() == "")
         {
            Mensagem.Text = "Entre com a senha";
         }
         else
         {
            string comando = "SELECT NomeCompleto FROM Usuarios WHERE NomeAcesso='" + Utilities.Filter(NomeAcesso.Text) + "' AND Senha='" + Utilities.Filter(Senha.Text) + "';";
            db.ConnectionString = conexao;
            DataTable tb = (DataTable)db.Query(comando);
            if (tb.Rows.Count == 1)
            {
               Session["Usuario"] = tb.Rows[0]["NomeCompleto"].ToString();


               // CRIA O TICKET DE AUTENTICAÇÃO DO USUÁRIO

               // Inicializa a classe de autenticação 
               FormsAuthentication.Initialize();

               // Criar o ticket
               FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, "ADS", DateTime.Now, DateTime.Now.AddMinutes(20), false, FormsAuthentication.FormsCookiePath);

               // Grava o ticket 
               Response.Cookies.Add(new HttpCookie(FormsAuthentication.FormsCookieName, FormsAuthentication.Encrypt(ticket)));

               // Redirecionar o usuário para o form que ele chamou
               Response.Redirect(FormsAuthentication.GetRedirectUrl(tb.Rows[0]["NomeCompleto"].ToString(), false));
            }
            else
            {
               Mensagem.Text = "Dados de acesso inválidos";
            }
         }
      }
   }
}