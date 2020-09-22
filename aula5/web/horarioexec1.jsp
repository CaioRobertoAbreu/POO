<%-- 
    Document   : index
    Created on : 21 de set de 2020, 20:59:51
    Author     : caio
--%>

<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Date"%>
<%@page import="br.edu.fatec.poo.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Inicial</title>
    </head>
    <body>
        <h4>Horario Atual</h4>
        
        <%
            LocalTime hora = LocalTime.now();
            Horario horario = new Horario(hora.getHour(), hora.getMinute(), hora.getSecond());
        %>
        
        <p><%=horario.getHorario() %> </p>
        
        
        <h4>Horario Intervalo</h4>
        <%
            Horario intervalo = new Horario(21, 00, 00);
        %>
        
        <p><%=intervalo.getHorario() %> </p>
    </body>
</html>
