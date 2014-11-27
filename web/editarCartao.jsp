<%@page import="br.com.server.model.Cartao"%>
<%@page import="br.com.server.dao.CartaoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.server.model.TipoCartao"%>
<%@page import="br.com.server.dao.TipoCartaoDAO"%>
<%  
//verifica se a sessao do usuario  com o ID é valida 
if (session.getAttribute("idUsuario") == null)  
{  
        response.sendRedirect("index.jsp");  
}  
%> 





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0014)about:internet -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>.: Sistema Gerenciador Financeiro :.</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">td img {display: block;}</style>
<!--Fireworks CS5 Dreamweaver CS5 target.  Created Tue Oct 28 16:27:11 GMT-0200 2014-->
</head>
<body bgcolor="#f6f6f6">
<table style="display: inline-table;" border="0" cellpadding="0" cellspacing="0" width="100%">
<!-- fwtable fwsrc="img/novocartao/novocartao.png" fwpage="Page 1" fwbase="novoCartao.png" fwstyle="Dreamweaver" fwdocid = "2143708514" fwnested="0" -->
  <tr>
   <td><img src="img/novocartao/spacer.gif" width="44" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="46" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="93" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="95" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="17" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="108" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="19" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="17" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="21" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="12" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="95" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="20" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="19" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="14" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="19" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="40" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="22" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="52" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="15" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="16" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="21" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="43" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="17" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="33" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="38" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="15" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="35" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="37" height="1" border="0" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>

  <tr>
   <td colspan="29"><img name="novoCartao_r1_c1" src="img/novocartao/novoCartao_r1_c1.png" width="1024" height="110" border="0" id="novoCartao_r1_c1" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="110" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="3"><a href="cartao.jsp" ><img name="novoCartao_r2_c1" src="img/novocartao/novoCartao_r2_c1.png" width="183" height="70" border="0" id="novoCartao_r2_c1" alt="" /></a></td>
   <td colspan="26" width="100%" bgcolor="E6E600" ><img name="novoCartao_r2_c4" src="img/novocartao/novoCartao_r2_c4.png" width="841" height="55" border="0" id="novoCartao_r2_c4" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="55" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="22"><img name="novoCartao_r3_c4" src="img/novocartao/novoCartao_r3_c4.png" width="716" height="48" border="0" id="novoCartao_r3_c4" alt="" /></td>
   <td colspan="4"><img name="novoCartao_r3_c26" src="img/novocartao/novoCartao_r3_c26.png" width="125" height="15" border="0" id="novoCartao_r3_c26" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="15" border="0" alt="" /></td>
  </tr>
  
  <form name="editarcartao" method="post" action="salvarEditarCartao.jsp?idCartao=<% out.print(request.getParameter("idCartao")); %>" >
      <%
     
        CartaoDAO cDAO = new CartaoDAO();
        Cartao cartao = cDAO.Consultar(Integer.parseInt(request.getParameter("idCartao")));
     
     %>  
  
  <tr>
   <td rowspan="3" colspan="3"><a href="home.jsp" ><img name="novoCartao_r4_c1" src="img/novocartao/novoCartao_r4_c1.png" width="183" height="70" border="0" id="novoCartao_r4_c1" alt="" /></a></td>
   <td>
   
   <input type="image" src="img/novocartao/novoCartao_r4_c26.png" name="btnCadastrar" width="39" height="33" border="0" onClick="document.formCadastro.submit()" />

   </td>
   <td><img name="novoCartao_r4_c27" src="img/novocartao/novoCartao_r4_c27.png" width="15" height="33" border="0" id="novoCartao_r4_c27" alt="" /></td>
   <td><a href="cartao.jsp" ><img name="novoCartao_r4_c28" src="img/novocartao/novoCartao_r4_c28.png" width="35" height="33" border="0" id="novoCartao_r4_c28" alt="" /></a></td>
   <td><img name="novoCartao_r4_c29" src="img/novocartao/novoCartao_r4_c29.png" width="37" height="33" border="0" id="novoCartao_r4_c29" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="33" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="26" width="100%"><img name="novoCartao_r5_c4" src="img/novocartao/novoCartao_r5_c4.png" width="100%" height="7" border="0" id="novoCartao_r5_c4" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="7" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="26"><img name="novoCartao_r6_c4" src="img/novocartao/novoCartao_r6_c4.png" width="841" height="37" border="0" id="novoCartao_r6_c4" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="30" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="5" colspan="3"><a href="conta.jsp" ><img name="novoCartao_r7_c1" src="img/novocartao/novoCartao_r7_c1.png" width="183" height="70" border="0" id="novoCartao_r7_c1" alt="" /></a></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="7" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="19"><img name="novoCartao_r8_c4" src="img/novocartao/novoCartao_r8_c4.png" width="220" height="484" border="0" id="novoCartao_r8_c4" alt="" /></td>
   <td rowspan="5"><img name="novoCartao_r8_c5" src="img/novocartao/novoCartao_r8_c5.png" width="17" height="71" border="0" id="novoCartao_r8_c5" alt="" /></td>
   <td colspan="8"><img name="novoCartao_r8_c6" src="img/novocartao/novoCartao_r8_c6.png" width="100%" height="26" border="0" id="novoCartao_r8_c6" alt="" /></td>
   <td rowspan="5"><img name="novoCartao_r8_c14" src="img/novocartao/novoCartao_r8_c14.png" width="19" height="71" border="0" id="novoCartao_r8_c14" alt="" /></td>
   <td rowspan="5" colspan="3"><img name="novoCartao_r8_c15" src="img/novocartao/novoCartao_r8_c15.png" width="73" height="71" border="0" id="novoCartao_r8_c15" alt="" /></td>
   <td rowspan="5"><img name="novoCartao_r8_c18" src="img/novocartao/novoCartao_r8_c18.png" width="22" height="71" border="0" id="novoCartao_r8_c18" alt="" /></td>
   <td colspan="5"><img name="novoCartao_r8_c19" src="img/novocartao/novoCartao_r8_c19.png" width="100%" height="26" border="0" id="novoCartao_r8_c19" alt="" /></td>
   <td rowspan="5"><img name="novoCartao_r8_c24" src="img/novocartao/novoCartao_r8_c24.png" width="17" height="71" border="0" id="novoCartao_r8_c24" alt="" /></td>
   <td rowspan="19" colspan="5"><img name="novoCartao_r8_c25" src="img/novocartao/novoCartao_r8_c25.png" width="270" height="484" border="0" id="novoCartao_r8_c25" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="26" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="8">
   
       <input type="text" required="required" maxlength="55" tabindex="1" name="txtDescricao" value="<% out.print(cartao.getDescricao()); %>" style="width:295px; height:25px; border-top:1px solid #7F9DB9; border-bottom:1px solid #7F9DB9; border-right:1px solid #7F9DB9; text-align:left;"/>
  </td>
   <td colspan="5">
   
      
       <select name="txtTipo" style="width:147px; height:30px;" >
               
            <%
                TipoCartaoDAO tcDAO = new TipoCartaoDAO();
                ArrayList<TipoCartao> lista = tcDAO.ConsultarTodos();
            %>    
            
                <option value="<% out.print(cartao.getTipocartao().getId()); %> "> 
                       <% out.print(cartao.getTipocartao().getDescricao()); %> 
                </option>
                
            <%    
                for(int controle = 0; controle < lista.size(); controle++){ %>
                <option value="<% out.print(lista.get(controle).getId()); %> "> 
                       <% out.print(lista.get(controle).getDescricao()); %> 
                   </option>
            <%    }
            %>
   </select>
   
	</td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="33" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="5"><img name="novoCartao_r10_c19" src="img/novocartao/novoCartao_r10_c19.png" width="100%" height="12" border="0" id="novoCartao_r10_c19" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="8"><img name="novoCartao_r11_c6" src="img/novocartao/novoCartao_r11_c6.png" width="100%" height="11" border="0" id="novoCartao_r11_c6" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="3" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="4" colspan="3"><a href="receita.jsp" ><img name="novoCartao_r12_c1" src="img/novocartao/novoCartao_r12_c1.png" width="183" height="70" border="0" id="novoCartao_r12_c1" alt="" /></a></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="8" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="20"><img name="novoCartao_r13_c5" src="img/novocartao/novoCartao_r13_c5.png" width="588" height="29" border="0" id="novoCartao_r13_c5" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="29" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="13" colspan="2"><img name="novoCartao_r14_c5" src="img/novocartao/novoCartao_r14_c5.png" width="125" height="384" border="0" id="novoCartao_r14_c5" alt="" /></td>
   <td rowspan="4"><img name="novoCartao_r14_c7" src="img/novocartao/novoCartao_r14_c7.png" width="19" height="73" border="0" id="novoCartao_r14_c7" alt="" /></td>
   <td colspan="4"><img name="novoCartao_r14_c8" src="img/novocartao/novoCartao_r14_c8.png" width="100%" height="27" border="0" id="novoCartao_r14_c8" alt="" /></td>
   <td rowspan="4"><img name="novoCartao_r14_c12" src="img/novocartao/novoCartao_r14_c12.png" width="20" height="73" border="0" id="novoCartao_r14_c12" alt="" /></td>
   <td rowspan="4"><img name="novoCartao_r14_c13" src="img/novocartao/novoCartao_r14_c13.png" width="1" height="73" border="0" id="novoCartao_r14_c13" alt="" /></td>
   <td rowspan="4" colspan="2"><img name="novoCartao_r14_c14" src="img/novocartao/novoCartao_r14_c14.png" width="33" height="73" border="0" id="novoCartao_r14_c14" alt="" /></td>
   <td rowspan="4"><img name="novoCartao_r14_c16" src="img/novocartao/novoCartao_r14_c16.png" width="19" height="73" border="0" id="novoCartao_r14_c16" alt="" /></td>
   <td colspan="5"><img name="novoCartao_r14_c17" src="img/novocartao/novoCartao_r14_c17.png" width="100%" height="27" border="0" id="novoCartao_r14_c17" alt="" /></td>
   <td rowspan="4"><img name="novoCartao_r14_c22" src="img/novocartao/novoCartao_r14_c22.png" width="21" height="73" border="0" id="novoCartao_r14_c22" alt="" /></td>
   <td rowspan="13" colspan="2"><img name="novoCartao_r14_c23" src="img/novocartao/novoCartao_r14_c23.png" width="60" height="384" border="0" id="novoCartao_r14_c23" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="27" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="4">
   
   <select name="txtFechamento" style="width:147px; height:28px;" >
       
        <option  value="<%out.print(String.valueOf(cartao.getDia_fechamento()));%>">
             <%out.print(String.valueOf(cartao.getDia_fechamento()));%>
        </option>
       
        <%for(int controle = 1; controle <= 31; controle++){ %>
                   <option value="<%out.print(controle);%>"> 
                       <%out.print(controle);%>
                   </option>
        <%}%>
            
   </select>
   
   </td>
   <td rowspan="2" colspan="5">
   
    <select name="txtPagamento" style="width:147px; height:28px;" >
        
        <option  value="<%out.print(String.valueOf(cartao.getDia_pagamento()));%>">
             <%out.print(String.valueOf(cartao.getDia_pagamento()));%>
        </option>
        
        <%for(int controle = 1; controle <= 31; controle++){ %>
                   <option value="<%out.print(controle);%>"> 
                       <%out.print(controle);%>
                   </option>
        <%}%>
    </select>
   
   </td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="6" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="4" colspan="3"><a href="despesa.jsp" ><img name="novoCartao_r16_c1" src="img/novocartao/novoCartao_r16_c1.png" width="183" height="70" border="0" id="novoCartao_r16_c1" alt="" /></a></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="22" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="4"><img name="novoCartao_r17_c8" src="img/novocartao/novoCartao_r17_c8.png" width="100%" height="18" border="0" id="novoCartao_r17_c8" alt="" /></td>
   <td colspan="5"><img name="novoCartao_r17_c17" src="img/novocartao/novoCartao_r17_c17.png" width="100%" height="18" border="0" id="novoCartao_r17_c17" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="18" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="16"><img name="novoCartao_r18_c7" src="img/novocartao/novoCartao_r18_c7.png" width="403" height="23" border="0" id="novoCartao_r18_c7" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="23" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="8" colspan="2"><img name="novoCartao_r19_c7" src="img/novocartao/novoCartao_r19_c7.png" width="36" height="288" border="0" id="novoCartao_r19_c7" alt="" /></td>
   <td rowspan="5"><img name="novoCartao_r19_c9" src="img/novocartao/novoCartao_r19_c9.png" width="21" height="72" border="0" id="novoCartao_r19_c9" alt="" /></td>
   <td rowspan="2" colspan="10"><img name="novoCartao_r19_c10" src="img/novocartao/novoCartao_r19_c10.png" width="100%" height="25" border="0" id="novoCartao_r19_c10" alt="" /></td>
   <td rowspan="5"><img name="novoCartao_r19_c20" src="img/novocartao/novoCartao_r19_c20.png" width="15" height="72" border="0" id="novoCartao_r19_c20" alt="" /></td>
   <td rowspan="8" colspan="2"><img name="novoCartao_r19_c21" src="img/novocartao/novoCartao_r19_c21.png" width="37" height="288" border="0" id="novoCartao_r19_c21" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="7" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="3"><a href="logout.jsp" ><img name="novoCartao_r20_c1" src="img/novocartao/novoCartao_r20_c1.png" width="183" height="62" border="0" id="novoCartao_r20_c1" alt="" /></a></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="18" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="10">
       
   <script>
        function somenteNumeros(e){    
            var tecla=(window.event)?event.keyCode:e.which;
            if((tecla>45 && tecla<58)) return true;
            else{
                if (tecla==8 || tecla==0) return true;
                else return false;
            } 
        } 

    </script>
   
   <input type="text" name="txtLimite" value="<%out.print(cartao.getLimite());%>" onkeypress = "return somenteNumeros(event);" style="width:290px; height:25px;"  />
   
	</td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="34" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="10"><img name="novoCartao_r22_c10" src="img/novocartao/novoCartao_r22_c10.png" width="100%" height="13" border="0" id="novoCartao_r22_c10" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="10" border="0" alt="" /></td>
  </tr>
  </form>
  <tr>
   <td rowspan="2" colspan="3"><img name="novoCartao_r23_c1" src="img/novocartao/novoCartao_r23_c1.png" width="183" height="39" border="0" id="novoCartao_r23_c1" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="3" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="12"><img name="novoCartao_r24_c9" src="img/novocartao/novoCartao_r24_c9.png" width="330" height="216" border="0" id="novoCartao_r24_c9" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="36" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2"><img name="novoCartao_r25_c1" src="img/novocartao/novoCartao_r25_c1.png" width="44" height="180" border="0" id="novoCartao_r25_c1" alt="" /></td>
   <td><a href="meusDados.jsp" ><img name="novoCartao_r25_c2" src="img/novocartao/novoCartao_r25_c2.png" width="46" height="50" border="0" id="novoCartao_r25_c2" alt="" /></a></td>
   <td rowspan="2"><img name="novoCartao_r25_c3" src="img/novocartao/novoCartao_r25_c3.png" width="93" height="180" border="0" id="novoCartao_r25_c3" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="50" border="0" alt="" /></td>
  </tr>
  <tr>
   <td><img name="novoCartao_r26_c2" src="img/novocartao/novoCartao_r26_c2.png" width="46" height="130" border="0" id="novoCartao_r26_c2" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="130" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="10"><img name="novoCartao_r27_c1" src="img/novocartao/novoCartao_r27_c1.png" width="472" height="27" border="0" id="novoCartao_r27_c1" alt="" /></td>
   <td colspan="19"><img name="novoCartao_r27_c11" src="img/novocartao/novoCartao_r27_c11.png" width="552" height="27" border="0" id="novoCartao_r27_c11" alt="" /></td>
   <td><img src="img/novocartao/spacer.gif" width="1" height="27" border="0" alt="" /></td>
  </tr>
</table>
</body>
</html>
