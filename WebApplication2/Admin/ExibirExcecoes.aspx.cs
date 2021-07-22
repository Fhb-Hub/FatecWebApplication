using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Admin
{
   public partial class ExibirExcecoes : System.Web.UI.Page
   {

      // CRIA UMA INSTANCIA PUBLICA DA CLASSE RECOVEREXCEPTIONS
      private LIB_ADSM.RecoverException re = new LIB_ADSM.RecoverException();


      protected void Page_Load(object sender, EventArgs e)
      {
         if (!IsPostBack)
         {
            CarregarExcecoes();
         }
      }

      protected void CarregarExcecoes()
      {
         Excecoes.Text = re.LoadExceptions().Replace("\n", "<br/>");
      }

      protected void Excluir_Click(object sender, EventArgs e)
      {
         re.ClearExceptions();
         Excluir.Visible = false;
         CarregarExcecoes();
      }
   }
}