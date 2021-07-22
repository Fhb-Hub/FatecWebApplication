using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// PACOTES DE CLASSES PARA ENVIAR EMAIL
using System.Net;
using System.Net.Mail;

// para trabalhar com arquivos e diretórios o pacote .net é "System.IO"
using System.IO;

namespace WebApplication2
{
   public partial class Contato : System.Web.UI.Page
   {
      protected void Page_Load(object sender, EventArgs e)
      {

      }

      protected void Enviar_Click(object sender, EventArgs e)
      {
         // VALIDAR OS DADOS DO USUÁRIO
         if (Nome.Text.Trim() == "")
         {
            Erro.Text = "Digite seu nome";

         }else if(Email.Text.Trim()=="")
         {
            Erro.Text = "Digite seu email";
         }else if (Mensagem.Text.Trim() == "")
         {
            Erro.Text = "Digite a mensagem";
         }
         else
         {
         try
         {
            // 1. CRIAR VA MENSAGEM DE EMAIL
            MailMessage mail = new MailMessage();

            mail.Subject = "EMAIL ENVIADO PELO FALE CONOSCO";
            mail.IsBodyHtml = false;
            MailAddress from = new MailAddress("contato@seudominio.com.br");
            mail.From = from;
            mail.To.Add("contato@seudominio.com.br");
            mail.Body = "MENSAGEM ENVIADA PELO USUÁRIO\n";
            mail.Body += "Nome     : " + Nome.Text + "\n";
            mail.Body += "Email    : " + Email.Text + "\n";
            mail.Body += "Mensagem : " + Mensagem.Text + "\n";
            mail.Priority = MailPriority.Normal;

            // 2. CONECTAR AO SERVIDOR DE EMAIL E ENVIAR.
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.seudominio.com.br";
            smtp.Port = 587;
            smtp.EnableSsl = false;
            smtp.Credentials = new NetworkCredential("contato@seudominio.com.br", "suaSenha");
            smtp.Send(mail);

         }
         catch (Exception)
         {
            Erro.Text = "Houve uma falha inesperada ao enviar o e-mail.<br>Já estamos trabalhando para solucionar o problema.<br>";
           
            throw;
         }

         }

      }
   }
}