<%-- 
    Document   : salvarreceita
    Created on : 08/11/2014, 14:58:06
    Author     : Mauricio
--%>

<%@page import="br.com.server.dao.ReceitaDAO"%>
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
                receita.setEfetuada(1);
            }else{
                receita.setEfetuada(0);
            }
            
            if(!request.getParameter("txtData").toString().isEmpty()){
                String[] data = request.getParameter("txtData").toString().split("/");
                int dia = Integer.parseInt(data[0]);
                int mes = Integer.parseInt(data[1]);
                int ano = Integer.parseInt(data[2]);
                Date dataReceita = new Date(ano - 1900, mes - 1, dia, new Date().getHours(), new Date().getMinutes(), new Date().getSeconds());
            
                receita.setData(dataReceita);
            }
            
            CategoriaDAO cDAO = new CategoriaDAO();
            ContaDAO contaDAO = new ContaDAO();
            receita.setCategoria(cDAO.Consultar(Integer.parseInt(request.getParameter("categoriareceita").toString().trim())));
            receita.setConta(contaDAO.Consultar(Integer.parseInt(request.getParameter("contareceita").toString().trim())));
            ReceitaDAO rDAO = new ReceitaDAO();
            receita.setNum_unico(rDAO.ConsultarNumUnico());
            
            if(request.getParameter("receitafixa") != null && request.getParameter("txtQtd").trim() != null && request.getParameter("txtValorParcela").trim() != null){
                receita.setMax_parcela(Integer.parseInt(request.getParameter("txtQtd").trim()));
                if(receita.getMax_parcela() < 2){
                   receita.setMax_parcela(1); 
                   receita.setNum_parcela(1);
                   rDAO.Salvar(receita);
                }else{
                   for(int controle = 1; controle <= receita.getMax_parcela(); controle++){
                       receita.setNum_parcela(controle);
                       if(controle > 1){
                           receita.setValor(Double.parseDouble(request.getParameter("txtValorParcela").trim()));
                           Date data = new Date(receita.getData().getYear(),receita.getData().getMonth() + 1,receita.getData().getDay(),receita.getData().getHours(),receita.getData().getMinutes(),receita.getData().getSeconds());
                           receita.setData(data);
                           receita.setEfetuada(0);
                       }
                       rDAO.Salvar(receita);        
                   }
                }
            }else{
                receita.setMax_parcela(1); 
                receita.setNum_parcela(1);
                rDAO.Salvar(receita);
            }
            
            
        %>
        
        <script>
            alert("Receita salva com Sucesso!");
            window.location = "receita.jsp";            
        </script>
        
        
    </body>
</html>
