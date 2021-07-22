using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppDatabase;

// TECNICAR PARA EVITAR INJEÇÃO DE SQL NO CÓDIGO C#.
// https://docs.microsoft.com/en-us/sql/relational-databases/security/sql-injection?view=sql-server-2017&ranMID=24542&ranEAID=je6NUbpObpQ&ranSiteID=je6NUbpObpQ-y5AGKR2EoVj9KrxYVg4fMA&epi=je6NUbpObpQ-y5AGKR2EoVj9KrxYVg4fMA&irgwc=1&OCID=AID2000142_aff_7593_1243925&tduid=%28ir__jfcc3cs6w9kfqnqmkk0sohzjxm2xsy9k9bwotvxa00%29%287593%29%281243925%29%28je6NUbpObpQ-y5AGKR2EoVj9KrxYVg4fMA%29%28%29&irclickid=_jfcc3cs6w9kfqnqmkk0sohzjxm2xsy9k9bwotvxa00


namespace WebApplication2.Admin
{
   public partial class Usuarios : System.Web.UI.Page
   {

      // 1 - string de conexão
      // STRING DE CONEXÃO COM O ACCESS
      protected string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/ADSM22020.accdb") + ";Persist Security Info=False;";

      // CRIA UMA INSTÂNCIA DA CLASSE DE TRANSAÇÃO COM O BANCO DE DADOS
      protected AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();

      protected void Page_Load(object sender, EventArgs e)
      {
         if (!IsPostBack)
         {
            ExibirUsuarios();
         }
      }

      // SALVA UM NOVO OU EDITA UM USUÁRIO NO BANCO DE DADOS
      protected void Salvar_Click(object sender, EventArgs e)
      {
         // VALIDAR OS DADOS DO USUÁRIO
         if (NomeCompleto.Text.Trim() == "")
         {
            Erro.Text = "Digite o nome completo";
         }
         else if (Email.Text.Trim() == "")
         {
            Erro.Text = "Digite o e-mail";
         }
         else if (NomeAcesso.Text.Trim() == "")
         {
            Erro.Text = "Digite o nome de acesso";
         }
         else if (NomeAcessoExiste() == true)
         {
            Erro.Text = "O nome de acesso já está cadastrado para outro usuário";
         }
         else if (Senha.Text.Trim() == "")
         {
            Erro.Text = "Digite a senha";
         }
         else
         {
            string comando = "";

            if (Codigo.Text == "")
            {
               // 2 - linha de comando SQL PARA INSERIR
               comando = "INSERT INTO Usuarios(NomeCompleto,Email,NomeAcesso,Senha,Anotacoes) VALUES('" + Utilities.Filter(NomeCompleto.Text) + "','" + Utilities.Filter(Email.Text) + "','" + Utilities.Filter(NomeAcesso.Text) + "','" + Utilities.Filter(Senha.Text) + "','" + Utilities.Filter(Anotacoes.Text) + "');";

               Mensagem.Text = "O registro foi inserido com sucesso";
            }
            else
            {
               comando = "UPDATE Usuarios SET NomeCompleto='" + Utilities.Filter(NomeCompleto.Text) + "',Email='" + Utilities.Filter(Email.Text) + "',NomeAcesso='" + Utilities.Filter(NomeAcesso.Text) + "',Senha='" + Utilities.Filter(Senha.Text) + "',Anotacoes='" + Utilities.Filter(Anotacoes.Text) + "' WHERE Codigo=" + Utilities.Filter(Codigo.Text) + ";";

               Mensagem.Text = "O registro foi editado com sucesso";
            }

            db.ConnectionString = conexao;
            db.Query(comando);

            LimparCampos();
            ExibirUsuarios();

            // PARA TRANSAÇÃO NO MYSQL
            //AppDatabase.MySqlTransaction db = new AppDatabase.MySqlTransaction();
            //db.ConnectionString = conexao;
            //db.Query(comando);
         }
      }

      // IDENTIFICA SE O NOME DE ACESSO JÁ ESTA CADASTRADO NO BANCO DE DADOS
      protected bool NomeAcessoExiste()
      {
         string comando = "SELECT Codigo FROM Usuarios WHERE NomeAcesso='" + NomeAcesso.Text.Trim() + "';";
         db.ConnectionString = conexao;
         System.Data.DataTable tb = (DataTable)db.Query(comando);

         if (tb.Rows.Count == 1)
         {
            if (tb.Rows[0]["Codigo"].ToString() != Codigo.Text)
            {
               return true;
            }
            else
            {
               return false;
            }
         }
         else
         {
            return false;
         }
      }

