<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TrabalheConosco.aspx.cs" Inherits="WebApplication2.TrabalheConosco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <div class="row margin-top-60">
        <div class="col-3"></div>
        <div class="col-6">
            <div class="box-padding-20 box-border margin-right-20" id="Salvar">
                <asp:Panel ID="Panel1" runat="server">
                    <h2>Trabalhe Conosoco</h2>
                    <br />
                    <asp:Label ID="Erro" Font-Size="16px" ForeColor="red" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Codigo" Visible="false" Font-Bold="true" Font-Size="20px" runat="server"></asp:Label>
                    <br />
                    <label>Nome Completo</label>
                    <asp:TextBox ID="NomeCompleto" MaxLength="255" runat="server"></asp:TextBox>
                    <label>Email</label>
                    <asp:TextBox ID="Email" MaxLength="255" runat="server" TextMode="Email"></asp:TextBox>
                    <label>Telefone</label>
                    <asp:TextBox ID="Telefone" MaxLength="255" runat="server"></asp:TextBox>
                    <div>
                        <label>Sexo</label>
                        <asp:DropDownList ID="Sexo" runat="server">
                            <asp:ListItem Selected="True"> </asp:ListItem>
                            <asp:ListItem Value="0" Text="Feminino"></asp:ListItem>
                            <asp:ListItem Value="1" Text="Masculino"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="resultado2" Visible="false" runat="server"></asp:Label>
                    </div>
                    <label>Data de Nascimento</label>
                    <asp:TextBox ID="DataNascimento" MaxLength="255" runat="server" TextMode="Date"></asp:TextBox>
                    <label>Cidade</label>
                    <asp:TextBox ID="Cidade" MaxLength="255" runat="server"></asp:TextBox>
                    <label>Descrição</label>
                    <asp:TextBox ID="Descricao1" TextMode="MultiLine" Rows="10" runat="server"></asp:TextBox>
                    <br />
                    <div>
                        <label>Interesse</label>
                        <asp:DropDownList ID="Interesse" AutoPostBack="True" runat="server">
                            <asp:ListItem Selected="True"> </asp:ListItem>
                            <asp:ListItem Value="0" Text="Programador"> </asp:ListItem>
                            <asp:ListItem Value="1" Text="Teste de Software"> </asp:ListItem>
                            <asp:ListItem Value="2" Text="Analista de Sistemas"> </asp:ListItem>
                            <asp:ListItem Value="3" Text="Projeto"> </asp:ListItem>
                            <asp:ListItem Value="4" Text="Banco de Dados"> </asp:ListItem>
                            <asp:ListItem Value="5" Text="Segurança"> </asp:ListItem>
                            <asp:ListItem Value="6" Text="Suporte"> </asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:Label ID="Resultado" Visible="false" runat="server"></asp:Label>
                        <br />
                    </div>
                    <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />
                </asp:Panel>
                <div class="fonte">
                    <asp:Panel ID="Panel2" Visible="false"  runat="server">
                            <h3 style="color:blue; font-size:20px; ">Formulário enviado com sucesso.</h3>
                        <p>Já estamos avaliando os seus dados e em breve entraremos em contato. Para mais informações da nossa empresa acesse as seguintes páginas:</p>
                        <asp:HyperLink ID="Home" NavigateUrl="~/Default.aspx" runat="server">Home</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="Sobre" NavigateUrl="~/Sobre.aspx" runat="server">Sobre</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="Relacionados" NavigateUrl="~/Relacionados.aspx" runat="server">Relacionados</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="Contato" NavigateUrl="~/Contato.aspx" runat="server">Contato</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;
                    </asp:Panel>
                </div>
            </div>
            <div class="col-3"></div>
        </div>
    </div>
</asp:Content>
