<%  
//verifica se a sessao do usuario  com o ID é valida 
if (session.getAttribute("idUsuario") == null)  
{  
        response.sendRedirect("index.jsp");  
}  
%> 




<%@page import="java.util.List"%>
<%@page import="br.com.server.model.Conta"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.server.dao.ContaDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0014)about:internet -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>.: Sistema Gerenciador Financeiro :.</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">td img {display: block;}</style>
<!--Fireworks CS5 Dreamweaver CS5 target.  Created Thu Oct 16 11:25:03 GMT-0300 (Hora oficial do Brasil) 2014-->
</head>
<body bgcolor="#f6f6f6">
<table style="display: inline-table;" border="0" cellpadding="0" cellspacing="0" width="100%">
<!-- fwtable fwsrc="contatransferencia.png" fwpage="Page 1" fwbase="contatransferencia.png" fwstyle="Dreamweaver" fwdocid = "147764598" fwnested="0" -->
  <tr>
   <td><img src="img/contatransferencia/spacer.gif" width="44" height="1" border="0" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="46" height="1" border="0" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="93" height="1" border="0" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="164" height="1" border="0" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="46" height="1" border="0" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="67" height="1" border="0" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="40" height="1" border="0" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="47" height="1" border="0" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="9" height="1" border="0" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="128" height="1" border="0" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="26" height="1" border="0" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="38" height="1" border="0" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="35" height="1" border="0" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="30" height="1" border="0" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="50" height="1" border="0" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="161" height="1" border="0" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>

  <tr>
   <td colspan="16"><img name="contatransferencia_r1_c1" src="img/contatransferencia/contatransferencia_r1_c1.png" width="1024" height="110" border="0" id="contatransferencia_r1_c1" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="110" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="3"><a href="conta.jsp"><img name="contatransferencia_r2_c1" src="img/contatransferencia/contatransferencia_r2_c1.png" width="183" height="70" border="0" id="contatransferencia_r2_c1" alt="" /></a></td>
   <td colspan="13" width="100%" bgcolor="#0000FF"><img name="contatransferencia_r2_c4" src="img/contatransferencia/contatransferencia_r2_c4.png" width="841" height="55" border="0" id="contatransferencia_r2_c4" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="55" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="13"><img name="contatransferencia_r3_c4" src="img/contatransferencia/contatransferencia_r3_c4.png" width="841" height="57" border="0" id="contatransferencia_r3_c4" alt="" /></td>
   <td><img src="spacer.gif" width="1" height="15" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="3"><a href="home.jsp"> <img name="contatransferencia_r4_c1" src="img/contatransferencia/contatransferencia_r4_c1.png" width="183" height="70" border="0" id="contatransferencia_r4_c1" alt="" /></a></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="42" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="6"><img name="contatransferencia_r5_c4" src="img/contatransferencia/contatransferencia_r5_c4.png" width="373" height="35" border="0" id="contatransferencia_r5_c4" alt="" /></td>
   <td rowspan="2" colspan="7"><img name="contatransferencia_r5_c10" src="img/contatransferencia/contatransferencia_r5_c10.png" width="468" height="32" border="0" id="contatransferencia_r5_c10" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="28" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="6" colspan="3"><a href="receita.jsp" ><img name="contatransferencia_r6_c1" src="img/contatransferencia/contatransferencia_r6_c1.png" width="183" height="70" border="0" id="contatransferencia_r6_c1" alt="" /></a></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="4" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="4" width="5%"><img name="contatransferencia_r7_c10" src="img/contatransferencia/contatransferencia_r7_c10.png" width="128" height="58" border="0" id="contatransferencia_r7_c10" alt="" /></td>
   <td rowspan="3" colspan="5" width="5%">
   
