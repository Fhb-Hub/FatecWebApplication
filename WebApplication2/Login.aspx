<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
   <div class="row margin-top-60">
       <div class="col-4"></div>
      <div class="col-4">
         <div class="box-border box-padding-20">
            <h2>ENTRAR</h2>
            <br />
            <asp:Label ID="Mensagem" runat="server"></asp:Label>
            <br />
            <br />
            <label>NOME DE ACESSO</label>
            <asp:TextBox ID="NomeAcesso" MaxLength="255" runat="server"></asp:TextBox>
            <label>SENHA</label>
            <asp:TextBox ID="Senha" MaxLength="255" TextMode="Password" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Login" />
            <br />
         </div>
      </div>
   </div>
    <div class="col-4"></div>
</asp:Content>
