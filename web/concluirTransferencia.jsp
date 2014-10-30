<%-- 
    Document   : concluirTransferencia
    Created on : 30/10/2014, 01:54:49
    Author     : Mauricio
--%>

<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="br.com.server.model.Conta"%>
<%@page import="br.com.server.dao.ContaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.: Sistema Gerenciador Financeiro :.</title>
    </head>
    <body>
        
               
        <%
            Conta contaOrig;
            Conta contaDest;
            ContaDAO cDAO = new ContaDAO();
            contaOrig = cDAO.Consultar(Integer.parseInt(request.getParameter("contaOrigem").trim()));
            contaDest = cDAO.Consultar(Integer.parseInt(request.getParameter("contaDestino").trim()));
            
            double valor = 0;
            if(!request.getParameter("txtValor").trim().isEmpty()){
                valor = Double.parseDouble(request.getParameter("txtValor").trim());
               }   else {   %>
                    <script> 
                          alert('Informe um valor válido!');
                          window.location = 'contaTransferencia.jsp';
                    </script>
                    
             <% }         
                     
                if(contaOrig.getId().equals(contaDest.getId())){   %>
                    <script> 
                          alert('Selecione contas diferentes!');
                          window.location = 'contaTransferencia.jsp';
                    </script>
                
                
             <%}
            
                if(valor < contaOrig.getValor_atual()){
                    
                    cDAO.Transferencia(contaOrig, contaDest, valor);  %>
                    <script> 
                          alert('Valor Transferido com Sucesso!');
                          window.location = 'contaTransferencia.jsp';
                    </script>
                    
                    
                    
              <%      
                }else{   %>
                
                    <script> 
                          alert('Valor acima do saldo atual!');
                          window.location = 'contaTransferencia.jsp';
                    </script>
                    
              <% } %>
        
            

            
                      
        
        
        
        
    </body>
</html>