<form name="transfereConta" method="post" action="concluirTransferencia.jsp">
       
   
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

    <input type="text" name="txtValor" onkeypress = "return somenteNumeros(event);" style="width:173px; height:30px; border-left:hidden; border-top:1px solid #7F9DB9; border-bottom:1px solid #7F9DB9; border-right:1px solid #7F9DB9; text-align:right;"/>

	</td>
   <td rowspan="19"><img name="contatransferencia_r7_c16" src="img/contatransferencia/contatransferencia_r7_c16.png" width="161" height="487" border="0" id="contatransferencia_r7_c16" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="3" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="18" width="5%"><img name="contatransferencia_r8_c4" src="img/contatransferencia/contatransferencia_r8_c4.png" width="164" height="484" border="0" id="contatransferencia_r8_c4" alt="" /></td>
   <td colspan="4" width="5%">
   
   	<select name="contaOrigem" style="width:200px; height:30px;"> 
            <%
                ContaDAO cDAO = new ContaDAO();
                ArrayList<Conta> lista = cDAO.ConsultarTodos(Integer.parseInt(session.getAttribute("idUsuario").toString()));
                
                for(int controle = 0; controle < lista.size(); controle++){ %>
                   <option value="<% out.print(lista.get(controle).getId()); %> "> <% out.print(lista.get(controle).getDescricao()); %> </option>
            <%    }
            %>
              
   
	</td>
   <td rowspan="18"><img name="contatransferencia_r8_c9" src="img/contatransferencia/contatransferencia_r8_c9.png" width="9" height="484" border="0" id="contatransferencia_r8_c9" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="30" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="5" colspan="4"><img name="contatransferencia_r9_c5" src="img/contatransferencia/contatransferencia_r9_c5.png" width="200" height="35" border="0" id="contatransferencia_r9_c5" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="5"><img name="contatransferencia_r10_c11" src="img/contatransferencia/contatransferencia_r10_c11.png" width="179" height="33" border="0" id="contatransferencia_r10_c11" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="24" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="15"><img name="contatransferencia_r11_c10" src="img/contatransferencia/contatransferencia_r11_c10.png" width="128" height="429" border="0" id="contatransferencia_r11_c10" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="8" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="5" colspan="3"><a href="cartao" ><img name="contatransferencia_r12_c1" src="img/contatransferencia/contatransferencia_r12_c1.png" width="183" height="70" border="0" id="contatransferencia_r12_c1" alt="" /></a></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="13"><img name="contatransferencia_r13_c11" src="img/contatransferencia/contatransferencia_r13_c11.png" width="26" height="420" border="0" id="contatransferencia_r13_c11" alt="" /></td>
   <td rowspan="2">
       <input type="image" name="btnSalvar" src="img/contatransferencia/contatransferencia_r13_c12.png" width="38" height="29" onClick="document.formCadastro.submit()" /></td>
   </td>
   <td rowspan="13"><img name="contatransferencia_r13_c13" src="img/contatransferencia/contatransferencia_r13_c13.png" width="35" height="420" border="0" id="contatransferencia_r13_c13" alt="" /></td>
   <td rowspan="3"><a href="conta.jsp" ><img name="contatransferencia_r13_c14" src="img/contatransferencia/contatransferencia_r13_c14.png" width="30" height="30" border="0" id="contatransferencia_r13_c14" alt="" /></a></td>
   <td rowspan="13"><img name="contatransferencia_r13_c15" src="img/contatransferencia/contatransferencia_r13_c15.png" width="50" height="420" border="0" id="contatransferencia_r13_c15" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="6"><img name="contatransferencia_r14_c5" src="img/contatransferencia/contatransferencia_r14_c5.png" width="46" height="176" border="0" id="contatransferencia_r14_c5" alt="" /></td>
   <td rowspan="5" colspan="2"><img name="contatransferencia_r14_c6" src="img/contatransferencia/contatransferencia_r14_c6.png" width="107" height="142" border="0" id="contatransferencia_r14_c6" alt="" /></td>
   <td rowspan="6"><img name="contatransferencia_r14_c8" src="img/contatransferencia/contatransferencia_r14_c8.png" width="47" height="176" border="0" id="contatransferencia_r14_c8" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="28" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="11"><img name="contatransferencia_r15_c12" src="img/contatransferencia/contatransferencia_r15_c12.png" width="38" height="391" border="0" id="contatransferencia_r15_c12" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="10"><img name="contatransferencia_r16_c14" src="img/contatransferencia/contatransferencia_r16_c14.png" width="30" height="390" border="0" id="contatransferencia_r16_c14" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="39" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><a href="despesa.jsp" ><img name="contatransferencia_r17_c1" src="img/contatransferencia/contatransferencia_r17_c1.png" width="183" height="70" border="0" id="contatransferencia_r17_c1" alt="" /></a></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="70" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="3"><a href="logout.jsp" ><img name="contatransferencia_r18_c1" src="img/contatransferencia/contatransferencia_r18_c1.png" width="183" height="62" border="0" id="contatransferencia_r18_c1" alt="" /></a></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="4" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="2"><img name="contatransferencia_r19_c6" src="img/contatransferencia/contatransferencia_r19_c6.png" width="107" height="34" border="0" id="contatransferencia_r19_c6" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="34" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="4"><img name="contatransferencia_r20_c5" src="img/contatransferencia/contatransferencia_r20_c5.png" width="200" height="29" border="0" id="contatransferencia_r20_c5" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="24" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="3"><img name="contatransferencia_r21_c1" src="img/contatransferencia/contatransferencia_r21_c1.png" width="183" height="39" border="0" id="contatransferencia_r21_c1" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="5" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="4">
   
		<select name="contaDestino" style="width:200px; height:30px;"> 
                    
                     <%
                        for(int controle = 0; controle < lista.size(); controle++){ %>
                                <option value="<% out.print(lista.get(controle).getId()); %> "> <% out.print(lista.get(controle).getDescricao()); %> </option>
                    <%    }
                    %>
                
                </select>
   
   </td>
      
</form>
       
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="30" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="4"><img name="contatransferencia_r23_c5" src="img/contatransferencia/contatransferencia_r23_c5.png" width="200" height="184" border="0" id="contatransferencia_r23_c5" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="4" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2"><img name="contatransferencia_r24_c1" src="img/contatransferencia/contatransferencia_r24_c1.png" width="44" height="180" border="0" id="contatransferencia_r24_c1" alt="" /></td>
   <td><a href="meusDados.jsp" ><img name="contatransferencia_r24_c2" src="img/contatransferencia/contatransferencia_r24_c2.png" width="46" height="50" border="0" id="contatransferencia_r24_c2" alt="" /></a></td>
   <td rowspan="2"><img name="contatransferencia_r24_c3" src="img/contatransferencia/contatransferencia_r24_c3.png" width="93" height="180" border="0" id="contatransferencia_r24_c3" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="50" border="0" alt="" /></td>
  </tr>
  <tr>
   <td><img name="contatransferencia_r25_c2" src="img/contatransferencia/contatransferencia_r25_c2.png" width="46" height="130" border="0" id="contatransferencia_r25_c2" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="130" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="6" height="100px" style="vertical-align:bottom;"><img name="contatransferencia_r26_c1" src="img/contatransferencia/contatransferencia_r26_c1.png" width="460" height="27" border="0" id="contatransferencia_r26_c1" alt="" /></td>
   <td colspan="10"><img name="contatransferencia_r26_c7" src="img/contatransferencia/contatransferencia_r26_c7.png" width="564" height="27" border="0" id="contatransferencia_r26_c7" alt="" /></td>
   <td><img src="img/contatransferencia/spacer.gif" width="1" height="27" border="0" alt="" /></td>
  </tr>

</table>
</body>
</html>
