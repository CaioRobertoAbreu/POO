<%-- 
    Document   : CadastroUsuario
    Created on : 22 de set de 2020, 11:53:13
    Author     : caio
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.edu.fatec.poo.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ArrayList<Usuario> userList = (ArrayList) application.getAttribute("userList");

    if(userList.isEmpty()) {
        userList = new ArrayList();
        userList.add(new Usuario("Jose", "(12)2445-6479", "jose@domain.com"));
        userList.add(new Usuario("Maria","(14)5674-2354", "maria@domain.com"));
        userList.add(new Usuario("Josefa", "(14)5232-6479", "josefa@domain.com"));
        application.setAttribute("userList", userList);
    }

    if(request.getParameter("add") != null) {
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");

        userList.add(new Usuario(nome, telefone, email));
        response.sendRedirect(request.getRequestURI());
    }
    
    if(request.getParameter("remover") != null){
        int indice = Integer.parseInt(request.getParameter("i"));
        userList.remove(indice);
        response.sendRedirect(request.getRequestURI());
    }
%>



<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Usuario JSP</title>
    </head>
    <body>
        <h3>Novo Cadastro</h3>
        <div>
            <form method="post">
                Nome: <input type="text" name="nome"/>
                Email: <input type="text" name="email"/>
                telefone: <input type="text" name="telefone"/>
                
                 <input type="submit" name="add" value="Cadastrar"/>
            </form> 
            
        </div>
        
        <h3>Usuários Cadastrados</h3>
        <div>
            <table class="tabela">
                <tr>
                    <td>#</td>
                    <td>Nome</td>
                    <td>Telefone</td>
                    <td>Email</td>
                    <td>Acao</td>
                </tr>
                
                <%for(int i=0;i<userList.size();i++){%>
                    <tr>
                        <td><%=i%></td>
                        <td><%=userList.get(i).getNome() %></td>
                        <td><%=userList.get(i).getTelefone() %></td>
                        <td><%=userList.get(i).getEmail() %></td>
                        <td>
                            <form>
                                <input type="submit" value="Excluir" name="remover">
                                <input type="hidden" value="<%=i%>" name="i" >
                            </form>
                        </td>
                    </tr>   
                    
                <%}%>
            </table>
        </div>
    </body>
</html>
