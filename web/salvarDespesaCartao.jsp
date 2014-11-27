<%-- 
    Document   : salvarDespesaCartao
    Created on : Nov 25, 2014, 8:54:07 PM
    Author     : Gabrielle
--%>

<%@page import="br.com.server.dao.DespesaCartaoDAO"%>
<%@page import="java.util.Date"%>
<%@page import="br.com.server.model.Categoria"%>
<%@page import="br.com.server.dao.CategoriaDAO"%>
<%@page import="br.com.server.model.Cartao"%>
<%@page import="br.com.server.dao.CartaoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.: Sistema Gerenciador Financeiro :.</title>
    </head>
    <body>
        <jsp:useBean id="despesacartao" scope="page" class="br.com.server.model.DespesaCartao" />
              
        <jsp:setProperty name="despesacartao"
                         property="descricao"
                         param="txtDescricao" />
        
        <jsp:setProperty name="despesacartao"
                property="valor"
                param="txtValor" />
        
        <jsp:setProperty name="despesacartao"
                property="parcmax"
                param="txtQuantidade" />
                
       <%
            CartaoDAO cDAO = new CartaoDAO();
            Cartao c = cDAO.Consultar(Integer.parseInt(request.getParameter("txtCartaoDespesa").toString().trim()));
            
            CategoriaDAO catDAO = new CategoriaDAO();
            Categoria cat = catDAO.Consultar(Integer.parseInt(request.getParameter("txtCategoriaDespesa").toString().trim()));
                        
            despesacartao.setCartao(c);
            despesacartao.setCategoria(cat);
            
            if(!request.getParameter("txtData").toString().isEmpty()){
                String[] data = request.getParameter("txtData").toString().split("/");
                int dia = Integer.parseInt(data[0]);
                int mes = Integer.parseInt(data[1]);
                int ano = Integer.parseInt(data[2]);
                Date dataDespCartao = new Date(ano - 1900, mes, dia);
            
                despesacartao.setVencimento(dataDespCartao);
            }
        %>
              
        <%
            Cartao car = new Cartao();
            car = despesacartao.getCartao();
            
            if(despesacartao.getValor() <= car.getLimite()){
                                
                DespesaCartaoDAO dcDAO = new DespesaCartaoDAO();
                
                if(despesacartao.getParcmax() == 0){
                    
                    despesacartao.setParcela(1);
                    despesacartao.setParcmax(1);
                    
                    dcDAO.AtualizaLimite(despesacartao.getCartao(), despesacartao.getValor());
                    dcDAO.Salvar(despesacartao);
                    
                }else if(despesacartao.getParcmax() > 1){
                    
                    dcDAO.AtualizaLimite(despesacartao.getCartao(), despesacartao.getValor());
                     
                    for(int i = 1; i <= despesacartao.getParcmax(); i++){
                        
                        despesacartao.setParcela(i);
                        
                        %>
        
                        <jsp:setProperty name="despesacartao"
                            property="valor"
                            param="txtValorParcelado" />
        
                        <%
  
                        dcDAO.Salvar(despesacartao);
                        
                    }
                }            
        %>
                <script>
                    alert('Despesa salva com sucesso!');
                    window.location = "novaDespesaCartao.jsp";
                </script>
        <%
        }else{
                %>
        
                <script>
                    alert('Limite não disponível!');
                    window.location = "novaDespesaCartao.jsp";
                </script>
                
                <%
            }
        %>
    </body>
</html>

