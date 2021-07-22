<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Relacionados.aspx.cs" Inherits="WebApplication2.Relacionados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <br />
    <br />
    <h1>SUGESTÕES</h1>
    <p style="font-size: 18px;">Com o intuito de auxiliá-lo na área de tecnologia, inserimos abaixo algumas recomendações de cursos e utilidades.</p>
    <br />
    <br />
    <h2>&nbsp;&nbsp;&nbsp;Cursos</h2>
    <div class="row margin-top-20">
        <div class="col-3">
            <div class="box-padding-20 box-boder margin-right-20">
                <div class="animate-up">
                    <asp:ImageButton ID="ImageButton1" Width="100%" runat="server" ToolTip="Clique aqui para saber mais." ImageUrl="~/Images/c1.jpg" PostBackUrl="https://www.udemy.com/?deal_code=&utm_term=Homepage&utm_content=Textlink&utm_campaign=Rakuten-default&ranMID=39197&ranEAID=IY%2F1josfiPE&ranSiteID=IY_1josfiPE-_L7ym.VGz29Pt4ZCLqjyBg&utm_source=aff-campaign&LSNPUBID=IY%2F1josfiPE&utm_medium=udemyads" />
                    <br />
                    <h3>Udemy</h3>
                    <br />
                </div>
                A Udemy é uma plataforma EAD de e-learning para profissionais poderem tanto estudar como ensinar. O conteúdo dos cursos é bem variado com cursos de auto-ajuda à programação avançada, alguns gratuitos e outros pagos, com certificados ou não.
            </div>
        </div>

        <div class="col-3">
            <div class="box-padding-20 margin-right-20">
                <div class="animate-up">
                    <asp:ImageButton ID="ImageButton2" Width="100%" runat="server" ToolTip="Clique aqui para saber mais." ImageUrl="~/Images/c2.png" PostBackUrl="https://www.alura.com.br/cursos-online-programacao" />
                    <br />
                    <h3>Alura</h3>
                    <br />
                </div>
                A Alura é um ambiente completo para você estudar os mais variados temas relacionados a tecnologia.Ao escolher um curso, você pode ver as seções e quantidade de exercícios de cada uma. A navegação pela plataforma é clara e descomplicada, focando totalmente no conteúdo.
            </div>
        </div>

        <div class="col-3">
            <div class="box-padding-20 margin-right-20">
                <div class="animate-up">
                    <asp:ImageButton ID="ImageButton3" Width="100%" runat="server" ToolTip="Clique aqui para saber mais." ImageUrl="~/Images/c4.jpg" PostBackUrl="https://pt.coursera.org/" />
                    <br />
                    <h3>Coursera</h3>
                    <br />
                </div>
               Criado pelas universidades americanas da Pennsylvania, Stanford, Michigan e Princeton, o Coursera tem o intuito de oferecer cursos online gratuitos e massivos. A partir 2013 os vídeos foram traduzidos para o idioma Português do Brasil pela Fundação Lemann, tornando-se assim uma ótima opção para adquirir conhecimento.
            </div>
        </div>

        <div class="col-3">
            <div class="box-padding-20 margin-right-20">
                <div class="animate-up">
                    <asp:ImageButton ID="ImageButton4" Width="100%" runat="server" ToolTip="Clique aqui para saber mais." ImageUrl="~/Images/c8.png" PostBackUrl="https://docs.microsoft.com/en-us/learn/" BackColor="Black" />
                    <br />
                    <h3>Microsoft Virtual Academy</h3>
                    <br />
                </div>
                A Microsoft Virtual Academy (MVA) oferece treinamentos em diversos níveis de aprendizado, com certificado de conclusão para cada realizada. São mais de 200 cursos ministrados por especialistas, em português, relacionados a tecnologias e produtos da empresa.
            </div>
        </div>
    </div>

    <br />
    <br />
    <h2>&nbsp;&nbsp;&nbsp;CONHEÇA TAMBÉM OS OUTROS CURSO DA FATEC AMERICANA</h2>
    <br />
    <br />
    <div class="flexslider">
        <ul class="slides">
            <li>
                <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/Images/i3.jpg" Width="1280px" PostBackUrl="http://www.fatec.edu.br/cursos/jogos-digitais/" ToolTip="Clique aqui para saber mais." />
            </li>
            <li>
                <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/Images/i1.jpg" Width="1280px" PostBackUrl="http://www.fatec.edu.br/cursos/seguranca-da-informacao/" ToolTip="Clique aqui para saber mais." />
            </li>
            <li>
                <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/Images/i2.jpg" Width="1280px" PostBackUrl="http://www.fatec.edu.br/cursos/gestao-empresarial/" ToolTip="Clique aqui para saber mais." />
            </li>
            <li>
                <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/Images/i4.jpg" Width="1280px" PostBackUrl="http://www.fatec.edu.br/cursos/logistica/" ToolTip="Clique aqui para saber mais." />
            </li>
            <li>
                <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/Images/i5.jpg" Width="1280px" PostBackUrl="http://www.fatec.edu.br/cursos/producao-textil/" ToolTip="Clique aqui para saber mais." />
            </li>
            <li>
                <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="~/Images/i6.jpg" Width="1280px" PostBackUrl="http://www.fatec.edu.br/cursos/textil-e-moda/" ToolTip="Clique aqui para saber mais." />
            </li>
        </ul>
    </div>
    <script>
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: 'slide'
            });
        });
    </script>

    <br />
    <br />
    <h2>&nbsp;&nbsp;&nbsp;Utilidades ao Programador</h2>
    <div class="row margin-top-20">
        <div class="col-3">
            <div class="box-padding-20 box-boder margin-right-20">
                <div class="animate-up">
                    <asp:ImageButton ID="ImageButton5" Width="100%" runat="server" ToolTip="Clique aqui para saber mais." ImageUrl="~/Images/c6.png" PostBackUrl="https://www.w3schools.com/default.asp" BackColor="#CCCCCC" />
                    <br />
                    <h3>W3schools</h3>
                    <br />
                </div>
                W3Schools é um site educacional voltado ao aprendizado de tecnologias web. Seu conteúdo inclui tutoriais e referências relacionadas a HTML, CSS, JavaScript, JSON, PHP, Python, AngularJS, SQL, Bootstrap, Node.js, jQuery, XQuery, AJAX, XML, e Java.
            </div>
        </div>

        <div class="col-3">
            <div class="box-padding-20 margin-right-20">
                <div class="animate-up">
                    <asp:ImageButton ID="ImageButton6" Width="100%" runat="server" ToolTip="Clique aqui para saber mais." ImageUrl="~/Images/c7.jpg" PostBackUrl="https://www.codecademy.com/" />
                    <br />
                    <h3>CodeCademy</h3>
                    <br />
                </div>
               Codecademy é um site que possuí uma plataforma interativa online e oferece aulas gratuitas de codificação em linguagens de programação como jQuery, Javascript, Python, Ruby, PHP, JAVA bem como as linguagens de marcação, incluindo HTML e CSS.
            </div>
        </div>

        <div class="col-3">
            <div class="box-padding-20 margin-right-20">
                <div class="animate-up">
                    <asp:ImageButton ID="ImageButton7" Width="100%" runat="server" ToolTip="Clique aqui para saber mais." ImageUrl="~/Images/c9.png" PostBackUrl="https://www.hostgator.com.br/hospedagem-de-sites-seu-sucesso?utm_id=bing_131643832_2011110627_81157767572242_kwd-81157741706408:loc-20_c&msclkid=6a6c190713aa1854db83469b3141c8c3&utm_source=bing&utm_medium=cpc&utm_campaign=Pesquisa%20-%20Institucional%20-%20Marca&utm_term=hostgator&utm_content=%5BInstitucional%5D%20Marca" />
                    <br />
                    <h3>HostGator</h3>
                    <br />
                </div>
                O Gator by HostGator é o criador de sites integrado à hospedagem que a empresa oferece. Ele é uma ferramenta desenvolvida para dar suporte a um trabalho simples e intuitivo para criação das páginas. Com autonomia e o mínimo de conhecimento, é possível chegar a ótimos resultados!
            </div>
        </div>

        <div class="col-3">
            <div class="box-padding-20 margin-right-20">
                <div class="animate-up">
                    <asp:ImageButton ID="ImageButton8" Width="100%" runat="server" ToolTip="Clique aqui para saber mais." ImageUrl="~/Images/c5.png" PostBackUrl="https://docs.microsoft.com/pt-br/documentation/" />
                    <br />
                    <h3>Microsoft Docs</h3>
                    <br />
                </div>
               Microsoft Docs é a biblioteca de documentação técnica para usuários finais, desenvolvedores e profissionais de TI que trabalham com produtos Microsoft.  O site fornece várias informações relacionadas a software e serviços da web, que vão desde especificações técnicas até exemplos de código.
            </div>
        </div>
    </div>
    <br />
    <br />
</asp:Content>
