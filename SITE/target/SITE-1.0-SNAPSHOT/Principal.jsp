<%-- 
    Document   : Principal
    Created on : 14/03/2018, 11:41:33
    Author     : aluno
--%>

<%@page import="com.mycompany.site.util.entidades.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            Cliente usuario = (Cliente) session.getAttribute("usuariologado");
        %>
    </head>
    <body>
        <h1>Hello, <%=usuario.getNome()%>!</h1>
    </body>
</html>
