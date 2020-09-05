<%-- 
    Document   : tabuada
    Created on : 5 de set de 2020, 13:05:30
    Author     : caio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Exception requestException = null;
    int n;
    try {
        n = Integer.parseInt(request.getParameter("valor"));
    }catch(Exception ex){
        n = 0;
        requestException = ex;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page :: Tabuada</title>
    </head>
    <body>
        <h1>Tabuada</h1>
        <div>
            <form>
                Informe um numero: <input type="number" name="valor">
                
                <input type="submit" value="Calcular">
            </form>
        </div>
        </br>
        
        <table border="1px">
            <% if(request.getParameter("valor") == null){%>
            <tr>
                <td colspan="2">Nenhum parametro informado</td>
            </tr>
            <%} else {%>
                <tr>
                    <td>Multiplicacao</td>
                    <td>Resultado</td>
                </tr>
                <% for(int i = 1; i<= 10; i++) {%>
                    <tr>
                        <td><%=n%> * <%=i%></td>
                        <td><%=(n*i)%></td>
                    </tr>
                <%}%>
            <%}%>
        </table>
        
    </body>
</html>
