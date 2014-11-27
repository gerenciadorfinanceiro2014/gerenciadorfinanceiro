<%-- 
    Document   : excluirCartao
    Created on : Nov 10, 2014, 9:42:14 PM
    Author     : Gabrielle
--%>

<%@page import="br.com.server.dao.CartaoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.: Sistema Gerenciador Financeiro :.</title>
    </head>
    <body>
        <script>
            if(!confirm('Deseja mesmo deletar este cartão?')){
            window.location = "cartao.jsp";
            }else{
            
            <%
        
                CartaoDAO cDAO = new CartaoDAO();
                cDAO.Excluir(Integer.parseInt(request.getParameter("idCartao")));
            %>
            alert('Cartão deletado com sucesso!');
            window.location = "cartao.jsp";
            }
            
        </script>
    </body>
</html>
