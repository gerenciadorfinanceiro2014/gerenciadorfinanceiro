<%-- 
    Document   : salvareditarusuario
    Created on : 27/11/2014, 01:37:28
    Author     : Mauricio
--%>

<%@page import="br.com.server.dao.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.: Sistema Gerenciador Financeiro :.</title>
    </head>
    <body>
        
        <jsp:useBean id="usuario" scope="page" class="br.com.server.model.Usuario" />
        <jsp:setProperty name="usuario"
                         property="nome"
                         param="txtNome" />
        <jsp:setProperty name="usuario"
                         property="senha"
                         param="txtSenha" />
        <jsp:setProperty name="usuario"
                         property="email"
                         param="txtEmail" />
        <jsp:setProperty name="usuario"
                         property="login"
                         param="txtLogin" />
       <% 
        
        usuario.setId(Integer.parseInt(session.getAttribute("idUsuario").toString()));
        if(usuario.getLogin() != null && usuario.getNome() != null && usuario.getSenha() != null){
                UsuarioDAO uDAO = new UsuarioDAO();
                uDAO.Editar(usuario);
                response.sendRedirect("meusDados.jsp");
        }%>
        
        
        
        
        
    </body>
</html>
