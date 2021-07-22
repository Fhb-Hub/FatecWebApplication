using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppDatabase;

namespace WebApplication2
{
    

    public partial class TrabalheConosco : System.Web.UI.Page
    {

        // STRING DE CONEXÃO COM O ACCESS
        protected string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/TrabalheConosco.accdb") + ";Persist Security Info=False;";

        // CRIA UMA INSTÂNCIA DA CLASSE DE TRANSAÇÃO COM O BANCO DE DADOS
        protected AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();

        public bool IsDate(string data)
        {
            DateTime d1;
            return DateTime.TryParse(data, out d1);
        }

        bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }

        //SALVA UM NOVO OU EDITA UM USUÁRIO NO BANCO DE DADOS
        protected void Enviar_Click(object sender, EventArgs e)
        {

            if (NomeCompleto.Text.Trim() == "")
            {
                Erro.Text = "Digite o nome completo";
            }
            else if (Email.Text.Trim() == "")
            {
                Erro.Text = "Digite o e-mail";
            }
            else if (Telefone.Text.Trim() == "")
            {
                Erro.Text = "Digite o telefone";
            }
            else if (Sexo.Text.Trim() == "")
            {
                Erro.Text = "Selecione o sexo";
            }
            else if (DataNascimento.Text.Trim() == "")
            {
                Erro.Text = "Selecione a data de nascimento";
            }
            else if (Cidade.Text.Trim() == "")
            {
                Erro.Text = "Digite o nome da sua cidade";
            }
            else if (Interesse.Text.Trim() == "")
            {
                Erro.Text = "Selecione um Interesse";
            }
            else if (Descricao1.Text.Trim() == "")
            {
                Erro.Text = "Digite uma descrição";
            }
            else if (EmailExistente() == true)
            {
                Erro.Text = "Este email já foi cadastrado.";
            }
            else
            {
                // 2 - linha de comando SQL PARA INSERIR
                string comando = "INSERT INTO Registros(NomeCompleto,Email,Telefone,Sexo,DataNascimento,Cidade,Descricao,Interesse) VALUES('" + Utilities.Filter(NomeCompleto.Text) + "','" + Utilities.Filter(Email.Text) + "','" + Utilities.Filter(Telefone.Text) + "'," + Utilities.Filter(Sexo.SelectedValue) + ",'" + Utilities.Filter(DataNascimento.Text) + "','" + Utilities.Filter(Cidade.Text) + "','" + Utilities.Filter(Descricao1.Text) + "'," + Utilities.Filter(Interesse.SelectedValue) + ");";

                db.ConnectionString = conexao;
                db.Query(comando);
                LimparCampos();
                tela();
            }   
        }

        protected void tela()
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }

        // IDENTIFICA SE O NOME DE ACESSO JÁ ESTA CADASTRADO NO BANCO DE DADOS
        protected bool EmailExistente()
        {
            string comando = "SELECT Email FROM Registros WHERE Email='" + Email.Text.Trim() + "';";
            db.ConnectionString = conexao;
            System.Data.DataTable tb = (DataTable)db.Query(comando);

            if (tb.Rows.Count == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        // LIMPA OS VALORES DOS CONTROLES ASP NP FRONT-END
        protected void LimparCampos()
            {
                Codigo.Text = "";
                NomeCompleto.Text = "";
                Email.Text = "";
                Telefone.Text = "";
                Sexo.Text = "";
                DataNascimento.Text = "";
                Descricao1.Text = "";
                Interesse.Text = "";
                Cidade.Text = "";
                Erro.Text = "";
                
            }
    }
}