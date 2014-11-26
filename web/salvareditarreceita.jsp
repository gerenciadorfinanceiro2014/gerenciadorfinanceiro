<%-- 
    Document   : salvareditardespesa.jsp
    Created on : 14/11/2014, 00:59:45
    Author     : Felipe
--%>

<%@page import="br.com.server.dao.ReceitaDAO"%>
<%@page import="br.com.server.model.Conta"%>
<%@page import="br.com.server.dao.ContaDAO"%>
<%@page import="br.com.server.model.Categoria"%>
<%@page import="br.com.server.dao.CategoriaDAO"%>
<%@page import="br.com.server.model.Despesa"%>
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
   <jsp:useBean id="receita" scope="page" class="br.com.server.model.Receita" />
       <jsp:setProperty name="receita"
                         property="valor"
                         param="txtValor" />
<jsp:setProperty name="receita"
                         property="descricao"
                         param="txtTitulo" />
         <jsp:setProperty name="receita"
                         property="num_parcela"
                         param="txtQtd" />
        <jsp:setProperty name="receita"
                         property="valor"
                         param="txtValorParcela" />
        
       <%
           
           CategoriaDAO cDAO = new CategoriaDAO();
           Categoria categoria = cDAO.Consultar(Integer.parseInt(request.getParameter("categoriareceita").toString().trim()));
           receita.setCategoria(categoria);
           
           
           ContaDAO ctDAO = new ContaDAO();
           Conta conta = ctDAO.Consultar(Integer.parseInt(request.getParameter("contareceita").toString().trim()));
           receita.setConta(conta);
           
                receita.setId(Integer.parseInt(request.getParameter("idReceita")));
                
                 String[] data = request.getParameter("txtData").toString().split("/");
                int dia = Integer.parseInt(data[0]);
                int mes = Integer.parseInt(data[1]) - 1;
                int ano = Integer.parseInt(data[2]);
                 Date dataDespesa = new Date(ano - 1900, mes , dia, new Date().getHours(), new Date().getMinutes(), new Date().getSeconds());
                 receita.setData(dataDespesa);
                ReceitaDAO rDAO = new ReceitaDAO();
                
                rDAO.Editar(receita);
        %>

                <script>
                    alert('Receita alterada com sucesso!');
                    window.location = "receita.jsp";
                </script>
       
        
    </body>
</html>
