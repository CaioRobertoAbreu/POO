<%-- 
    Document   : index
    Created on : 21 de set de 2020, 20:02:26
    Author     : caio
--%>

<%@page import="br.edu.fatec.poo.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nascimento</h1>
        <%
            Data data = new Data(12,4,1997);
        %>
        
        <p>
            <%=data.getData()%>
        </p>
    </body>
</html>
