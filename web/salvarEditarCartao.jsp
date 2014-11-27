<%-- 
    Document   : salvarEditarCartao
    Created on : Nov 10, 2014, 9:41:52 PM
    Author     : Gabrielle
--%>

<%@page import="br.com.server.dao.CartaoDAO"%>
<%@page import="br.com.server.model.TipoCartao"%>
<%@page import="br.com.server.dao.TipoCartaoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.: Sistema Gerenciador Financeiro :.</title>
    </head>
    <body>
        
        <jsp:useBean id="cartao" scope="page" class="br.com.server.model.Cartao" />
              
        <jsp:setProperty name="cartao"
                         property="descricao"
                         param="txtDescricao" />
        
       <%
            TipoCartaoDAO tcDAO = new TipoCartaoDAO();
            TipoCartao tpCartao = tcDAO.Consultar(Integer.parseInt(request.getParameter("txtTipo").toString().trim()));
            
            cartao.setTipocartao(tpCartao);
            cartao.setDia_fechamento(Integer.parseInt(request.getParameter("txtFechamento").toString().trim()));
            cartao.setDia_pagamento(Integer.parseInt(request.getParameter("txtPagamento").toString().trim()));
        %>

        <jsp:setProperty name="cartao"
                property="limite"
                param="txtLimite" />
        
        <%if(!cartao.getDescricao().isEmpty()){
                
                cartao.setId(Integer.parseInt(request.getParameter("idCartao")));
                                            
                CartaoDAO cDAO = new CartaoDAO();
                cDAO.Editar(cartao);
        %>

                <script>
                    alert('Cartão editado com sucesso!');
                    window.location = "cartao.jsp";
                </script>
        <%}
            
        %>
        
    </body>
</html>
