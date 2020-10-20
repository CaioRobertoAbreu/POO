<%-- 
    Document   : index
    Created on : 19 de out de 2020, 19:58:36
    Author     : caio
--%>

<%@page import="br.com.java.db.Conector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aula 10 - SQLite</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="container">
            <div class="container">
                <h3 style="text-align: center">SQLite - Disciplinas</h3>
                <p style="text-align: center">Caio Roberto de Abreu</p>
                <hr/>
             </div>

            <div class="container">
                <table class="highlight">
                     <tr>
                         <th>Disciplina</th>
                     </tr>

                     <% for(String disciplina: Conector.select()) {%>
                         
                     <tr>
                         <td> <%= disciplina %> </td>
                     </tr>
                     <%}%>
                 </table>
             </div>
        </div>
    </body>
</html>
