<%-- 
    Document   : salvarreceita
    Created on : 08/11/2014, 14:58:06
    Author     : Mauricio
--%>

<%@page import="java.util.Date"%>
<%@page import="br.com.server.dao.ContaDAO"%>
<%@page import="br.com.server.dao.CategoriaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.:: Sistema Gerenciador Financeiro ::.</title>
    </head>
    <body>
        
        <jsp:useBean id="receita" scope="page" class="br.com.server.model.Receita" />
        <jsp:setProperty name="receita"
                         property="descricao"
                         param="txtTitulo" />
        <jsp:setProperty name="receita"
                         property="valor"
                         param="txtValor" />
        
        <%
            if(request.getParameter("efetuada") != null){
                receita.setEfetuada(true);
            }else{
                receita.setEfetuada(false);
            }
            
            String[] data = request.getParameter("txtData").toString().split("/");
            int dia = Integer.parseInt(data[0]);
            int mes = Integer.parseInt(data[1]);
            int ano = Integer.parseInt(data[2]);
            
            Date dataReceita = new Date(ano - 1900, mes, dia);
            
            receita.setData(dataReceita);
            
            //CategoriaDAO cDAO = new CategoriaDAO();
            ContaDAO contaDAO = new ContaDAO();
            //receita.setCategoria(cDAO.Consultar(Integer.parseInt(request.getParameter("categoriareceita").toString())));
            receita.setConta(contaDAO.Consultar(Integer.parseInt(request.getParameter("contareceita").toString().trim())));
        
            out.print("BOSTA " + receita.getConta().getDescricao() + "Efetuada = " + receita.isEfetuada());
           
            
        %>
        
        
        
        
    </body>
</html>
