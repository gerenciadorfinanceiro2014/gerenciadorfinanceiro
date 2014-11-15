

<%@page import="br.com.server.dao.ContaDAO"%>
<%@page import="br.com.server.dao.CategoriaDAO"%>
<%@page import="java.util.Date"%>
<%-- 
    Document   : salvardespesa
    Created on : 11/11/2014, 17:33:34
    Author     : Felipe
--%>

<%@page import="br.com.server.dao.DespesaDAO"%>

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
                         param="txtValor" />
        
        <%
            if(request.getParameter("efetuada") != null){
                despesa.setEfetuada(true);
            }else{
                despesa.setEfetuada(false);
            }
            
            if(!request.getParameter("txtData").toString().isEmpty()){
                String[] data = request.getParameter("txtData").toString().split("/");
                int dia = Integer.parseInt(data[0]);
                int mes = Integer.parseInt(data[1]);
                int ano = Integer.parseInt(data[2]);
                Date dataDespesa = new Date(ano - 1900, mes, dia);
            
                despesa.setData(dataDespesa);
            }
            
            CategoriaDAO cDAO = new CategoriaDAO();
            ContaDAO contaDAO = new ContaDAO();
            despesa.setCategoria(cDAO.Consultar(Integer.parseInt(request.getParameter("categoriadespesa").toString().trim())));
            despesa.setConta(contaDAO.Consultar(Integer.parseInt(request.getParameter("contadespesa").toString().trim())));
            
            DespesaDAO dDAO = new DespesaDAO();
            
            dDAO.Salvar(despesa);
        %>
        
        <script>
            alert("Despesa salva com Sucesso!");
            window.location = "novaDespesa.jsp";            
        </script>
        
        
    </body>
</html>
