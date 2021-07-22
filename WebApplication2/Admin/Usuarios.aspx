<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="WebApplication2.Admin.Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
   <div class="row margin-top-60">
      <div class="col-6">
         <div class="box-padding-20 box-border margin-right-20">
            <h2>Cadastro de Usuário</h2>
            <br />

            <div style="width: 80px; background-color: #e2e2e2; text-align: right; float: right;" class="box-border box-padding-10">
               <asp:Label ID="Codigo" Font-Bold="true" Font-Size="20px" runat="server"></asp:Label>&nbsp 
            </div>

            <asp:Label ID="Erro" Font-Size="16px" ForeColor="red" runat="server"></asp:Label>
            <br />
            <br />
            <label>Nome Completo</label>
            <asp:TextBox ID="NomeCompleto" MaxLength="255" runat="server"></asp:TextBox>
            <label>Email</label>
            <asp:TextBox ID="Email" MaxLength="255" runat="server"></asp:TextBox>

            <div style="margin-top: 20px; padding: 20px; border-radius: 5px; margin-bottom: 20px; background-color: #e2e2e2">
               <h3>DADOS DE ACESSO</h3>
               <label>Nome de Acesso</label>
               <asp:TextBox ID="NomeAcesso" autocomplete="off" MaxLength="100" runat="server"></asp:TextBox>

               <label>Senha</label>
               <asp:TextBox ID="Senha" autocomplete="off" MaxLength="50" runat="server"></asp:TextBox>
            </div>

            <label>Anotações</label>
            <asp:TextBox ID="Anotacoes" autocomplete="off" MaxLength="255" TextMode="MultiLine" Rows="5" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Salvar" OnClick="Salvar_Click" runat="server" Text="Salvar" />
            <asp:Button ID="Excluir" Visible="false" OnClick="Excluir_Click" runat="server" Text="Excluir" />
            <br />
         </div>
      </div>

      <div class="col-6">
         <div class="box-padding-20 box-border">
            <h2>Usuários Cadastrados</h2>
            <br />
            <asp:Label ID="Mensagem" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <asp:TextBox ID="BuscarNome" Style="float: left;" MaxLength="255" Width="300px" runat="server"></asp:TextBox> 
            <asp:Button ID="Buscar" OnClick="Buscar_Click" runat="server" Text="Buscar" />
            <asp:Button ID="Cancelar" runat="server" Visible="false" OnClick="Cancelar_Click" Text="X" />
            <br />
            <br />
            <asp:Panel ID="PanelUsuarios" Height="600px" ScrollBars="Vertical" runat="server">
               <asp:GridView ID="ViewUsuarios" Width="100%" OnSelectedIndexChanged="ViewUsuarios_SelectedIndexChanged" AutoGenerateSelectButton="true" AutoGenerateColumns="true" CellPadding="8" HeaderStyle-BackColor="#dfdfdf" BorderColor="#cccccc" runat="server"></asp:GridView>
            </asp:Panel>
         </div>
      </div>
   </div>
</asp:Content>
