<%-- 
    Document   : salvarconta
    Created on : 23/10/2014, 23:16:51
    Author     : Mauricio
--%>

<%@page import="sun.font.Script"%>
<%@page import="br.com.server.dao.ContaDAO"%>
<%@page import="br.com.server.dao.UsuarioDAO"%>
<%@page import="java.util.Date"%>
<%@page import="br.com.server.model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.: Sistema Gerenciador Financeiro :.</title>
    </head>
    <body>
        
        
        <jsp:useBean id="conta" scope="page" class="br.com.server.model.Conta" />
        <jsp:setProperty name="conta"
                         property="descricao"
                         param="txtTitulo" />
        <jsp:setProperty name="conta"
                         property="valor_inicial"
                         param="txtSaldo" />
        <jsp:setProperty name="conta"
                         property="valor_atual"
                         param="txtSaldo" />
        
       <%
            if(!conta.getDescricao().isEmpty() && conta.getValor_atual() != 0){
                conta.setCancelado(0);
                Date data = new Date();
                conta.setData_criacao(new Date(data.getYear(), data.getMonth(), data.getDate()));

                UsuarioDAO uDAO = new UsuarioDAO();
                conta.setIdUsuario(uDAO.Consultar(Integer.parseInt(session.getAttribute("idUsuario").toString())));
                
                conta.setId(Integer.parseInt(request.getParameter("idConta").toString()));
                
                ContaDAO cDAO = new ContaDAO();
                cDAO.Editar(conta);
        %>

                <script>
                    alert('Conta salva com sucesso!');
                    window.location = "conta.jsp";
                </script>
        <%
            }
            
        %>
        
        
        
    </body>
</html>
