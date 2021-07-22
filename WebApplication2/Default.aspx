<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <br />
    <div class="flexslider">
        <ul class="slides">
            <li>
                <img src="Images/A2.png" />
            </li>
            <li>
                <img src="Images/A3.png" />
            </li>
            <li>
                <img src="Images/A4.png" />
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

    <div class="row margin-top-60">
        <div class="col-3">
            <div class="box-padding-20 box-boder margin-right-20">
                <asp:Image ID="Image1" ImageUrl="~/Images/fatec.png" runat="server" Height="150px" BorderColor="Black" />
                <br />
                <h2>FATEC - Americana</h2>
                <br />
                A Fatec Americana é uma Instituição de Ensino Superior Público situada no município paulista de Americana, no interior do Estado de São Paulo. Nossa vocação é formar profissionais capacitados e voltados para o mercado de trabalho.
            </div>
        </div>

        <div class="col-6">
            <div class="box-padding-20 margin-right-20">
                <asp:Image ID="Image2" ImageUrl="~/Images/w1.jpg" Height="150px" runat="server" Width="100%" />
                <br />
                <h2>Analise e Desenvolvimento de sistemas</h2>
                <br />
                O Tecnólogo em Análise e Desenvolvimento de Sistemas analisa, projeta, documenta, especifica, testa, implanta e mantém sistemas computacionais de informação. Esse profissional trabalha, também, com ferramentas computacionais, equipamentos de informática e metodologia de projetos na produção de sistemas. Raciocínio lógico, emprego de linguagens de programação e de metodologias de construção de projetos, preocupação com a qualidade, usabilidade, robustez, integridade e segurança de programas computacionais são fundamentais à atuação desse profissional.
            </div>
        </div>

        <div class="col-3">
            <div class="box-padding-20 box-boder">
                <asp:Image ID="Image3" ImageUrl="~/Images/si3.jpg" Width="100%" runat="server" Height="150px" />
                <br />
                <h2>Objetivos do Curso</h2>
                <br />
                Formar profissionais que projetem, implementem e coordenem infraestruturas de tecnologia da informação, atendendo a necessidade de mudanças provocadas pelas inovações tecnológicas nas empresas.
            </div>
        </div>
    </div>
    <div class="row margin-top-60">
        <div class="col-6">
            <div class="box-padding-20 margin-right-20">
                <asp:Image ImageUrl="~/Images/w3.png" Height="300px" runat="server" Width="100%" />
                <br />
                <h2>Áreas de Atuação</h2>
                <br />
                O profissional de Análise e Desenvolvimento de Sistemas de Informação pode atuar em empresas de assessoria e consultoria tecnológica e de desenvolvimento de sistemas, assim como nos diversos setores da economia. Este profissional estará apto a projetar e implementar sistemas de acordo com as necessidades institucionais, coordenar infra-estruturas de tecnologia da informação, elaborando políticas e diretrizes a partir da análise de necessidades, realizar consultoria em Sistemas de Informação, avaliando e selecionando recursos de software e hardware, atuar em Centros de Pesquisa, de Ensino ou de desenvolvimento de software, e empreender seu próprio negócio em informática.
            </div>
        </div>

        <div class="col-6">
            <div class="box-padding-20 box-boder">
                <asp:Image ID="Image6" ImageUrl="~/Images/w2.jpg" Width="100%" runat="server" Height="300px" />
                <br />
                <h2>Aprenda com a Prática</h2>
                <br />
                O aprendizado não pode prescindir da teoria e da prática. Aprender significa estar apto a fazer. Para isso é necessário que se conheça os fundamentos (teoria), mas que se desenvolva as habilidades necessárias à transformação desses fundamentos em ações do dia-a-dia, através da prática, desenvolvendo aptidões. Isso é verdade para qualquer campo do conhecimento ou da prática humana, inclusive no campo da ética, da moral e da religiosidade. Em outras palavras, aprendemos com nossos erros (prática) e/ou com os erros dos outros (teoria).O esperto aprende com seus próprios erros. O sábio aprende com os erros dos outros. O virtuoso aprende com os acertos dos sábios e inova para a sua realidade. 
            </div>
        </div>
    </div>
    <br />
    <br />

</asp:Content>
