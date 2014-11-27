<%  
//verifica se a sessao do usuario  com o ID é valida 
if (session.getAttribute("idUsuario") == null)  
{  
        response.sendRedirect("index.jsp");  
}  
%> 


<%@page import="br.com.server.model.Despesa"%>
<%@page import="br.com.server.dao.DespesaDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.server.model.Conta"%>
<%@page import="br.com.server.dao.ContaDAO"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0014)about:internet -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>.:: Sistema Gerenciador Financeiro ::.</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">td img {display: block;}</style>
<!--Fireworks CS5 Dreamweaver CS5 target.  Created Mon Nov 10 09:09:59 GMT-0200 2014-->
</head>
<body bgcolor="#f6f6f6">
<table style="display: inline-table;" border="0" cellpadding="0" cellspacing="0" width="100%">
<!-- fwtable fwsrc="img/despesa/despesa.png" fwpage="Page 1" fwbase="despesa.png" fwstyle="Dreamweaver" fwdocid = "1780881046" fwnested="0" -->
  <tr>
   <td><img src="img/despesa/spacer.gif" width="44" height="1" border="0" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="46" height="1" border="0" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="93" height="1" border="0" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="27" height="1" border="0" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="23" height="1" border="0" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="31" height="1" border="0" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="131" height="1" border="0" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="90" height="1" border="0" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="360" height="1" border="0" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="149" height="1" border="0" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="30" height="1" border="0" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>

  <tr>
   <td colspan="11"><img name="despesa_r1_c1" src="img/despesa/despesa_r1_c1.png" width="1024" height="110" border="0" id="despesa_r1_c1" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="1" height="110" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="3"><a href="despesa.jsp" ><img name="despesa_r2_c1" src="img/despesa/despesa_r2_c1.png" width="183" height="70" border="0" id="despesa_r2_c1" alt="" /></a></td>
   <td colspan="8" width="100%" bgcolor="#FF0000"><img name="despesa_r2_c4" src="img/despesa/despesa_r2_c4.png" width="841" height="55" border="0" id="despesa_r2_c4" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="1" height="55" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="15"><img name="despesa_r3_c4" src="img/despesa/despesa_r3_c4.png" width="75" height="579" border="0" id="despesa_r3_c4" alt="" /></td>
   <td rowspan="7"><img name="despesa_r3_c5" src="img/despesa/despesa_r3_c5.png" width="23" height="87" border="0" id="despesa_r3_c5" alt="" /></td>
   <td rowspan="3" colspan="2"><img name="despesa_r3_c6" src="img/despesa/despesa_r3_c6.png" width="162" height="37" border="0" id="despesa_r3_c6" alt="" /></td>
   <td rowspan="2" colspan="3"><img name="despesa_r3_c8" src="img/despesa/despesa_r3_c8.png" width="599" height="33" border="0" id="despesa_r3_c8" alt="" /></td>
   <td rowspan="15"><img name="despesa_r3_c11" src="img/despesa/despesa_r3_c11.png" width="30" height="579" border="0" id="despesa_r3_c11" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="1" height="15" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="5" colspan="3"><a href="home.jsp" ><img name="despesa_r4_c1" src="img/despesa/despesa_r4_c1.png" width="183" height="70" border="0" id="despesa_r4_c1" alt="" /></a></td>
   <td><img src="img/despesa/spacer.gif" width="1" height="18" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="2">
   
   	<div style="width:402px; height:30px; border:1px solid; border-radius:12px; background-color:#FFF">
         <%
                    Integer mes = null;
                    Integer ano = null;
                    if(request.getParameter("m") == null && request.getParameter("a") == null){
                        Date date = new Date();
                        mes = date.getMonth();
                        ano = 1900 + date.getYear();
                    }else{
                        mes = Integer.parseInt(request.getParameter("m"));
                        ano = Integer.parseInt(request.getParameter("a"));
                    }

               %>
               
               <script language="JavaScript">
                   function anterior(mes, ano){
                       mes--;
                       if(mes<1){
                           mes = 12;
                           ano--;
                       }
                       window.location="despesa.jsp?m=" + mes + "&a=" + ano;
                   }
                   function proximo(mes, ano){
                       mes++;
                       if(mes>12){
                           mes = 1;
                           ano++;
                       }
                       window.location="despesa.jsp?m=" + mes + "&a=" + ano;
                   }
                   
                   
                   
               </script>
               
               
                    
               <table style="height:30px;">
            	<tr>
                    <td><a href="#"><img  src="img/conta/conta_r1_c1_s1.png" style="height:26px;" onclick="<% out.print("anterior(" + mes + "," + ano + ");"); %>" /></a></td>
                    <td style="width: 335px; text-align:center;"> 
                    
                        <%
                           out.print(mes + " / " + ano);
                            
                        %>
                    </td>
                        <td><a href="#"><img  src="img/conta/conta_r1_c4_s1.png" style="height:26px;" onclick="<% out.print("proximo(" + mes + "," + ano + ");"); %>" /></a></td>
                </tr>
            </table>
        </div>
   
   </td>
   <td rowspan="5"><img name="despesa_r5_c10" src="img/despesa/despesa_r5_c10.png" width="149" height="54" border="0" id="despesa_r5_c10" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="1" height="4" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2"><a href="novaDespesa.jsp" ><img name="despesa_r6_c6" src="img/despesa/despesa_r6_c6.png" width="31" height="30" border="0" id="despesa_r6_c6" alt="" /></td>
   <td rowspan="4"><img name="despesa_r6_c7" src="img/despesa/despesa_r6_c7.png" width="131" height="50" border="0" id="despesa_r6_c7" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="1" height="29" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="2"><img name="despesa_r7_c8" src="img/despesa/despesa_r7_c8.png" width="450" height="21" border="0" id="despesa_r7_c8" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2"><img name="despesa_r8_c6" src="img/despesa/despesa_r8_c6.png" width="31" height="20" border="0" id="despesa_r8_c6" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="1" height="18" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="3"><a href="conta.jsp" ><img name="despesa_r9_c1" src="img/despesa/despesa_r9_c1.png" width="183" height="70" border="0" id="despesa_r9_c1" alt="" /></a></td>
   <td><img src="img/despesa/spacer.gif" width="1" height="2" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="8" colspan="6" style="vertical-align:top;" >
   
   
   <div style="width:100%; border:1px solid; border-radius:5px; background-color:#FFF">
   
    <table border="0" width="100%">
      
         <%
            DespesaDAO rDAO = new DespesaDAO();
            ArrayList<Despesa> lstDespesa = rDAO.ConsultarTodos(Integer.parseInt(session.getAttribute("idUsuario").toString()), mes, ano);
            double somaDespesa = 0;
            for(int controle = 0; controle < lstDespesa.size(); controle++){
                somaDespesa += lstDespesa.get(controle).getValor();
       %>         
       
           <tr>
               <td><% out.print("<a href='editarDespesa.jsp?idDespesa="+lstDespesa.get(controle).getId()+"'>"+lstDespesa.get(controle).getDescricao()+"</a>"); %>
               </td><td align="center">Parcelas</td><td align="center">R$ <%out.print(lstDespesa.get(controle).getValor()); %></td><td width="10px">
                   <% if(lstDespesa.get(controle).isEfetuada() == false)out.print("<img src='img/conta/conta_r1_c3_s1.png' />");  %></td><td width="30px">
                       <a onclick="excluirDespesa(<% out.print(lstDespesa.get(controle).getId()); %>)"><img src="img/conta/conta_r1_c3_s2.png" /></a></td>
                   <script>
                       function excluirDespesa(idDespesa){
                           if (confirm("Deseja excluir esta despesa?"))
                                window.location = "excluirDespesa.jsp?idDespesa=" + idDespesa;
                           return false;
                       }
                   </script>
           </tr>
           <tr>
               <td><% out.print(lstDespesa.get(controle).getData().toString().substring(8, 10) + "/" + lstDespesa.get(controle).getData().toString().substring(5, 7) + "/" + lstDespesa.get(controle).getData().toString().substring(0, 4)); %></td><td align="center"><% out.print(lstDespesa.get(controle).getNum_parcela() + " / " + lstDespesa.get(controle).getMax_parcela()); %></td><td colspan="2">&nbsp;</td>
           </tr>
           
       <%         
                if(controle < (lstDespesa.size() - 1)){
                    out.print("<tr><td colspan='5'><hr width='100%'></td></tr>");
                }
           }
            
       %>
       </table>
       
   <p></p>
      <p></p>
         <p></p>
   
   </div>  
   <br /><br />
   <div align="right">
   		<div  style="width:30%; height:23px; border:1px solid; border-radius:8px; background-color:#FFF; text-align:left;" >
              <font face="Arial, Helvetica, sans-serif"  >&nbsp;&nbsp;&nbsp;<b>
              			TOTAL 
              			&nbsp;&nbsp;&nbsp;
              			&nbsp;&nbsp;&nbsp;
              			&nbsp;&nbsp;&nbsp;                                                
              			&nbsp;&nbsp;&nbsp;
              			&nbsp;&nbsp;&nbsp;
              			&nbsp;&nbsp;&nbsp;
              			&nbsp;&nbsp;&nbsp;
              			&nbsp;&nbsp;&nbsp;
              			&nbsp;&nbsp;&nbsp;                                                
                        <%
                                if(somaDespesa > 0)
                                    out.print("R$ " +somaDespesa);
                                else
                                    out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R$ -");
       
                            %>
              
              </b></font>
   		</div>
   </div>  
   
   
   
   </td>
   <td><img src="img/despesa/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>
  <tr>
   <td><img src="img/despesa/spacer.gif" width="1" height="67" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><a href="receita.jsp" ><img name="despesa_r12_c1" src="img/despesa/despesa_r12_c1.png" width="183" height="70" border="0" id="despesa_r12_c1" alt="" /></a></td>
   <td><img src="img/despesa/spacer.gif" width="1" height="70" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><a href="cartao.jsp" ><img name="despesa_r13_c1" src="img/despesa/despesa_r13_c1.png" width="183" height="70" border="0" id="despesa_r13_c1" alt="" /></a></td>
   <td><img src="img/despesa/spacer.gif" width="1" height="70" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><a href="logout.jsp" ><img name="despesa_r14_c1" src="img/despesa/despesa_r14_c1.png" width="183" height="62" border="0" id="despesa_r14_c1" alt="" /></a></td>
   <td><img src="img/despesa/spacer.gif" width="1" height="62" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><img name="despesa_r15_c1" src="img/despesa/despesa_r15_c1.png" width="183" height="39" border="0" id="despesa_r15_c1" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="1" height="39" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2"><img name="despesa_r16_c1" src="img/despesa/despesa_r16_c1.png" width="44" height="183" border="0" id="despesa_r16_c1" alt="" /></td>
   <td><a href="meusDados.jsp" ><img name="despesa_r16_c2" src="img/despesa/despesa_r16_c2.png" width="46" height="50" border="0" id="despesa_r16_c2" alt="" /></a></td>
   <td rowspan="2"><img name="despesa_r16_c3" src="img/despesa/despesa_r16_c3.png" width="93" height="183" border="0" id="despesa_r16_c3" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="1" height="50" border="0" alt="" /></td>
  </tr>
  <tr>
   <td><img name="despesa_r17_c2" src="img/despesa/despesa_r17_c2.png" width="46" height="133" border="0" id="despesa_r17_c2" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="1" height="133" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="8"><img name="despesa_r18_c1" src="img/despesa/despesa_r18_c1.png" width="485" height="24" border="0" id="despesa_r18_c1" alt="" /></td>
   <td colspan="3"><img name="despesa_r18_c9" src="img/despesa/despesa_r18_c9.png" width="539" height="24" border="0" id="despesa_r18_c9" alt="" /></td>
   <td><img src="img/despesa/spacer.gif" width="1" height="24" border="0" alt="" /></td>
  </tr>
</table>
</body>
</html>
