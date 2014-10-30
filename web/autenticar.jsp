<%-- 
    Document   : autenticar
    Created on : 15/10/2014, 21:30:04
    Author     : Mauricio
--%>

<%@page import="br.com.server.dao.UsuarioDAO"%>
<%@page import="br.com.server.model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.: Sistema Gerenciador Financeiro :.</title>
    </head>
    <body>
        
     <jsp:useBean id="usuario" scope="page" class="br.com.server.model.Usuario" />
     <jsp:setProperty name="usuario" property="login" param="txtLogin" />
     <jsp:setProperty name="usuario" property="senha" param="txtSenha" />   
        
     <%
        if(usuario.getLogin() != null && usuario.getSenha() != null){
            
            UsuarioDAO uDAO = new UsuarioDAO();
            Usuario user = uDAO.Consultar(usuario.getLogin());
            
            if(usuario.getSenha().equals(user.getSenha())){
                session.setAttribute("idUsuario", user.getId());
                response.sendRedirect("home.jsp");
            }else{
      %>         
            <script>
                alert("Usuário e/ou Senha Inválido!");
                window.location="index.jsp";
            </script>
            
      <%           
            }
           
        }else{

      %>
            <script>
                alert("Usuário e Senha devem ser informados!");
                window.location="index.jsp";
            </script>
       <%
        }
       %>
        
        
    </body>
</html>
