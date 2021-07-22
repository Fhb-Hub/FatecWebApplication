<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="WebApplication2.Contato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
			<div class="row margin-top-60">
						<!-- FORMULÁRIO -->
						<div class="col-6">
									<div class="box-padding-20 box-boder margin-right-20" style="height:600px;">
												<h2>Fale Conosco</h2>
												<br />
												<asp:Label ID="Erro" runat="server" Font-Size="16px" ForeColor="red" ></asp:Label>
												<br />
												<br />
												<label>Nome</label>
												<asp:TextBox ID="Nome" autocomplete="off" MaxLength="100" runat="server"></asp:TextBox>
												
												<label>Email</label>
												<asp:TextBox ID="Email" autocomplete="off" MaxLength="255" runat="server"></asp:TextBox>
									
												<label>Mensagem</label>
												<asp:TextBox ID="Mensagem" autocomplete="off" MaxLength="255" TextMode="MultiLine" Rows="6" runat="server"></asp:TextBox>
												<br />
												<br />
												<asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />
									</div>
						</div>
						<!-- MAPA -->
						<div class="col-6">
									<div class="box-boder" style="height:600px;">
												<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3679.6893715243837!2d-47.35252258440889!3d-22.73978423765145!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c89bea5cdb94f9%3A0xffb368bd91ea12ae!2sFatec%20Americana%20-%20Faculdade%20de%20Tecnologia%20de%20Americana!5e0!3m2!1spt-BR!2sbr!4v1599568488838!5m2!1spt-BR!2sbr" width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
									</div>
						</div>
			</div>
</asp:Content>
