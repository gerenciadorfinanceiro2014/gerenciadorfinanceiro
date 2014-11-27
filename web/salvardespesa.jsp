

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
                int mes = Integer.parseInt(data[1]) - 1;
                int ano = Integer.parseInt(data[2]);
                 Date dataDespesa = new Date(ano - 1900, mes , dia, new Date().getHours(), new Date().getMinutes(), new Date().getSeconds());
            
                despesa.setData(dataDespesa);
            }
            
            CategoriaDAO cDAO = new CategoriaDAO();
            ContaDAO contaDAO = new ContaDAO();
            despesa.setCategoria(cDAO.Consultar(Integer.parseInt(request.getParameter("categoriadespesa").toString().trim())));
            despesa.setConta(contaDAO.Consultar(Integer.parseInt(request.getParameter("contadespesa").toString().trim())));
            DespesaDAO dDAO = new DespesaDAO();
            despesa.setNum_unico(dDAO.ConsultarNumUnico());
           
            if(request.getParameter("receitafixa") != null && request.getParameter("txtQtd").trim() != null && request.getParameter("txtValorParcela").trim() != null){
                despesa.setMax_parcela(Integer.parseInt(request.getParameter("txtQtd").trim()));
                if(despesa.getMax_parcela() < 2){
                   despesa.setMax_parcela(1); 
                   despesa.setNum_parcela(1);
                   dDAO.Salvar(despesa); 
                }else{
                   for(int controle = 1; controle <= despesa.getMax_parcela(); controle++){
                       despesa.setNum_parcela(controle);
                       if(controle > 1){
                           despesa.setValor(Double.parseDouble(request.getParameter("txtValorParcela").trim()));
                           despesa.setEfetuada(false);
                       }
                            
                        dDAO.Salvar(despesa); 
                   }
                  
                }
            }else{
                despesa.setMax_parcela(1); 
                despesa.setNum_parcela(1);
                 dDAO.Salvar(despesa); 
            }
        %>
        
        <script>
            alert("Despesa salva com Sucesso!");
            window.location = "despesa.jsp";            
        </script>
        
        
    </body>
</html>
