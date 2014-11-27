<%-- 
    Document   : excluirReceita
    Created on : 14/11/2014, 00:42:51
    Author     : Felipe
--%>

<%@page import="br.com.server.dao.DespesaDAO"%>
<%@page import="br.com.server.model.Despesa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.:: Sistema Gerenciador Financeiro ::.</title>
    </head>
    <body>
     <script>
            if(!confirm('Deseja excluir a Despesa?')){
                
            window.location = "despesa.jsp";
            
            
            }else{
            
         
            <%
                DespesaDAO dDAO = new DespesaDAO();
                dDAO.Excluir(Integer.parseInt(request.getParameter("idDespesa")));
            %>
            alert('Despesa deletada com sucesso!');
            window.location = "despesa.jsp";
     
            }
            
        </script>
    </body>
</html>
