<%-- 
    Document   : salvarcategoria
    Created on : 08/11/2014, 15:57:17
    Author     : Mauricio
--%>

<%@page import="br.com.server.dao.CategoriaDAO"%>
<%@page import="br.com.server.model.Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.:: Sistema Gerenciador Financeiro ::.</title>
    </head>
    <body>
        
         <jsp:useBean id="categoria" scope="page" class="br.com.server.model.Categoria" />
        <jsp:setProperty name="categoria"
                         property="descricao"
                         param="txtDescricao" />
        
        <%
            
            CategoriaDAO cDAO = new CategoriaDAO();
            cDAO.Salvar(categoria);
            int menu = Integer.parseInt(request.getParameter("voltar"));
            if(menu == 1){ %>
            <script>
                alert("Categoria salva com Sucesso!");
                window.location = "novaReceita.jsp";                
            </script>
                
                
            <%}
            
        
        %>
        
        
        
        
        
    </body>
</html>
