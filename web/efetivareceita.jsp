<%-- 
    Document   : efetivareceita
    Created on : 19/11/2014, 00:34:15
    Author     : Mauricio
--%>

<%@page import="br.com.server.dao.ReceitaDAO"%>
<%@page import="br.com.server.model.Receita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.:: Sistema Gerenciador Financeiro ::.</title>
    </head>
    <body>
        
        <%
            int metodo = Integer.parseInt(request.getParameter("metodo").toString());
            if(metodo == 1){
                Receita receita = new Receita();
                ReceitaDAO rDAO = new ReceitaDAO();
                receita = rDAO.Consultar(Integer.parseInt(request.getParameter("idreceita").toString()));
                receita.setEfetuada(1);
                rDAO.Editar(receita);%>
                <script>
                    alert("Receita Efetuada com Sucesso!");
                    window.location = "receita.jsp";
               </script><%
            }else{
                %>
                <script>
                if(confirm('Deseja mesmo deletar esta receita?') == false){
                   window.location = "receita.jsp";
                }else{
                   <%
                      ReceitaDAO rDAO = new ReceitaDAO();
                      rDAO.Excluir(Integer.parseInt(request.getParameter("idreceita").toString()));
                    }%> 
                    window.location = "receita.jsp";
                }   
                </script>
            }
        %>
        
        
    </body>
</html>
