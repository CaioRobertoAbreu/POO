<%-- 
    Document   : index
    Created on : 29 de set de 2020, 19:57:20
    Author     : caio
--%>

<%@page import="br.edu.fatecpg.p1.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/menu.jspf"%>

<%
     if(Disciplina.getList().isEmpty()){
        Disciplina bancoDeDados = new Disciplina("Banco de Dados", "a ementa vai ter bastente apalavras", 4);
        bancoDeDados.setNota(10.);

        Disciplina poo = new Disciplina("Programação Orientada a Objetos", "a ementa vai ter bastente apalavras", 4);

        Disciplina metodologia = new Disciplina("Metodologia de Pesquisa", "a ementa vai ter bastente apalavras", 4);

        Disciplina engenhariaSoftware3 = new Disciplina("Engenharia de Software 3", "a ementa vai ter bastente apalavras", 4);   
    }  
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <title>Página Inicial</title>
    </head>
    <body>
        <div class="container center-align">
            <div style="margin-top:  25%">
                
                <h3>Aluno: Caio Roberto de Abreu</h3>
                <h3>Matricula: 12345567755sp</h3>
                <h3>disciplinas matriculadas: <%= Disciplina.getList().size() %></h3>
            </div>
        </div>
    </body>
</html>
