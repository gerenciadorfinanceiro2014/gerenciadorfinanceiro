<%-- 
    Document   : logout
    Created on : 23/10/2014, 00:25:49
    Author     : Mauricio
--%>

<%

    session.setAttribute("idUsuario", null);
    response.sendRedirect("index.jsp");

%>