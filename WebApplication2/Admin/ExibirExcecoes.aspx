<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExibirExcecoes.aspx.cs" Inherits="WebApplication2.Admin.ExibirExcecoes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
   <div class="row margin-top-60">
      <div class="col-10">
         <h2>Exceções que ocorreram na aplicação</h2>
         <br />
         <br />
         <asp:Label id="Excecoes" runat="server" ></asp:Label>
         <br />
         <br />
         <asp:Button ID="Excluir" OnClick="Excluir_Click" runat="server" Text="Excluir todas as exceções" />
         <br />
         <br />
         <br />
      </div>
   </div>
</asp:Content>
