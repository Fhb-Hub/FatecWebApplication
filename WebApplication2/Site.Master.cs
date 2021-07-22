using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
   public partial class Site : System.Web.UI.MasterPage
   {
      protected void Page_Load(object sender, EventArgs e)
      {
         if (Session["Usuario"] != null)
         {
            Usuario.Text = Session["Usuario"].ToString();
            ExibirExcecoes.Visible = true;
            Usuarios.Visible = true;
            Logout.Visible = true;
            Login.Visible = false;
            L1.Visible = true;
            L2.Visible = true;
            }
         else
         {
            Usuario.Text = "";
            ExibirExcecoes.Visible = false;
            Usuarios.Visible = false;
            Logout.Visible = false;
            Login.Visible = true;
            L1.Visible = false;
            L2.Visible = false;
            }
      }
   }
}