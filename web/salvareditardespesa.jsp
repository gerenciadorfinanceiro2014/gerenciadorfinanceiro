<%-- 
    Document   : salvareditardespesa.jsp
    Created on : 14/11/2014, 00:59:45
    Author     : Felipe
--%>

<%@page import="br.com.server.dao.DespesaDAO"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <jsp:useBean id="despesa" scope="page" class="br.com.server.model.Despesa" />
        <jsp:setProperty name="despesa"
                         property="descricao"
                         param="txtTitulo" />
        <jsp:setProperty name="despesa"
                         property="valor"
                         param="txtSaldo" />
        
        
       <%
            if(!despesa.getDescricao().isEmpty() && despesa.getValor() != 0){
                
                Date data = new Date();
                despesa.setData(new Date(data.getYear(), data.getMonth(), data.getDate()));

                DespesaDAO dDAO = new DespesaDAO();
                
                
                despesa.setId(Integer.parseInt(request.getParameter("idDespesa").toString()));
                
                DespesaDAO cDAO = new DespesaDAO();
                cDAO.Editar(despesa);
        %>

                <script>
                    alert('Despesa salva com sucesso!');
                    window.location = "despesa.jsp";
                </script>
        <%
            }
            
        %>
        
    </body>
</html>
