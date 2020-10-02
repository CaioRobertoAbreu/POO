<%-- 
    Document   : disciplina
    Created on : 29 de set de 2020, 20:33:05
    Author     : caio
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
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
    
    
    Double novaNota = 0.;
    int indice = 0;
    if(request.getParameter("alterar") != null) {
        indice = Integer.parseInt(request.getParameter("i"));
        novaNota = Double.parseDouble(request.getParameter("nova_nota"));
        Disciplina.getList().get(indice).setNota(novaNota);
        response.sendRedirect(request.getRequestURI());
    }
                    
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <title>Disciplinas</title>
    </head>
    <body>
        
        <div class="container centered" style="margin-top: 50px">
            <table class="responsive-table">
                <tr>
                    <th>#</th>
                    <th>Disciplina</th>
                    <th>Ementa</th>
                    <th>Ciclo</th>    
                    <th>Nota</th>
                    <th>Editar Nota</th>
                </tr>
                <%
                    if(Disciplina.getList().isEmpty()) { %>
                        <tr>
                            <td colspan="6" style="text-align: center; font-size: 18px">
                                Não há disciplinas matriculadas
                            </td>
                        </tr>
                    <%} else {
                        for(int i=0; i<Disciplina.getList().size(); i++) { %>
                            <tr>
                                <td><%=(i+1)%></td>
                                <td> <%= Disciplina.getList().get(i).getNome() %> </td>
                                <td> <%= Disciplina.getList().get(i).getEmenta() %> </td>
                                <td> <%= Disciplina.getList().get(i).getCiclo() %> </td>
                                <td> <%= Disciplina.getList().get(i).getNota() %> </td>
                                <td>
                                    <form>
                                        <input type="number" min="0" max="10" step="0.5" name="nova_nota" style="width: 60px;">
                                        <input type="submit" name="alterar" value="Alterar" style="margin-left: 25px">
                                        <input type="hidden" name="i" value="<%=i%>">
                                    </form>
                                </td>    
                            </tr>
                        <%}%>
                    <%}%>  
                    
            </table>
               
        </div>
    </body>
</html>
