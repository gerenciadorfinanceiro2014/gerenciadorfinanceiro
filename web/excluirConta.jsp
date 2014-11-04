<%-- 
    Document   : excluirconta
    Created on : 04/11/2014, 01:11:45
    Author     : Mauricio
--%>

<%@page import="br.com.server.model.Conta"%>
<%@page import="br.com.server.dao.ContaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.:: Sistema Gerenciador Financeiro ::.</title>
    </head>
    <body>
        <script>
            if(!confirm('Deseja mesmo deletar esta conta?')){
            window.location = "conta.jsp";
            }else{
            
            <%
        
                ContaDAO cDAO = new ContaDAO();
                cDAO.Excluir(Integer.parseInt(request.getParameter("idConta")));
            %>
            alert('Conta deletada com sucesso!');
            window.location = "conta.jsp";
            }
            
        </script>
    </body>
</html>