      // EXIBE OS USUÁRIOS NO GRIDVIEW
      protected void ExibirUsuarios()
      {
         string comando = "SELECT Codigo, NomeCompleto, Email, NomeAcesso FROM Usuarios ORDER BY NomeCompleto ASC;";

         // CRIAR UMA TABELA NA MEMÓRIA DO SERVIDOR PARA RECEBER OS DADOS VINDOS DO BANCO DE DADOS

         db.ConnectionString = conexao;
         System.Data.DataTable tb = (DataTable)db.Query(comando);

         if (tb.Rows.Count > 0)
         {
            ViewUsuarios.DataSource = tb;
            ViewUsuarios.DataBind();
            ViewUsuarios.Visible = true;
         }
         else
         {
            ViewUsuarios.Visible = false;
         }
         tb.Dispose();
      }

      // QUANDO UMA LINHA É SELECIONADA DO GRIDVIEW
      protected void ViewUsuarios_SelectedIndexChanged(object sender, EventArgs e)
      {
         // Identificar o código que foi pressionado
         Codigo.Text = ViewUsuarios.SelectedRow.Cells[1].Text;

         string comando = "SELECT * FROM Usuarios WHERE Codigo=" + Codigo.Text;
         db.ConnectionString = conexao;
         System.Data.DataTable tb = (System.Data.DataTable)db.Query(comando);

         if (tb.Rows.Count == 1)
         {
            NomeCompleto.Text = tb.Rows[0]["NomeCompleto"].ToString();
            Email.Text = tb.Rows[0]["Email"].ToString();
            NomeAcesso.Text = tb.Rows[0]["NomeAcesso"].ToString();
            Senha.Text = tb.Rows[0]["Senha"].ToString();
            Anotacoes.Text = tb.Rows[0]["Anotacoes"].ToString();

            // DEIXAR O BOTÃO EXCLUIR VISIVEL
            Excluir.Visible = true;
         }
         else
         {
            Erro.Text = "Registro não encontrado - pode ter sido excluido";
            ExibirUsuarios();
         }
         tb.Dispose();
      }

      protected void Excluir_Click(object sender, EventArgs e)
      {
         if (RegistroExiste() == false)
         {
            Erro.Text = "Registro não encontrado, pode ter sido excluido.";
         }
         else
         {
            var comando = "DELETE FROM Usuarios WHERE Codigo =" + Codigo.Text + ";";
            db.ConnectionString = conexao;
            db.Query(comando);

            LimparCampos();
            ExibirUsuarios();
         }
      }

      // LIMPA OS VALORES DOS CONTROLES ASP NP FRONT-END
      protected void LimparCampos()
      {
         Codigo.Text = "";
         NomeCompleto.Text = "";
         Email.Text = "";
         NomeAcesso.Text = "";
         Senha.Text = "";
         Anotacoes.Text = "";
         Erro.Text = "";
         Mensagem.Text = "";
         Excluir.Visible = false;
      }

      // VERIFICA A EXISTENCIA OU NÃO DE UM REGISTRO "Codigo" NA TABELA Usuários
      protected bool RegistroExiste()
      {
         string comando = "SELECT Codigo FROM Usuarios WHERE Codigo=" + Codigo.Text + ";";
         db.ConnectionString = conexao;
         System.Data.DataTable tb = (System.Data.DataTable)db.Query(comando);
         if (tb.Rows.Count == 0)
         {
            return false;
         }
         else
         {
            return true;
         }
      }

      protected void Buscar_Click(object sender, EventArgs e)
      {
         string comando = "SELECT Codigo, NomeCompleto, Email, NomeAcesso FROM Usuarios WHERE NomeCompleto+Email+NomeAcesso LIKE '%" + BuscarNome.Text + "%' ORDER BY NomeCompleto ASC;";

         // CRIAR UMA TABELA NA MEMÓRIA DO SERVIDOR PARA RECEBER OS DADOS VINDOS DO BANCO DE DADOS

         db.ConnectionString = conexao;
         System.Data.DataTable tb = (DataTable)db.Query(comando);

         if (tb.Rows.Count > 0)
         {
            ViewUsuarios.DataSource = tb;
            ViewUsuarios.DataBind();
            ViewUsuarios.Visible = true;
            Cancelar.Visible = true;
         }
         else
         {
            ViewUsuarios.Visible = false;
            Mensagem.Text = "Nenhuma correspondencia da busca foi encontrada.";
         }
         tb.Dispose();
      }

      protected void Cancelar_Click(object sender, EventArgs e)
      {
         BuscarNome.Text = "";
         Cancelar.Visible = false;
         ExibirUsuarios();
      }
   }
}